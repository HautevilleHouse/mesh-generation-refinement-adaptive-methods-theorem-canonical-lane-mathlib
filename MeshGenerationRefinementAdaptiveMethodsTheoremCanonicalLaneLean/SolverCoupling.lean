import MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean.AdaptiveRefinement

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure SolverCouplingPackage {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} where
  solverType : Type u
  discreteProblem : Prop
  variationalFormulation : Prop
  matrixAssembly : Prop
  linearAlgebraSolver : Prop

structure SolverCouplingEvidence {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} (S : SolverCouplingPackage G A) where
  discreteProblemClosed : S.discreteProblem
  variationalFormulationClosed : S.variationalFormulation
  matrixAssemblyClosed : S.matrixAssembly
  linearAlgebraSolverClosed : S.linearAlgebraSolver

def SolverCouplingClosed {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} (S : SolverCouplingPackage G A) : Prop :=
  S.discreteProblem ∧ S.variationalFormulation ∧ S.matrixAssembly ∧ S.linearAlgebraSolver

theorem solver_coupling_closed_from_evidence {G : MeshGeometryPackage} {A : AdaptiveRefinementPackage G} (S : SolverCouplingPackage G A) (E : SolverCouplingEvidence S) :
    SolverCouplingClosed S := by
  exact And.intro E.discreteProblemClosed (And.intro E.variationalFormulationClosed (And.intro E.matrixAssemblyClosed E.linearAlgebraSolverClosed))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse