import canonicals.CanonicalLaneMathlibCore
import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure EffortChoice (E : Type) where
  cost : E → ℝ
  outputDistribution : E → ℝ

struct MoralHazardContract extends AdmissibleClass where
  effortSet : EffortChoice ℕ
  contractWage : ℝ
  effortRecommended : ℕ
  incentiveCompatibilityCond : AgentUtility (effortSet.cost effortRecommended) (contractWage) ≥
    AgentUtility (effortSet.cost (effortRecommended + 1)) (contractWage) -- simplified

def AgentUtility (cost wage : ℝ) : ℝ := wage - cost

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse