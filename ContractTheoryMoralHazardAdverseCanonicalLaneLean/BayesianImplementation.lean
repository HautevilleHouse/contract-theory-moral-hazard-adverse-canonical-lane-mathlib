import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.AdverseSelection

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure BayesianImplementationPackage (P : PrincipalAgentPackage) (A : AdverseSelectionPackage P) where
  revelationPrinciple : Prop
  directMechanism : P.agentType -> ℝ
  truthTellingConstraint : ∀ a : P.agentType, P.utilityAgent (directMechanism a) ≥ P.utilityAgent (directMechanism (default : P.agentType))
  allocationEfficiency : Prop

def BayesianImplementationEvidence {P : PrincipalAgentPackage} {A : AdverseSelectionPackage P} (B : BayesianImplementationPackage P A) : Prop :=
  B.revelationPrinciple ∧ (∀ a : P.agentType, B.truthTellingConstraint a) ∧ B.allocationEfficiency

def BayesianImplementationClosed {P : PrincipalAgentPackage} {A : AdverseSelectionPackage P} (B : BayesianImplementationPackage P A) : Prop :=
  B.revelationPrinciple ∧ (∀ a : P.agentType, B.truthTellingConstraint a) ∧ B.allocationEfficiency

theorem bayesian_implementation_closed_from_evidence {P : PrincipalAgentPackage} {A : AdverseSelectionPackage P} (B : BayesianImplementationPackage P A) (E : BayesianImplementationEvidence B) : BayesianImplementationClosed B :=
  E

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse