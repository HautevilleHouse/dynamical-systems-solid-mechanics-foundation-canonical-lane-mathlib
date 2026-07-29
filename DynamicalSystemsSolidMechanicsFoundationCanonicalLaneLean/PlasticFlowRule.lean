import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure PlasticFlowRulePackage where
  yieldSurface : Type u
  flowRule : Type v
  hardeningLaw : Type w
  consistencyCondition : Prop
  plasticWorkRate : Prop
  consistencyConditionTerm : consistencyCondition
  plasticWorkRateTerm : plasticWorkRate

structure PlasticFlowRuleEvidence (P : PlasticFlowRulePackage) where
  consistencyConditionClosed : P.consistencyCondition
  plasticWorkRateClosed : P.plasticWorkRate

def PlasticFlowRuleClosed (P : PlasticFlowRulePackage) : Prop :=
  P.consistencyCondition ∧ P.plasticWorkRate

theorem plastic_flow_rule_closed_from_evidence (P : PlasticFlowRulePackage)
    (Ev : PlasticFlowRuleEvidence P) : PlasticFlowRuleClosed P := by
  exact And.intro Ev.consistencyConditionClosed Ev.plasticWorkRateClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse