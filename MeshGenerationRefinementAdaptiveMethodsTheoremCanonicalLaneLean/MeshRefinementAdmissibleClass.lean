import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean

structure MeshAdmittedObject where
  domain : Type
  metric : Prop
  initialTriangulation : Prop
  refinementLevel : Nat
  qualityGuaranteed : Prop
  errorBoundSatisfied : Prop

structure AdmissibleClass where
  object : MeshAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def MeshWitnessClosed (O : MeshAdmittedObject) : Prop :=
  O.qualityGuaranteed ∧ O.errorBoundSatisfied

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeshWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeshGenerationRefinementAdaptiveMethodsTheoremCanonicalLaneLean
end HautevilleHouse