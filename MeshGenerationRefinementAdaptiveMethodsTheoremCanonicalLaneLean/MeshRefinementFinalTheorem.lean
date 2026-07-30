import MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean.MeshGateLemmas

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

def ConstrainedMeshRefinementClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mesh_refinement_endgame (A : AdmissibleClass) :
    ConstrainedMeshRefinementClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse