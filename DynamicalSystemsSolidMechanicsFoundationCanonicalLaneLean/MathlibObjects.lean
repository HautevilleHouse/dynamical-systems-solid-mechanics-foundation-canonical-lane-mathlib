import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure SolidMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SolidMechanicsAdmittedObject where
  space : SolidMechanicsSpace
  elasticSolid : Prop
  dynamicsWellDefined : Prop
  solidModel : Type
  solidTopology : TopologicalSpace solidModel
  homomorphToSolid : Prop
  conclusion : homomorphToSolid

structure SolidMechanicsEndgameState where
  object : SolidMechanicsAdmittedObject

def SolidMechanicsWitnessClosed (O : SolidMechanicsAdmittedObject) : Prop :=
  O.homomorphToSolid

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse