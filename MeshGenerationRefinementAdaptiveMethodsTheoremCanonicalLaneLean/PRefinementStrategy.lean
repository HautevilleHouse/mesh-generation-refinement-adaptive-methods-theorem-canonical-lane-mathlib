import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure PRefinementStrategyPackage where
  polynomialOrderIncrease : Prop
  spectralConvergence : Prop
  hpCompatibility : Prop
  localSmoothnessAssumption : Prop

structure PRefinementStrategyEvidence (P : PRefinementStrategyPackage) where
  polynomialOrderIncreaseClosed : P.polynomialOrderIncrease
  spectralConvergenceClosed : P.spectralConvergence
  hpCompatibilityClosed : P.hpCompatibility
  localSmoothnessAssumptionClosed : P.localSmoothnessAssumption

def PRefinementStrategyClosed (P : PRefinementStrategyPackage) : Prop :=
  P.polynomialOrderIncrease ∧ P.spectralConvergence ∧ P.hpCompatibility ∧ P.localSmoothnessAssumption

theorem p_refinement_strategy_closed_from_evidence (P : PRefinementStrategyPackage) (E : PRefinementStrategyEvidence P) : PRefinementStrategyClosed P := by
  exact And.intro E.polynomialOrderIncreaseClosed (And.intro E.spectralConvergenceClosed (And.intro E.hpCompatibilityClosed E.localSmoothnessAssumptionClosed))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse