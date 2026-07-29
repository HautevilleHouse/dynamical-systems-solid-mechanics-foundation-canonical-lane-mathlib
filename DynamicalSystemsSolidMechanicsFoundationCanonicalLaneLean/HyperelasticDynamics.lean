import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure HyperelasticDynamics where
  referenceConfiguration : Type u
  massDensity : ℝ
  strainEnergy : StrainEnergyFunctional
  balanceLaw : Prop
  momentumEquation : Prop
  constitutiveLawAdmissible : Prop
  balanceLawTerm : balanceLaw
  momentumEquationTerm : momentumEquation
  constitutiveLawAdmissibleTerm : constitutiveLawAdmissible

def HyperelasticDynamicsClosed (H : HyperelasticDynamics) : Prop :=
  H.balanceLaw ∧ H.momentumEquation ∧ H.constitutiveLawAdmissible

theorem hyperelastic_dynamics_closed_from_evidence (H : HyperelasticDynamics) : HyperelasticDynamicsClosed H := by
  exact And.intro H.balanceLawTerm (And.intro H.momentumEquationTerm H.constitutiveLawAdmissibleTerm)

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse