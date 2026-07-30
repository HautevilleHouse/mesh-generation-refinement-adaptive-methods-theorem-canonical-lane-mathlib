import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure ConvergenceAnalysisPackage where
  optimalConvergenceRate : Prop
  quasiOptimalComplexity : Prop
  robustnessToMeshDistortion : Prop
  convergenceProofCompleted : Prop
  convergenceSatisfied : Prop
  convergenceSatisfiedTerm : convergenceSatisfied
  optimalConvergenceRateTerm : optimalConvergenceRate
  quasiOptimalComplexityTerm : quasiOptimalComplexity
  robustnessToMeshDistortionTerm : robustnessToMeshDistortion
  convergenceProofCompletedTerm : convergenceProofCompleted

structure ConvergenceAnalysisEvidence (C : ConvergenceAnalysisPackage) where
  optimalConvergenceRateClosed : C.optimalConvergenceRate
  quasiOptimalComplexityClosed : C.quasiOptimalComplexity
  robustnessToMeshDistortionClosed : C.robustnessToMeshDistortion
  convergenceProofCompletedClosed : C.convergenceProofCompleted
  convergenceSatisfiedClosed : C.convergenceSatisfied

def ConvergenceAnalysisClosed (C : ConvergenceAnalysisPackage) : Prop :=
  C.optimalConvergenceRate ∧ C.quasiOptimalComplexity ∧ C.robustnessToMeshDistortion ∧ C.convergenceProofCompleted ∧ C.convergenceSatisfied

theorem convergence_analysis_closed_from_evidence (C : ConvergenceAnalysisPackage)
    (E : ConvergenceAnalysisEvidence C) : ConvergenceAnalysisClosed C := by
  exact And.intro E.optimalConvergenceRateClosed (And.intro E.quasiOptimalComplexityClosed (And.intro E.robustnessToMeshDistortionClosed
    (And.intro E.convergenceProofCompletedClosed E.convergenceSatisfiedClosed)))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse