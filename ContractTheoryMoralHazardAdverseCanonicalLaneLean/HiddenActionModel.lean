import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure HiddenActionModelPackage where
  actionSet : Type
  outputSet : Type
  agentEffort : actionSet -> Type
  outputGivenAction : actionSet -> outputSet -> Type
  contractPayment : outputSet -> Type
  agentUtilityOverPayment : Type
  outsideOption : Type

structure HiddenActionModelEvidence (H : HiddenActionModelPackage) where
  actionSetNonempty : Nonempty H.actionSet
  outputSetNonempty : Nonempty H.outputSet
  outsideOptionExists : H.outsideOption = H.outsideOption

def HiddenActionModelClosed (H : HiddenActionModelPackage) : Prop :=
  Nonempty H.actionSet ∧ Nonempty H.outputSet

theorem hidden_action_model_closed_from_evidence (H : HiddenActionModelPackage) (E : HiddenActionModelEvidence H) :
    HiddenActionModelClosed H := by
  exact And.intro E.actionSetNonempty E.outputSetNonempty

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse