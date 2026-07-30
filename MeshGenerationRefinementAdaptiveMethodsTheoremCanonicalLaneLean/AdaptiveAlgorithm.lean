import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure AdaptiveAlgorithmPackage where
  solveEstimateRefineLoop : Prop
  markingStrategy : Prop
  refinementCriterion : Prop
  stoppingCriterion : Prop
  convergenceGuarantee : Prop
  algorithmSatisfied : Prop
  algorithmSatisfiedTerm : algorithmSatisfied
  solveEstimateRefineLoopTerm : solveEstimateRefineLoop
  markingStrategyTerm : markingStrategy
  refinementCriterionTerm : refinementCriterion
  stoppingCriterionTerm : stoppingCriterion
  convergenceGuaranteeTerm : convergenceGuarantee

structure AdaptiveAlgorithmEvidence (A : AdaptiveAlgorithmPackage) where
  solveEstimateRefineLoopClosed : A.solveEstimateRefineLoop
  markingStrategyClosed : A.markingStrategy
  refinementCriterionClosed : A.refinementCriterion
  stoppingCriterionClosed : A.stoppingCriterion
  convergenceGuaranteeClosed : A.convergenceGuarantee
  algorithmSatisfiedClosed : A.algorithmSatisfied

def AdaptiveAlgorithmClosed (A : AdaptiveAlgorithmPackage) : Prop :=
  A.solveEstimateRefineLoop ∧ A.markingStrategy ∧ A.refinementCriterion ∧ A.stoppingCriterion ∧ A.convergenceGuarantee ∧ A.algorithmSatisfied

theorem adaptive_algorithm_closed_from_evidence (A : AdaptiveAlgorithmPackage)
    (E : AdaptiveAlgorithmEvidence A) : AdaptiveAlgorithmClosed A := by
  exact And.intro E.solveEstimateRefineLoopClosed (And.intro E.markingStrategyClosed (And.intro E.refinementCriterionClosed
    (And.intro E.stoppingCriterionClosed (And.intro E.convergenceGuaranteeClosed E.algorithmSatisfiedClosed))))

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse