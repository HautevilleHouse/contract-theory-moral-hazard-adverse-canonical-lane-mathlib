import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure HiddenActionHiddenTypePackage where
  agentTypeSet : Type
  effortSet : Type
  outputFunction : agentTypeSet -> effortSet -> Prop
  principalUtility : Prop
  agentUtility : Prop
  adverseSelection : Prop
  moralHazard : Prop

structure HiddenActionHiddenTypeEvidence (H : HiddenActionHiddenTypePackage) where
  adverseSelectionClosed : H.adverseSelection
  moralHazardClosed : H.moralHazard

def HiddenActionHiddenTypeClosed (H : HiddenActionHiddenTypePackage) : Prop :=
  H.adverseSelection ∧ H.moralHazard

theorem hidden_action_hidden_type_closed_from_evidence
    (H : HiddenActionHiddenTypePackage) (E : HiddenActionHiddenTypeEvidence H) :
    HiddenActionHiddenTypeClosed H := by
  exact And.intro E.adverseSelectionClosed E.moralHazardClosed

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse
