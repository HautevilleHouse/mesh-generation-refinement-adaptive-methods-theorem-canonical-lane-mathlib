import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure AdaptiveSolverState where
  iteration : ℕ
  error : ℝ
  converged : Prop

structure AdaptiveMeshSolverPackage where
  solverState : AdaptiveSolverState
  meshUpdated : Prop
  solutionConverged : Prop

structure AdaptiveMeshSolverEvidence (A : AdaptiveMeshSolverPackage) where
  meshUpdatedClosed : A.meshUpdated
  solutionConvergedClosed : A.solutionConverged

def AdaptiveMeshSolverClosed (A : AdaptiveMeshSolverPackage) : Prop :=
  A.meshUpdated ∧ A.solutionConverged

theorem adaptive_mesh_solver_closed_from_evidence (A : AdaptiveMeshSolverPackage) (E : AdaptiveMeshSolverEvidence A) :
    AdaptiveMeshSolverClosed A := by
  exact And.intro E.meshUpdatedClosed E.solutionConvergedClosed

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse