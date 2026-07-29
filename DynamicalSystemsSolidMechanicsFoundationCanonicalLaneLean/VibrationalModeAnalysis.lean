import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure VibrationalModeAnalysisPackage where
  linearizedOperator : Type u
  eigenvalueProblem : Prop
  eigenfunctionBasis : Prop
  spectralDecomposition : Prop
  eigenvalueProblemTerm : eigenvalueProblem
  eigenfunctionBasisTerm : eigenfunctionBasis
  spectralDecompositionTerm : spectralDecomposition

structure VibrationalModeAnalysisEvidence (V : VibrationalModeAnalysisPackage) where
  eigenvalueProblemClosed : V.eigenvalueProblem
  eigenfunctionBasisClosed : V.eigenfunctionBasis
  spectralDecompositionClosed : V.spectralDecomposition

def VibrationalModeAnalysisClosed (V : VibrationalModeAnalysisPackage) : Prop :=
  V.eigenvalueProblem ∧ V.eigenfunctionBasis ∧ V.spectralDecomposition

theorem vibrational_mode_analysis_closed_from_evidence (V : VibrationalModeAnalysisPackage)
    (Ev : VibrationalModeAnalysisEvidence V) : VibrationalModeAnalysisClosed V := by
  exact And.intro Ev.eigenvalueProblemClosed (And.intro Ev.eigenfunctionBasisClosed Ev.spectralDecompositionClosed)

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse