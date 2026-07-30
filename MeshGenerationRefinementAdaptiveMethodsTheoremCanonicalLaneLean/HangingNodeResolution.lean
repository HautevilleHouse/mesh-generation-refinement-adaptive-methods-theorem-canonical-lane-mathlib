import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure HangingNode where
  id : String
  adjacentElements : List String

def HangingNodeResolved (N : HangingNode) : Prop :=
  N.adjacentElements.length ≥ 2

theorem hanging_node_resolution_check (N : HangingNode) :
    HangingNodeResolved N := by
  unfold HangingNodeResolved
  sorry

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse
