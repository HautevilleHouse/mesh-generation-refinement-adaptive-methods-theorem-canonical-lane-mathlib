import MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean.MeshRefinementAdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure MeshEstimationPackage where
  aPrioriErrorBound : Prop
  aPosterioriErrorBound : Prop
  convergenceRate : Prop
  stabilityUnderRefinement : Prop

structure MeshEstimationEvidence (M : MeshEstimationPackage) where
  aPrioriErrorBoundClosed : M.aPrioriErrorBound
  aPosterioriErrorBoundClosed : M.aPosterioriErrorBound
  convergenceRateClosed : M.convergenceRate
  stabilityUnderRefinementClosed : M.stabilityUnderRefinement

def MeshEstimationClosed (M : MeshEstimationPackage) : Prop :=
  M.aPrioriErrorBound ∧ M.aPosterioriErrorBound ∧ M.convergenceRate ∧ M.stabilityUnderRefinement

theorem mesh_estimation_closed_from_evidence (M : MeshEstimationPackage) (E : MeshEstimationEvidence M) :
    MeshEstimationClosed M := by
  exact And.intro E.aPrioriErrorBoundClosed
    (And.intro E.aPosterioriErrorBoundClosed
      (And.intro E.convergenceRateClosed E.stabilityUnderRefinementClosed))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse