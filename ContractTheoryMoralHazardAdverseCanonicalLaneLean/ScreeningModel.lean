import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure ScreeningModelPackage where
  agentTypes : Type
  contractMenu : Type
  agentTypeDistribution : agentTypes -> Prop
  incentiveCompatibleContract : contractMenu -> agentTypes -> Prop
  participationConstraint : contractMenu -> agentTypes -> Prop
  screeningEquilibrium : Prop

structure ScreeningModelEvidence (S : ScreeningModelPackage) where
  screeningEquilibriumClosed : S.screeningEquilibrium

def ScreeningModelClosed (S : ScreeningModelPackage) : Prop :=
  S.screeningEquilibrium

theorem screening_model_closed_from_evidence
    (S : ScreeningModelPackage) (E : ScreeningModelEvidence S) :
    ScreeningModelClosed S := by
  exact E.screeningEquilibriumClosed

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse
