import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.FirstOrderCondition

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure SecondBestContractPackage {A : PrincipalAgentContract} (F : FirstOrderConditionPackage A) where
  contract : A.compensation
  effort : A.effort
  incentiveCompatibility : Prop
  participationConstraint : Prop
  secondBestEfficiency : Prop

structure SecondBestContractEvidence {A : PrincipalAgentContract} {F : FirstOrderConditionPackage A}
    (S : SecondBestContractPackage F) where
  incentiveCompatibilityClosed : S.incentiveCompatibility
  participationConstraintClosed : S.participationConstraint
  secondBestEfficiencyClosed : S.secondBestEfficiency

def SecondBestContractClosed {A : PrincipalAgentContract} {F : FirstOrderConditionPackage A}
    (S : SecondBestContractPackage F) : Prop :=
  S.incentiveCompatibility ∧ S.participationConstraint ∧ S.secondBestEfficiency

theorem second_best_contract_closed_from_evidence {A : PrincipalAgentContract}
    {F : FirstOrderConditionPackage A} (S : SecondBestContractPackage F)
    (E : SecondBestContractEvidence S) : SecondBestContractClosed S := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.participationConstraintClosed E.secondBestEfficiencyClosed)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse