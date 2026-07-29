import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure PlasticityFlowRule where
  yieldFunction : ℝ → ℝ → ℝ
  plasticPotential : ℝ → ℝ → ℝ
  consistencyCondition : Prop
  hardeningLaw : Prop

structure PlasticityEvidence (P : PlasticityFlowRule) where
  consistencyConditionClosed : P.consistencyCondition
  hardeningLawClosed : P.hardeningLaw

def PlasticityClosed (P : PlasticityFlowRule) : Prop :=
  P.consistencyCondition ∧ P.hardeningLaw

theorem plasticity_closed_from_evidence (P : PlasticityFlowRule)
    (E : PlasticityEvidence P) : PlasticityClosed P := by
  exact And.intro E.consistencyConditionClosed E.hardeningLawClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
