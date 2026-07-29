import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContractWitnessClosed A.contract

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.contract.conclusion

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse