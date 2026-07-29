import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.MoralHazardAdverseAdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure FirstOrderConditionPackage (A : PrincipalAgentContract) where
  effortLevels : List A.effort
  outputDistribution : A.effort → List (A.output × Real)
  expectedOutput : A.effort → Real
  marginalBenefit : A.effort → Real
  marginalCost : A.effort → Real
  firstOrderConditionHolds : Prop

structure FirstOrderConditionEvidence {A : PrincipalAgentContract} (F : FirstOrderConditionPackage A) where
  effortLevelsClosed : True
  outputDistributionClosed : True
  expectedOutputClosed : True
  marginalBenefitClosed : True
  marginalCostClosed : True
  firstOrderConditionHoldsClosed : F.firstOrderConditionHolds

def FirstOrderConditionClosed {A : PrincipalAgentContract} (F : FirstOrderConditionPackage A) : Prop :=
  F.firstOrderConditionHolds

theorem first_order_condition_closed_from_evidence {A : PrincipalAgentContract}
    (F : FirstOrderConditionPackage A) (E : FirstOrderConditionEvidence F) :
    FirstOrderConditionClosed F := by
  exact E.firstOrderConditionHoldsClosed

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse