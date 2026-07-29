import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.SecondBestContract

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure MoralHazardAdverseAnalyticFoundation where
  principalAgentContract : PrincipalAgentContract
  admissible : AdmissibleContract principalAgentContract
  firstOrder : FirstOrderConditionPackage principalAgentContract
  firstOrderEvidence : FirstOrderConditionEvidence firstOrder
  secondBest : SecondBestContractPackage firstOrder
  secondBestEvidence : SecondBestContractEvidence secondBest

def MoralHazardAdverseAnalyticFoundationClosed (A : MoralHazardAdverseAnalyticFoundation) : Prop :=
  AdmissibleContractClosed A.principalAgentContract A.admissible ∧
  FirstOrderConditionClosed A.firstOrder ∧
  SecondBestContractClosed A.secondBest

theorem moral_hazard_adverse_analytic_foundation_closed_from_evidence
    (A : MoralHazardAdverseAnalyticFoundation) :
    MoralHazardAdverseAnalyticFoundationClosed A := by
  have hAdmissible : AdmissibleContractClosed A.principalAgentContract A.admissible :=
    bridge_from_admissible_class A.principalAgentContract A.admissible
  have hFirstOrder : FirstOrderConditionClosed A.firstOrder :=
    first_order_condition_closed_from_evidence A.firstOrder A.firstOrderEvidence
  have hSecondBest : SecondBestContractClosed A.secondBest :=
    second_best_contract_closed_from_evidence A.secondBest A.secondBestEvidence
  exact And.intro hAdmissible (And.intro hFirstOrder hSecondBest)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse