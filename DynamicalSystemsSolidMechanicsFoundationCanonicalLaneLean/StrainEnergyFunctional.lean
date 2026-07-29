import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure StrainEnergyFunctional where
  storedEnergyDensity : Type u
  strainTensor : Type v
  frameIndifference : Prop
  polyconvexity : Prop
  coercivity : Prop
  growthCondition : Prop
  frameIndifferenceTerm : frameIndifference
  polyconvexityTerm : polyconvexity
  coercivityTerm : coercivity
  growthConditionTerm : growthCondition

def StrainEnergyFunctionalClosed (W : StrainEnergyFunctional) : Prop :=
  W.frameIndifference ∧ W.polyconvexity ∧ W.coercivity ∧ W.growthCondition

theorem strain_energy_functional_closed_from_evidence (W : StrainEnergyFunctional) : StrainEnergyFunctionalClosed W := by
  exact And.intro W.frameIndifferenceTerm (And.intro W.polyconvexityTerm (And.intro W.coercivityTerm W.growthConditionTerm))

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse