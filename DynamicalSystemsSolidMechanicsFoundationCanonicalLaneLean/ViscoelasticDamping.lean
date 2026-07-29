import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure ViscoelasticDampingPackage where
  constitutiveEquation : Type u
  relaxationFunction : Type v
  creepFunction : Type w
  internalVariableEvolution : Prop
  dissipationInequality : Prop
  internalVariableEvolutionTerm : internalVariableEvolution
  dissipationInequalityTerm : dissipationInequality

structure ViscoelasticDampingEvidence (V : ViscoelasticDampingPackage) where
  internalVariableEvolutionClosed : V.internalVariableEvolution
  dissipationInequalityClosed : V.dissipationInequality

def ViscoelasticDampingClosed (V : ViscoelasticDampingPackage) : Prop :=
  V.internalVariableEvolution ∧ V.dissipationInequality

theorem viscoelastic_damping_closed_from_evidence (V : ViscoelasticDampingPackage)
    (Ev : ViscoelasticDampingEvidence V) : ViscoelasticDampingClosed V := by
  exact And.intro Ev.internalVariableEvolutionClosed Ev.dissipationInequalityClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse