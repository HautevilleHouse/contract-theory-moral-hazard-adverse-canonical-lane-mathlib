import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

def ConstrainedContractClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_contract_endgame (A : AdmissibleClass) :
    ConstrainedContractClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse