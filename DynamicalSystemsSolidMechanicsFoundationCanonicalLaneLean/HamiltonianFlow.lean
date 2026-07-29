import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.PhaseSpace

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure HamiltonianFlowPackage {P : PhaseSpacePackage} where
  hamiltonian : Type v
  symplecticForm : Type w
  hamiltonianVectorField : Type x
  flowMap : Type y
  hamiltonianSmooth : Prop
  symplecticNondegenerate : Prop
  vectorFieldGenerated : Prop
  flowPreservesSymplectic : Prop

structure HamiltonianFlowEvidence {P : PhaseSpacePackage} (H : HamiltonianFlowPackage P) where
  hamiltonianSmoothClosed : H.hamiltonianSmooth
  symplecticNondegenerateClosed : H.symplecticNondegenerate
  vectorFieldGeneratedClosed : H.vectorFieldGenerated
  flowPreservesSymplecticClosed : H.flowPreservesSymplectic

def HamiltonianFlowClosed {P : PhaseSpacePackage} (H : HamiltonianFlowPackage P) : Prop :=
  H.hamiltonianSmooth ∧ H.symplecticNondegenerate ∧ H.vectorFieldGenerated ∧ H.flowPreservesSymplectic

theorem hamiltonian_flow_closed_from_evidence {P : PhaseSpacePackage} (H : HamiltonianFlowPackage P) (E : HamiltonianFlowEvidence H) :
    HamiltonianFlowClosed H := by
  exact And.intro E.hamiltonianSmoothClosed (And.intro E.symplecticNondegenerateClosed (And.intro E.vectorFieldGeneratedClosed E.flowPreservesSymplecticClosed))

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse