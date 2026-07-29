import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure PrincipalAgentIncentivePackage where
  agentEffortChoice : Type
  actionSpace : Type
  outputDistribution : agentEffortChoice -> actionSpace -> Prop
  compensationScheme : actionSpace -> Type
  effortDisutility : agentEffortChoice -> Prop
  participationConstraint : Prop
  incentiveCompatibility : Prop

structure PrincipalAgentIncentiveEvidence (P : PrincipalAgentIncentivePackage) where
  participationConstraintClosed : P.participationConstraint
  incentiveCompatibilityClosed : P.incentiveCompatibility

def PrincipalAgentIncentiveClosed (P : PrincipalAgentIncentivePackage) : Prop :=
  P.participationConstraint ∧ P.incentiveCompatibility

theorem principal_agent_incentive_closed_from_evidence
    (P : PrincipalAgentIncentivePackage) (E : PrincipalAgentIncentiveEvidence P) :
    PrincipalAgentIncentiveClosed P := by
  exact And.intro E.participationConstraintClosed E.incentiveCompatibilityClosed

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse
