import canonicals.CanonicalLaneMathlibCore
import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure AgentType (Θ : Type) where
  productivity : Θ → ℝ
  riskAversion : Θ → ℝ

structure PrincipalOffer (A : Type) where
  wageSchedule : A → ℝ
  effortRecommendation : A

def incentiveCompatibilityCondition {Θ A : Type} (agentType : AgentType Θ) (offer : PrincipalOffer A) (effortChoice : A) : Prop :=
  agentType.productivity effortChoice * offer.wageSchedule effortChoice ≥
    agentType.productivity (offer.effortRecommendation) * offer.wageSchedule (offer.effortRecommendation)

def participationConstraintSatisfied {Θ A : Type} (agentType : AgentType Θ) (offer : PrincipalOffer A) : Prop :=
  agentType.productivity (offer.effortRecommendation) * offer.wageSchedule (offer.effortRecommendation) ≥ 0

structure AdverseSelectionContract extends AdmissibleClass where
  agentType : AgentType ℕ
  offer : PrincipalOffer ℕ
  icCond : incentiveCompatibilityCondition agentType offer (offer.effortRecommendation)
  pcCond : participationConstraintSatisfied agentType offer

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse