import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure HyperelasticStabilityPackage where
  storedEnergyFunctional : Type u
  polyconvexity : Prop
  coercivity : Prop
  weakLowerSemicontinuity : Prop
  minimizerExists : Prop
  polyconvexityTerm : polyconvexity
  coercivityTerm : coercivity
  weakLowerSemicontinuityTerm : weakLowerSemicontinuity
  minimizerExistsTerm : minimizerExists

structure HyperelasticStabilityEvidence (H : HyperelasticStabilityPackage) where
  polyconvexityClosed : H.polyconvexity
  coercivityClosed : H.coercivity
  weakLowerSemicontinuityClosed : H.weakLowerSemicontinuity
  minimizerExistsClosed : H.minimizerExists

def HyperelasticStabilityClosed (H : HyperelasticStabilityPackage) : Prop :=
  H.polyconvexity ∧ H.coercivity ∧ H.weakLowerSemicontinuity ∧ H.minimizerExists

theorem hyperelastic_stability_closed_from_evidence (H : HyperelasticStabilityPackage)
    (Ev : HyperelasticStabilityEvidence H) : HyperelasticStabilityClosed H := by
  exact And.intro Ev.polyconvexityClosed (And.intro Ev.coercivityClosed
    (And.intro Ev.weakLowerSemicontinuityClosed Ev.minimizerExistsClosed))

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse