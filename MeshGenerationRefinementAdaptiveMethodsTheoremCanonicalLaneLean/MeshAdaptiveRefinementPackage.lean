import MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean.MeshEstimationPackage

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure MeshAdaptiveRefinementPackage (E : MeshEstimationPackage) where
  refinementIndicator : Prop
  markingStrategy : Prop
  refinementRule : Prop
  complexityControl : Prop
  optimalityGuarantee : Prop

structure MeshAdaptiveRefinementEvidence {E : MeshEstimationPackage} (A : MeshAdaptiveRefinementPackage E) where
  refinementIndicatorClosed : A.refinementIndicator
  markingStrategyClosed : A.markingStrategy
  refinementRuleClosed : A.refinementRule
  complexityControlClosed : A.complexityControl
  optimalityGuaranteeClosed : A.optimalityGuarantee

def MeshAdaptiveRefinementClosed {E : MeshEstimationPackage} (A : MeshAdaptiveRefinementPackage E) : Prop :=
  A.refinementIndicator ∧ A.markingStrategy ∧ A.refinementRule ∧ A.complexityControl ∧ A.optimalityGuarantee

theorem mesh_adaptive_refinement_closed_from_evidence
    {E : MeshEstimationPackage} (A : MeshAdaptiveRefinementPackage E)
    (Ev : MeshAdaptiveRefinementEvidence A) : MeshAdaptiveRefinementClosed A := by
  exact And.intro Ev.refinementIndicatorClosed
    (And.intro Ev.markingStrategyClosed
      (And.intro Ev.refinementRuleClosed
        (And.intro Ev.complexityControlClosed Ev.optimalityGuaranteeClosed)))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse