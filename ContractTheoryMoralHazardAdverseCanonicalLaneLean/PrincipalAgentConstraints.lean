import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure PrincipalAgentPackage where
  principalType : Type u
  agentType : Type v
  actionSet : Type w
  stateSpace : Type x
  outputFunction : agentType -> stateSpace -> ℝ
  utilityPrincipal : ℝ -> ℝ
  utilityAgent : ℝ -> ℝ
  outsideOption : ℝ

structure PrincipalAgentEvidence (P : PrincipalAgentPackage) where
  outputDeterministic : P.outputFunction = (fun a s => Real.log (a * s))
  principalUtilityStrictlyIncreasing : StrictMono P.utilityPrincipal
  agentUtilityStrictlyIncreasing : StrictMono P.utilityAgent
  outsideOptionFinite : P.outsideOption ≠ ∞

def PrincipalAgentClosed (P : PrincipalAgentPackage) : Prop :=
  (∀ a : P.agentType, ∀ s : P.stateSpace, P.outputFunction a s = Real.log (a * s)) ∧
  StrictMono P.utilityPrincipal ∧
  StrictMono P.utilityAgent ∧
  P.outsideOption ≠ ∞

theorem principal_agent_closed_from_evidence (P : PrincipalAgentPackage) (E : PrincipalAgentEvidence P) : PrincipalAgentClosed P :=
  And.intro E.outputDeterministic (And.intro E.principalUtilityStrictlyIncreasing (And.intro E.agentUtilityStrictlyIncreasing E.outsideOptionFinite))

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse