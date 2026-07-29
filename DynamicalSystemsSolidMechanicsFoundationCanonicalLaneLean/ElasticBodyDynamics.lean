import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure ElasticBodyDynamicsPackage where
  deformationGradient : Type u
  stressTensor : Type v
  strainTensor : Type w
  constitutiveLaw : Prop
  momentumBalance : Prop
  constitutiveLawTerm : constitutiveLaw
  momentumBalanceTerm : momentumBalance

structure ElasticBodyDynamicsEvidence (E : ElasticBodyDynamicsPackage) where
  constitutiveLawClosed : E.constitutiveLaw
  momentumBalanceClosed : E.momentumBalance

def ElasticBodyDynamicsClosed (E : ElasticBodyDynamicsPackage) : Prop :=
  E.constitutiveLaw ∧ E.momentumBalance

theorem elastic_body_dynamics_closed_from_evidence (E : ElasticBodyDynamicsPackage) 
    (Ev : ElasticBodyDynamicsEvidence E) : ElasticBodyDynamicsClosed E := by
  exact And.intro Ev.constitutiveLawClosed Ev.momentumBalanceClosed

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse