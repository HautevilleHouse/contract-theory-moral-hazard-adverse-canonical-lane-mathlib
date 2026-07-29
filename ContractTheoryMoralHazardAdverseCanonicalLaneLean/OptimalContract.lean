import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure OptimalContractPackage where
  principalObjective : Type
  contractSpace : Type
  agentAction : contractSpace -> Type
  outputDistribution : contractSpace -> agentAction -> Prop
  optimalContractExists : Prop
  firstBestContract : Prop
  secondBestContract : Prop

structure OptimalContractEvidence (O : OptimalContractPackage) where
  optimalContractExistsClosed : O.optimalContractExists
  firstBestContractClosed : O.firstBestContract
  secondBestContractClosed : O.secondBestContract

def OptimalContractClosed (O : OptimalContractPackage) : Prop :=
  O.optimalContractExists ∧ O.firstBestContract ∧ O.secondBestContract

theorem optimal_contract_closed_from_evidence
    (O : OptimalContractPackage) (E : OptimalContractEvidence O) :
    OptimalContractClosed O := by
  exact And.intro E.optimalContractExistsClosed
    (And.intro E.firstBestContractClosed E.secondBestContractClosed)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse
