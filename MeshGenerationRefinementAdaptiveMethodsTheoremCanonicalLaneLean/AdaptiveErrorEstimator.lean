import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure AdaptiveErrorEstimatorPackage where
  aPosterioriErrorIndicator : Prop
  residualBasedEstimator : Prop
  recoveryBasedEstimator : Prop
  effectivityIndex : Prop
  markingStrategy : Prop

structure AdaptiveErrorEstimatorEvidence (A : AdaptiveErrorEstimatorPackage) where
  aPosterioriErrorIndicatorClosed : A.aPosterioriErrorIndicator
  residualBasedEstimatorClosed : A.residualBasedEstimator
  recoveryBasedEstimatorClosed : A.recoveryBasedEstimator
  effectivityIndexClosed : A.effectivityIndex
  markingStrategyClosed : A.markingStrategy

def AdaptiveErrorEstimatorClosed (A : AdaptiveErrorEstimatorPackage) : Prop :=
  A.aPosterioriErrorIndicator ∧ A.residualBasedEstimator ∧ A.recoveryBasedEstimator ∧ A.effectivityIndex ∧ A.markingStrategy

theorem adaptive_error_estimator_closed_from_evidence (A : AdaptiveErrorEstimatorPackage) (E : AdaptiveErrorEstimatorEvidence A) : AdaptiveErrorEstimatorClosed A := by
  exact And.intro E.aPosterioriErrorIndicatorClosed (And.intro E.residualBasedEstimatorClosed (And.intro E.recoveryBasedEstimatorClosed (And.intro E.effectivityIndexClosed E.markingStrategyClosed)))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse