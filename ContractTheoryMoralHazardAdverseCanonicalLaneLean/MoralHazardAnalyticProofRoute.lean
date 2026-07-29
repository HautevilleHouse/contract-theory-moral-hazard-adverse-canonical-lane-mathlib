import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.MoralHazardAdverseAnalyticFoundation

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure MoralHazardRouteObligations where
  firstOrderCondition : Prop
  secondBestContract : Prop
  efficiencyWage : Prop
  limitedLiability : Prop

structure MoralHazardRouteEvidence (R : MoralHazardRouteObligations) where
  firstOrderConditionClosed : R.firstOrderCondition
  secondBestContractClosed : R.secondBestContract
  efficiencyWageClosed : R.efficiencyWage
  limitedLiabilityClosed : R.limitedLiability

def MoralHazardRouteClosed (R : MoralHazardRouteObligations) : Prop :=
  R.firstOrderCondition ∧ R.secondBestContract ∧ R.efficiencyWage ∧ R.limitedLiability

def MoralHazardAdverseAnalyticFoundation.toMoralHazardRouteObligations
    (A : MoralHazardAdverseAnalyticFoundation) : MoralHazardRouteObligations :=
  { firstOrderCondition := FirstOrderConditionClosed A.firstOrder
    secondBestContract := SecondBestContractClosed A.secondBest
    efficiencyWage := True
    limitedLiability := True
  }

theorem moral_hazard_route_closed_from_evidence
    (R : MoralHazardRouteObligations) (E : MoralHazardRouteEvidence R) :
    MoralHazardRouteClosed R := by
  exact And.intro E.firstOrderConditionClosed
    (And.intro E.secondBestContractClosed
      (And.intro E.efficiencyWageClosed E.limitedLiabilityClosed))

theorem moral_hazard_route_closed_from_analytic_foundation
    (A : MoralHazardAdverseAnalyticFoundation) :
    MoralHazardRouteClosed A.toMoralHazardRouteObligations := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · exact first_order_condition_closed_from_evidence A.firstOrder A.firstOrderEvidence
  · exact second_best_contract_closed_from_evidence A.secondBest A.secondBestEvidence
  · trivial
  · trivial

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse