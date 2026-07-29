import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure NonlinearDynamicsSolver where
  timeSteppingScheme : Type u
  tolerance : ℝ
  maxIterations : ℕ
  convergenceCondition : Prop
  stabilityCondition : Prop

structure SolverEvidence (S : NonlinearDynamicsSolver) where
  convergenceConditionClosed : S.convergenceCondition
  stabilityConditionClosed : S.stabilityCondition

def SolverClosed (S : NonlinearDynamicsSolver) : Prop :=
  S.convergenceCondition ∧ S.stabilityCondition

theorem solver_closed_from_evidence (S : NonlinearDynamicsSolver)
    (E : SolverEvidence S) : SolverClosed S := by
  exact And.intro E.convergenceConditionClosed E.stabilityConditionClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
