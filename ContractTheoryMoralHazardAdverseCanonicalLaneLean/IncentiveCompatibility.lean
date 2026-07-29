import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure IncentiveCompatibilityPackage where
  hiddenActionSpace : Type
  effortCost : Type
  outputDistribution : hiddenActionSpace -> outputDistributionType
  contract : outputDistributionType -> paymentType
  agentUtility : Type
  incentiveConstraintSatisfied : Prop
  participationConstraintSatisfied : Prop

structure IncentiveCompatibilityEvidence (I : IncentiveCompatibilityPackage) where
  incentiveConstraintSatisfiedClosed : I.incentiveConstraintSatisfied
  participationConstraintSatisfiedClosed : I.participationConstraintSatisfied

def IncentiveCompatibilityClosed (I : IncentiveCompatibilityPackage) : Prop :=
  I.incentiveConstraintSatisfied ∧ I.participationConstraintSatisfied

theorem incentive_compatibility_closed_from_evidence (I : IncentiveCompatibilityPackage) (E : IncentiveCompatibilityEvidence I) :
    IncentiveCompatibilityClosed I := by
  exact And.intro E.incentiveConstraintSatisfiedClosed E.participationConstraintSatisfiedClosed

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse