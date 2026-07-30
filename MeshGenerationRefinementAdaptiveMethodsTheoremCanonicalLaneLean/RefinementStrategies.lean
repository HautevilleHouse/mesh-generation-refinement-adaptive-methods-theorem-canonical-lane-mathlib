import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure RefinementStrategiesPackage where
  hRefinement : Prop
  pRefinement : Prop
  rRefinement : Prop
  anisotropicRefinement : Prop
  errorIndicatorDriven : Prop
  refinementStrategySatisfied : Prop
  refinementStrategySatisfiedTerm : refinementStrategySatisfied
  hRefinementTerm : hRefinement
  pRefinementTerm : pRefinement
  rRefinementTerm : rRefinement
  anisotropicRefinementTerm : anisotropicRefinement
  errorIndicatorDrivenTerm : errorIndicatorDriven

structure RefinementStrategiesEvidence (R : RefinementStrategiesPackage) where
  hRefinementClosed : R.hRefinement
  pRefinementClosed : R.pRefinement
  rRefinementClosed : R.rRefinement
  anisotropicRefinementClosed : R.anisotropicRefinement
  errorIndicatorDrivenClosed : R.errorIndicatorDriven
  refinementStrategySatisfiedClosed : R.refinementStrategySatisfied

def RefinementStrategiesClosed (R : RefinementStrategiesPackage) : Prop :=
  R.hRefinement ∧ R.pRefinement ∧ R.rRefinement ∧ R.anisotropicRefinement ∧ R.errorIndicatorDriven ∧ R.refinementStrategySatisfied

theorem refinement_strategies_closed_from_evidence (R : RefinementStrategiesPackage)
    (E : RefinementStrategiesEvidence R) : RefinementStrategiesClosed R := by
  exact And.intro E.hRefinementClosed (And.intro E.pRefinementClosed (And.intro E.rRefinementClosed
    (And.intro E.anisotropicRefinementClosed (And.intro E.errorIndicatorDrivenClosed E.refinementStrategySatisfiedClosed))))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse