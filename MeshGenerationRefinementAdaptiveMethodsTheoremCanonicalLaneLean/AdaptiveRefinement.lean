import MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean.MeshGeometry

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure AdaptiveRefinementPackage {G : MeshGeometryPackage} where
  errorEstimator : Type u
  refinementCriteria : Prop
  markingStrategy : Prop
  meshAdaptation : Prop
  convergenceGuarantee : Prop

structure AdaptiveRefinementEvidence {G : MeshGeometryPackage} (A : AdaptiveRefinementPackage G) where
  errorEstimatorClosed : A.errorEstimator
  refinementCriteriaClosed : A.refinementCriteria
  markingStrategyClosed : A.markingStrategy
  meshAdaptationClosed : A.meshAdaptation
  convergenceGuaranteeClosed : A.convergenceGuarantee

def AdaptiveRefinementClosed {G : MeshGeometryPackage} (A : AdaptiveRefinementPackage G) : Prop :=
  A.errorEstimator ∧ A.refinementCriteria ∧ A.markingStrategy ∧ A.meshAdaptation ∧ A.convergenceGuarantee

theorem adaptive_refinement_closed_from_evidence {G : MeshGeometryPackage} (A : AdaptiveRefinementPackage G) (E : AdaptiveRefinementEvidence A) :
    AdaptiveRefinementClosed A := by
  exact And.intro E.errorEstimatorClosed (And.intro E.refinementCriteriaClosed (And.intro E.markingStrategyClosed (And.intro E.meshAdaptationClosed E.convergenceGuaranteeClosed)))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse