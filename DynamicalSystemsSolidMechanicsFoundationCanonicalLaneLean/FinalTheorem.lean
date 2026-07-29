import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.SolidMechanicsPhaseSpace
import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.ConstitutiveModelBridge

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

def ConstrainedDynamicalSystemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamical_systems_endgame (A : AdmissibleClass) :
    ConstrainedDynamicalSystemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse