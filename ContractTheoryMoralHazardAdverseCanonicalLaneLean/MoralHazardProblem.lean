import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.PrincipalAgentConstraints

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure MoralHazardPackage (P : PrincipalAgentPackage) where
  hiddenEffort : Prop
  observedOutput : P.stateSpace -> ℝ
  contract : P.stateSpace -> ℝ
  incentiveCompatibility : Prop

def MoralHazardEvidence {P : PrincipalAgentPackage} (M : MoralHazardPackage P) : Prop :=
  M.incentiveCompatibility ∧ (∀ s : P.stateSpace, M.contract s = P.outputFunction (default : P.agentType) s - 0.5)

def MoralHazardClosed {P : PrincipalAgentPackage} (M : MoralHazardPackage P) : Prop :=
  M.incentiveCompatibility ∧ (∀ s : P.stateSpace, M.contract s = P.outputFunction (default : P.agentType) s - 0.5)

theorem moral_hazard_closed_from_evidence {P : PrincipalAgentPackage} (M : MoralHazardPackage P) (E : MoralHazardEvidence M) : MoralHazardClosed M :=
  E

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse