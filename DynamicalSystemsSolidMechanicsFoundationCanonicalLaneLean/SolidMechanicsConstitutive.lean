import HautevilleHouse.DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean.PhaseSpace

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure ConstitutivePackage {P : PhaseSpacePackage} where
  stressTensor : Type v
  strainTensor : Type w
  constitutiveLaw : Prop
  elasticModuli : Type x
  materialSymmetry : Prop
  lawValid : Prop
  moduliDefined : Prop

structure ConstitutiveEvidence {P : PhaseSpacePackage} (C : ConstitutivePackage P) where
  lawValidClosed : C.lawValid
  moduliDefinedClosed : C.moduliDefined
  materialSymmetryClosed : C.materialSymmetry

def ConstitutiveClosed {P : PhaseSpacePackage} (C : ConstitutivePackage P) : Prop :=
  C.lawValid ∧ C.moduliDefined ∧ C.materialSymmetry

theorem constitutive_closed_from_evidence {P : PhaseSpacePackage} (C : ConstitutivePackage P) (E : ConstitutiveEvidence C) :
    ConstitutiveClosed C := by
  exact And.intro E.lawValidClosed (And.intro E.moduliDefinedClosed E.materialSymmetryClosed)

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse