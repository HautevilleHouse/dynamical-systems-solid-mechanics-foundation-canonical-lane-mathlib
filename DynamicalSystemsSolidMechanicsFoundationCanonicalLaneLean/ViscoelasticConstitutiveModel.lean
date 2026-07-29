import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure ViscoelasticConstitutiveModel where
  elasticityTensor : Type u
  viscosityTensor : Type v
  internalVariables : Type w
  dissipationInequality : Prop
  thermodynamicConsistency : Prop
  dissipationInequalityTerm : dissipationInequality
  thermodynamicConsistencyTerm : thermodynamicConsistency

def ViscoelasticConstitutiveModelClosed (V : ViscoelasticConstitutiveModel) : Prop :=
  V.dissipationInequality ∧ V.thermodynamicConsistency

theorem viscoelastic_constitutive_model_closed_from_evidence (V : ViscoelasticConstitutiveModel) : ViscoelasticConstitutiveModelClosed V := by
  exact And.intro V.dissipationInequalityTerm V.thermodynamicConsistencyTerm

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse