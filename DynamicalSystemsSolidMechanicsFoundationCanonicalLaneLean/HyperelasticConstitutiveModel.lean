import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure HyperelasticConstitutiveModel where
  strainEnergyDensity : ℝ → ℝ
  stressStrainRelation : ℝ → ℝ → ℝ
  polyconvexity : Prop
  growthCondition : Prop

structure HyperelasticEvidence (H : HyperelasticConstitutiveModel) where
  polyconvexityClosed : H.polyconvexity
  growthConditionClosed : H.growthCondition

def HyperelasticClosed (H : HyperelasticConstitutiveModel) : Prop :=
  H.polyconvexity ∧ H.growthCondition

theorem hyperelastic_closed_from_evidence (H : HyperelasticConstitutiveModel)
    (E : HyperelasticEvidence H) : HyperelasticClosed H := by
  exact And.intro E.polyconvexityClosed E.growthConditionClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
