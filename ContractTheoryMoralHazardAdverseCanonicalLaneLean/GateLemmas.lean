import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.incentiveCompatibility ∨ A.participationConstraintSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse