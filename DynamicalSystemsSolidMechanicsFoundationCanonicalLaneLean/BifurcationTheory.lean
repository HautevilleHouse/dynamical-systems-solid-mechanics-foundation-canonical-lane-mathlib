import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.StabilityAnalysis

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure BifurcationPackage {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} {S : StabilityPackage P H} where
  parameterSpace : Type u
  bifurcationPoint : P.manifold × parameterSpace
  normalForm : Type v
  bifurcationType : Prop
  parameterDependence : Prop
  normalFormDerived : Prop
  bifurcationDetected : Prop

structure BifurcationEvidence {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} {S : StabilityPackage P H} (B : BifurcationPackage P H S) where
  parameterDependenceClosed : B.parameterDependence
  normalFormDerivedClosed : B.normalFormDerived
  bifurcationDetectedClosed : B.bifurcationDetected

def BifurcationClosed {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} {S : StabilityPackage P H} (B : BifurcationPackage P H S) : Prop :=
  B.parameterDependence ∧ B.normalFormDerived ∧ B.bifurcationDetected

theorem bifurcation_closed_from_evidence {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} {S : StabilityPackage P H} (B : BifurcationPackage P H S) (E : BifurcationEvidence B) :
    BifurcationClosed B := by
  exact And.intro E.parameterDependenceClosed (And.intro E.normalFormDerivedClosed E.bifurcationDetectedClosed)

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse