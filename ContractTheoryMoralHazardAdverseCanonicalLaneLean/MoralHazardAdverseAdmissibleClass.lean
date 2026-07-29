import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure PrincipalAgentContract where
  effort : Type
  output : Type
  compensation : output → Real
  utilityPrincipal : Real → Real
  utilityAgent : Real → Real → Real

structure AdmissibleContract (A : PrincipalAgentContract) where
  incentiveCompatibility : Prop
  participationConstraint : Prop
  monotoneLikelihoodRatio : Prop
  convexityOfDistribution : Prop

def AdmissibleContractClosed (A : PrincipalAgentContract) (C : AdmissibleContract A) : Prop :=
  C.incentiveCompatibility ∧ C.participationConstraint ∧ C.monotoneLikelihoodRatio ∧ C.convexityOfDistribution

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse