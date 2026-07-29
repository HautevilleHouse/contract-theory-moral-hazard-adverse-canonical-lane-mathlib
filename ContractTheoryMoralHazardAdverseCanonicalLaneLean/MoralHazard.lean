import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure MoralHazard where
  effortSupply : Type u
  effortUnobservable : Prop
  outputRealization : effortSupply → Type v
  contractOffered : effortSupply → Type w
  incentiveConstraint : Prop
  efficiencyWage : Prop

structure MoralHazardEvidence (M : MoralHazard) where
  effortUnobservableClosed : M.effortUnobservable
  incentiveConstraintClosed : M.incentiveConstraint
  efficiencyWageClosed : M.efficiencyWage

def MoralHazardClosed (M : MoralHazard) : Prop :=
  M.effortUnobservable ∧ M.incentiveConstraint ∧ M.efficiencyWage

theorem moral_hazard_closed_from_evidence (M : MoralHazard)
    (E : MoralHazardEvidence M) : MoralHazardClosed M := by
  exact And.intro E.effortUnobservableClosed
    (And.intro E.incentiveConstraintClosed E.efficiencyWageClosed)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse