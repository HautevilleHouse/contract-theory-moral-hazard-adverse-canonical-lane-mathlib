import canonicals.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure AdmissibleClass where
  contract : AdmittedContract
  incentiveCompatibility : Prop
  participationConstraintSatisfied : Prop
  gateWitness : incentiveCompatibility ∨ participationConstraintSatisfied

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContractWitnessClosed A.contract ∧ (A.incentiveCompatibility ∨ A.participationConstraintSatisfied)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse