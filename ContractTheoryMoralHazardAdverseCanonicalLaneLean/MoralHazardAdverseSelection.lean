import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseCanonicalLaneLean

structure MoralHazardAdverseSelectionPackage where
  hiddenActionModel : HiddenActionModelPackage
  incentivePackage : IncentiveCompatibilityPackage
  optimalContract : OptimalContractPackage
  screeningEquilibrium : ScreeningEquilibriumPackage
  combinedConsistency : Prop

structure MoralHazardAdverseSelectionEvidence (M : MoralHazardAdverseSelectionPackage) where
  hiddenActionModelClosed : HiddenActionModelClosed M.hiddenActionModel
  incentiveClosed : IncentiveCompatibilityClosed M.incentivePackage
  optimalContractClosed : OptimalContractClosed M.optimalContract
  screeningClosed : ScreeningEquilibriumClosed M.screeningEquilibrium
  combinedConsistencyClosed : M.combinedConsistency

def MoralHazardAdverseSelectionClosed (M : MoralHazardAdverseSelectionPackage) : Prop :=
  HiddenActionModelClosed M.hiddenActionModel ∧
  IncentiveCompatibilityClosed M.incentivePackage ∧
  OptimalContractClosed M.optimalContract ∧
  ScreeningEquilibriumClosed M.screeningEquilibrium ∧
  M.combinedConsistency

theorem moral_hazard_adverse_selection_closed_from_evidence (M : MoralHazardAdverseSelectionPackage) (E : MoralHazardAdverseSelectionEvidence M) :
    MoralHazardAdverseSelectionClosed M := by
  exact And.intro E.hiddenActionModelClosed
    (And.intro E.incentiveClosed
      (And.intro E.optimalContractClosed
        (And.intro E.screeningClosed E.combinedConsistencyClosed)))

end ContractTheoryMoralHazardAdverseCanonicalLaneLean
end HautevilleHouse