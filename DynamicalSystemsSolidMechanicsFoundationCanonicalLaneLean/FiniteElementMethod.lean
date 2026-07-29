import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure FiniteElementMethodPackage where
  meshGeneration : Prop
  elementShapeFunctions : Prop
  assemblyProcedure : Prop
  solverConvergence : Prop
  errorEstimation : Prop

structure FiniteElementMethodEvidence (F : FiniteElementMethodPackage) where
  meshGenerationClosed : F.meshGeneration
  elementShapeFunctionsClosed : F.elementShapeFunctions
  assemblyProcedureClosed : F.assemblyProcedure
  solverConvergenceClosed : F.solverConvergence
  errorEstimationClosed : F.errorEstimation

def FiniteElementMethodClosed (F : FiniteElementMethodPackage) : Prop :=
  F.meshGeneration ∧ F.elementShapeFunctions ∧ F.assemblyProcedure ∧ F.solverConvergence ∧ F.errorEstimation

theorem finite_element_method_closed_from_evidence (F : FiniteElementMethodPackage) (E : FiniteElementMethodEvidence F) : 
    FiniteElementMethodClosed F := by
  exact And.intro E.meshGenerationClosed (And.intro E.elementShapeFunctionsClosed (And.intro E.assemblyProcedureClosed (And.intro E.solverConvergenceClosed E.errorEstimationClosed)))

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse