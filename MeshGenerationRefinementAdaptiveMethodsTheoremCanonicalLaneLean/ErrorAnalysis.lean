import MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean.SolverCoupling

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure ErrorAnalysisPackage {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} {S : SolverCouplingPackage G A} where
  aPrioriError : Prop
  aPosterioriError : Prop
  interpolationEstimates : Prop
  stabilityBounds : Prop
  asymptoticRate : Prop

structure ErrorAnalysisEvidence {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} {S : SolverCouplingPackage G A} (E : ErrorAnalysisPackage G A S) where
  aPrioriErrorClosed : E.aPrioriError
  aPosterioriErrorClosed : E.aPosterioriError
  interpolationEstimatesClosed : E.interpolationEstimates
  stabilityBoundsClosed : E.stabilityBounds
  asymptoticRateClosed : E.asymptoticRate

def ErrorAnalysisClosed {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} {S : SolverCouplingPackage G A} (E : ErrorAnalysisPackage G A S) : Prop :=
  E.aPrioriError ∧ E.aPosterioriError ∧ E.interpolationEstimates ∧ E.stabilityBounds ∧ E.asymptoticRate

theorem error_analysis_closed_from_evidence {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} {S : SolverCouplingPackage G A} (E : ErrorAnalysisPackage G A S) (Ev : ErrorAnalysisEvidence E) :
    ErrorAnalysisClosed E := by
  exact And.intro Ev.aPrioriErrorClosed (And.intro Ev.aPosterioriErrorClosed (And.intro Ev.interpolationEstimatesClosed (And.intro Ev.stabilityBoundsClosed Ev.asymptoticRateClosed)))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse