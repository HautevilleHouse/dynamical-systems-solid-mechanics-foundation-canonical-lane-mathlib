import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.PhaseSpace

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure LagrangianPackage {P : PhaseSpacePackage} where
  lagrangian : Type v
  configurationSpace : Type w
  eulerLagrangeEq : Prop
  actionFunctional : Type x
  lagrangianSmooth : Prop
  actionWellDefined : Prop
  eulerLagrangeDerived : Prop

structure LagrangianEvidence {P : PhaseSpacePackage} (L : LagrangianPackage P) where
  lagrangianSmoothClosed : L.lagrangianSmooth
  actionWellDefinedClosed : L.actionWellDefined
  eulerLagrangeDerivedClosed : L.eulerLagrangeDerived

def LagrangianClosed {P : PhaseSpacePackage} (L : LagrangianPackage P) : Prop :=
  L.lagrangianSmooth ∧ L.actionWellDefined ∧ L.eulerLagrangeDerived

theorem lagrangian_closed_from_evidence {P : PhaseSpacePackage} (L : LagrangianPackage P) (E : LagrangianEvidence L) :
    LagrangianClosed L := by
  exact And.intro E.lagrangianSmoothClosed (And.intro E.actionWellDefinedClosed E.eulerLagrangeDerivedClosed)

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse