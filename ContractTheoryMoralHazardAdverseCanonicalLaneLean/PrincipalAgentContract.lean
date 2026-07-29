import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure PrincipalAgentContract where
  agentEffort : Type u
  outputDistribution : agentEffort → Type v
  compensationScheme : agentEffort → Type w
  effortCost : agentEffort → ℝ
  expectedOutput : agentEffort → ℝ
  riskAversion : Prop
  limitedLiability : Prop

structure PrincipalAgentEvidence (C : PrincipalAgentContract) where
  effortCostClosed : C.effortCost ≠ ∅
  expectedOutputClosed : C.expectedOutput ≠ ∅
  riskAversionClosed : C.riskAversion
  limitedLiabilityClosed : C.limitedLiability

def PrincipalAgentContractClosed (C : PrincipalAgentContract) : Prop :=
  C.riskAversion ∧ C.limitedLiability

theorem principal_agent_contract_closed_from_evidence (C : PrincipalAgentContract)
    (E : PrincipalAgentEvidence C) : PrincipalAgentContractClosed C := by
  exact And.intro E.riskAversionClosed E.limitedLiabilityClosed

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse