import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

structure ConstitutiveModel where
  stressStrainRelation : Type u
  yieldCriterion : Type v
  hardeningLaw : Type w

structure ConstitutiveModelPackage (C : ConstitutiveModel) where
  stressStrainClosure : Prop
  yieldCriterionClosure : Prop
  hardeningLawClosure : Prop
  thermodynamicConsistency : Prop

structure ConstitutiveModelEvidence {C : ConstitutiveModel} (Cp : ConstitutiveModelPackage C) where
  stressStrainClosureClosed : Cp.stressStrainClosure
  yieldCriterionClosureClosed : Cp.yieldCriterionClosure
  hardeningLawClosureClosed : Cp.hardeningLawClosure
  thermodynamicConsistencyClosed : Cp.thermodynamicConsistency

def ConstitutiveModelClosed {C : ConstitutiveModel} (Cp : ConstitutiveModelPackage C) : Prop :=
  Cp.stressStrainClosure ∧ Cp.yieldCriterionClosure ∧ Cp.hardeningLawClosure ∧ Cp.thermodynamicConsistency

theorem constitutive_model_closed_from_evidence
    {C : ConstitutiveModel} (Cp : ConstitutiveModelPackage C)
    (E : ConstitutiveModelEvidence Cp) : ConstitutiveModelClosed Cp := by
  exact And.intro E.stressStrainClosureClosed
    (And.intro E.yieldCriterionClosureClosed
      (And.intro E.hardeningLawClosureClosed E.thermodynamicConsistencyClosed))

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse