import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure FiniteElementDiscretization where
  meshConnectivity : Type u
  shapeFunctions : Type v
  stiffnessMatrix : Type w
  massMatrix : Type x
  consistency : Prop
  stability : Prop

structure FEMEvidence (F : FiniteElementDiscretization) where
  consistencyClosed : F.consistency
  stabilityClosed : F.stability

def FEMClosed (F : FiniteElementDiscretization) : Prop :=
  F.consistency ∧ F.stability

theorem fem_closed_from_evidence (F : FiniteElementDiscretization)
    (E : FEMEvidence F) : FEMClosed F := by
  exact And.intro E.consistencyClosed E.stabilityClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
