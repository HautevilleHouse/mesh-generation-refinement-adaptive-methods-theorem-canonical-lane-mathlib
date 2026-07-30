import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure MeshElementQualityPackage where
  elementAspectRatio : Prop
  skewness : Prop
  jacobianDeterminant : Prop
  orthogonality : Prop
  qualityMetricDefined : Prop

structure MeshElementQualityEvidence (M : MeshElementQualityPackage) where
  elementAspectRatioClosed : M.elementAspectRatio
  skewnessClosed : M.skewness
  jacobianDeterminantClosed : M.jacobianDeterminant
  orthogonalityClosed : M.orthogonality
  qualityMetricDefinedClosed : M.qualityMetricDefined

def MeshElementQualityClosed (M : MeshElementQualityPackage) : Prop :=
  M.elementAspectRatio ∧ M.skewness ∧ M.jacobianDeterminant ∧ M.orthogonality ∧ M.qualityMetricDefined

theorem mesh_element_quality_closed_from_evidence (M : MeshElementQualityPackage) (E : MeshElementQualityEvidence M) : MeshElementQualityClosed M := by
  exact And.intro E.elementAspectRatioClosed (And.intro E.skewnessClosed (And.intro E.jacobianDeterminantClosed (And.intro E.orthogonalityClosed E.qualityMetricDefinedClosed)))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse