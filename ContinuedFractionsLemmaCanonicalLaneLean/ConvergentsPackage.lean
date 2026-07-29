import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ConvergentsPackage (A : AdmissibleClass) where
  partialQuotients : List ℕ
  convergents : List ℚ
  errorBounds : ℚ → ℚ → Prop
  fastConvergence : Prop
  approximationProperty : A.endpointSatisfied ∨ A.remainderRecorded

structure ConvergentsEvidence {A : AdmissibleClass} (C : ConvergentsPackage A) where
  fastConvergenceClosed : C.fastConvergence
  approximationPropertyClosed : C.approximationProperty

def ConvergentsClosed {A : AdmissibleClass} (C : ConvergentsPackage A) : Prop :=
  C.fastConvergence ∧ C.approximationProperty

theorem convergents_closed_from_evidence
    {A : AdmissibleClass} (C : ConvergentsPackage A) (E : ConvergentsEvidence C) :
    ConvergentsClosed C := by
  exact And.intro E.fastConvergenceClosed E.approximationPropertyClosed

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse