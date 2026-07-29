import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.HamiltonianFlow

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure StabilityPackage {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} where
  equilibriumPoint : P.manifold
  linearization : Type v
  lyapunovFunction : Type w
  equilibriumStable : Prop
  linearizationComputed : Prop
  lyapunovDecay : Prop
  asymptoticStability : Prop

structure StabilityEvidence {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} (S : StabilityPackage P H) where
  equilibriumStableClosed : S.equilibriumStable
  linearizationComputedClosed : S.linearizationComputed
  lyapunovDecayClosed : S.lyapunovDecay
  asymptoticStabilityClosed : S.asymptoticStability

def StabilityClosed {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} (S : StabilityPackage P H) : Prop :=
  S.equilibriumStable ∧ S.linearizationComputed ∧ S.lyapunovDecay ∧ S.asymptoticStability

theorem stability_closed_from_evidence {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} (S : StabilityPackage P H) (E : StabilityEvidence S) :
    StabilityClosed S := by
  exact And.intro E.equilibriumStableClosed (And.intro E.linearizationComputedClosed (And.intro E.lyapunovDecayClosed E.asymptoticStabilityClosed))

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse