import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

def ConstrainedMoralHazardClosure (A : PrincipalAgentContract) (C : AdmissibleContract A) : Prop :=
  bridgeClosed A C ∧ gateClosed A C

theorem constrained_moral_hazard_endgame (A : PrincipalAgentContract) (C : AdmissibleContract A) :
    ConstrainedMoralHazardClosure A C := by
  exact And.intro (bridge_from_admissible_class A C) (gate_from_admissible_class A C)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse