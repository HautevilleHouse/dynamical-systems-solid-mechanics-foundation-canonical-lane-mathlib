import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure DynamicFractureCriterionPackage where
  stressIntensityFactor : Type u
  crackPropagationLaw : Type v
  energyReleaseRate : Type w
  fractureToughness : Prop
  dynamicCrackGrowth : Prop
  fractureToughnessTerm : fractureToughness
  dynamicCrackGrowthTerm : dynamicCrackGrowth

structure DynamicFractureCriterionEvidence (D : DynamicFractureCriterionPackage) where
  fractureToughnessClosed : D.fractureToughness
  dynamicCrackGrowthClosed : D.dynamicCrackGrowth

def DynamicFractureCriterionClosed (D : DynamicFractureCriterionPackage) : Prop :=
  D.fractureToughness ∧ D.dynamicCrackGrowth

theorem dynamic_fracture_criterion_closed_from_evidence (D : DynamicFractureCriterionPackage)
    (Ev : DynamicFractureCriterionEvidence D) : DynamicFractureCriterionClosed D := by
  exact And.intro Ev.fractureToughnessClosed Ev.dynamicCrackGrowthClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse