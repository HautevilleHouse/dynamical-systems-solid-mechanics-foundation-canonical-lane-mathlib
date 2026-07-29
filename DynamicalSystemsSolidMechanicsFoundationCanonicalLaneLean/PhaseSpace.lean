import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure PhaseSpacePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  coordinates : Type v
  coordinateCharts : Prop
  tangentBundle : Type w
  cotangentBundle : Type x

structure PhaseSpaceEvidence (P : PhaseSpacePackage) where
  smoothStructureClosed : P.smoothStructure
  coordinateChartsClosed : P.coordinateCharts

def PhaseSpaceClosed (P : PhaseSpacePackage) : Prop :=
  P.smoothStructure ∧ P.coordinateCharts

theorem phase_space_closed_from_evidence (P : PhaseSpacePackage) (E : PhaseSpaceEvidence P) :
    PhaseSpaceClosed P := by
  exact And.intro E.smoothStructureClosed E.coordinateChartsClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse