import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure ErrorEstimationPackage where
  aPosterioriError : Prop
  aPrioriError : Prop
  residualBased : Prop
  recoveryBased : Prop
  hierarchicalBasis : Prop
  errorEstimateSatisfied : Prop
  errorEstimateSatisfiedTerm : errorEstimateSatisfied
  aPosterioriErrorTerm : aPosterioriError
  aPrioriErrorTerm : aPrioriError
  residualBasedTerm : residualBased
  recoveryBasedTerm : recoveryBased
  hierarchicalBasisTerm : hierarchicalBasis

structure ErrorEstimationEvidence (E : ErrorEstimationPackage) where
  aPosterioriErrorClosed : E.aPosterioriError
  aPrioriErrorClosed : E.aPrioriError
  residualBasedClosed : E.residualBased
  recoveryBasedClosed : E.recoveryBased
  hierarchicalBasisClosed : E.hierarchicalBasis
  errorEstimateSatisfiedClosed : E.errorEstimateSatisfied

def ErrorEstimationClosed (E : ErrorEstimationPackage) : Prop :=
  E.aPosterioriError ∧ E.aPrioriError ∧ E.residualBased ∧ E.recoveryBased ∧ E.hierarchicalBasis ∧ E.errorEstimateSatisfied

theorem error_estimation_closed_from_evidence (E : ErrorEstimationPackage)
    (Ev : ErrorEstimationEvidence E) : ErrorEstimationClosed E := by
  exact And.intro Ev.aPosterioriErrorClosed (And.intro Ev.aPrioriErrorClosed (And.intro Ev.residualBasedClosed
    (And.intro Ev.recoveryBasedClosed (And.intro Ev.hierarchicalBasisClosed Ev.errorEstimateSatisfiedClosed))))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse