import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure MeshQualityMetricsPackage where
  aspectRatio : Prop
  skewness : Prop
  orthogonality : Prop
  smoothness : Prop
  elementQualityIndicators : Prop
  qualityMetricSatisfied : Prop
  qualityMetricSatisfiedTerm : qualityMetricSatisfied
  aspectRatioTerm : aspectRatio
  skewnessTerm : skewness
  orthogonalityTerm : orthogonality
  smoothnessTerm : smoothness
  elementQualityIndicatorsTerm : elementQualityIndicators

structure MeshQualityMetricsEvidence (M : MeshQualityMetricsPackage) where
  aspectRatioClosed : M.aspectRatio
  skewnessClosed : M.skewness
  orthogonalityClosed : M.orthogonality
  smoothnessClosed : M.smoothness
  elementQualityIndicatorsClosed : M.elementQualityIndicators
  qualityMetricSatisfiedClosed : M.qualityMetricSatisfied

def MeshQualityMetricsClosed (M : MeshQualityMetricsPackage) : Prop :=
  M.aspectRatio ∧ M.skewness ∧ M.orthogonality ∧ M.smoothness ∧ M.elementQualityIndicators ∧ M.qualityMetricSatisfied

theorem mesh_quality_metrics_closed_from_evidence (M : MeshQualityMetricsPackage)
    (E : MeshQualityMetricsEvidence M) : MeshQualityMetricsClosed M := by
  exact And.intro E.aspectRatioClosed (And.intro E.skewnessClosed (And.intro E.orthogonalityClosed
    (And.intro E.smoothnessClosed (And.intro E.elementQualityIndicatorsClosed E.qualityMetricSatisfiedClosed))))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse