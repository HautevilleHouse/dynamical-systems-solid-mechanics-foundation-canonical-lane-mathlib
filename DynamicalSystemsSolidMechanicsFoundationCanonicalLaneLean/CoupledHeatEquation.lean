import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure CoupledHeatEquation where
  thermalConductivity : ℝ → ℝ
  heatSourceTerm : ℝ → ℝ
  temperatureField : Type u
  temperatureSpace : TopologicalSpace temperatureField
  heatEquationHolds : Prop

structure HeatEquationEvidence (H : CoupledHeatEquation) where
  heatEquationHoldsClosed : H.heatEquationHolds

def HeatEquationClosed (H : CoupledHeatEquation) : Prop :=
  H.heatEquationHolds

theorem heat_equation_closed_from_evidence (H : CoupledHeatEquation)
    (E : HeatEquationEvidence H) : HeatEquationClosed H := by
  exact E.heatEquationHoldsClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
