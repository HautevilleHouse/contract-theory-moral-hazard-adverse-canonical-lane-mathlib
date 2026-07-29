import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure ScreeningEquilibriumPackage where
  agentTypes : Type
  contractMenu : Type
  agentChoice : Type
  incentiveCompatibilityGivenType : Prop
  principalOptimalGivenMenu : Prop

structure ScreeningEquilibriumEvidence (S : ScreeningEquilibriumPackage) where
  incentiveCompatibilityGivenTypeClosed : S.incentiveCompatibilityGivenType
  principalOptimalGivenMenuClosed : S.principalOptimalGivenMenu

def ScreeningEquilibriumClosed (S : ScreeningEquilibriumPackage) : Prop :=
  S.incentiveCompatibilityGivenType ∧ S.principalOptimalGivenMenu

theorem screening_equilibrium_closed_from_evidence (S : ScreeningEquilibriumPackage) (E : ScreeningEquilibriumEvidence S) :
    ScreeningEquilibriumClosed S := by
  exact And.intro E.incentiveCompatibilityGivenTypeClosed E.principalOptimalGivenMenuClosed

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse