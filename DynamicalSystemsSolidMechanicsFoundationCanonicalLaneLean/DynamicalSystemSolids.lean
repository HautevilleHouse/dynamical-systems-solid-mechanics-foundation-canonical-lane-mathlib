import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure DynamicalSystemSolids where
  phaseSpace : Type u
  stateManifold : TopologicalSpace phaseSpace
  governingEquations : Set (phaseSpace → ℝ)
  initialCondition : phaseSpace
  deformationGradient : Type v
  stressTensor : Type w

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
