import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure ErrorEstimator where
  estimate : Float
  tolerance : Float

structure RefinementMarker where
  elementsToRefine : List String

def AdaptiveControlClosed (E : ErrorEstimator) (M : RefinementMarker) : Prop :=
  (E.estimate > E.tolerance) → (M.elementsToRefine.length > 0)

theorem adaptive_control_trigger (E : ErrorEstimator) (M : RefinementMarker) (h : E.estimate > E.tolerance) :
    M.elementsToRefine.length > 0 := by
  sorry

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse
