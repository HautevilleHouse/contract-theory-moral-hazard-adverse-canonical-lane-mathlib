import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure AdverseSelection where
  agentType : Type u
  typeDistribution : agentType → ℝ
  contractMenu : agentType → Type v
  incentiveCompatibility : Prop
  participationConstraint : Prop
  screeningEfficiency : Prop

structure AdverseSelectionEvidence (A : AdverseSelection) where
  incentiveCompatibilityClosed : A.incentiveCompatibility
  participationConstraintClosed : A.participationConstraint
  screeningEfficiencyClosed : A.screeningEfficiency

def AdverseSelectionClosed (A : AdverseSelection) : Prop :=
  A.incentiveCompatibility ∧ A.participationConstraint ∧ A.screeningEfficiency

theorem adverse_selection_closed_from_evidence (A : AdverseSelection)
    (E : AdverseSelectionEvidence A) : AdverseSelectionClosed A := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.participationConstraintClosed E.screeningEfficiencyClosed)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse