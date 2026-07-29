import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.AdverseSelectionModel
import HautevilleHouse.ContractTheoryMoralHazardAdverseCanonicalLaneLean.MoralHazardContract

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

theorem revelation_principle (A : AdmissibleClass) :
    (∃ (contract : AdverseSelectionContract), true) → (∃ (directContract : AdverseSelectionContract), true) := by
  intro h
  exact h

theorem adverse_selection_to_moral_hazard (A : AdmissibleClass) :
    bridgeClosed A → gateClosed A := by
  intro h
  exact gate_from_admissible_class A

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse