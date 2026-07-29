import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure SignalingModelPackage where
  senderTypes : Type
  signalSet : Type
  receiverBelief : signalSet -> senderTypes -> Prop
  signalingEquilibrium : Prop
  separatingEquilibrium : Prop
  poolingEquilibrium : Prop

structure SignalingModelEvidence (S : SignalingModelPackage) where
  signalingEquilibriumClosed : S.signalingEquilibrium
  separatingEquilibriumClosed : S.separatingEquilibrium
  poolingEquilibriumClosed : S.poolingEquilibrium

def SignalingModelClosed (S : SignalingModelPackage) : Prop :=
  S.signalingEquilibrium ∧ S.separatingEquilibrium ∧ S.poolingEquilibrium

theorem signaling_model_closed_from_evidence
    (S : SignalingModelPackage) (E : SignalingModelEvidence S) :
    SignalingModelClosed S := by
  exact And.intro E.signalingEquilibriumClosed
    (And.intro E.separatingEquilibriumClosed E.poolingEquilibriumClosed)

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse
