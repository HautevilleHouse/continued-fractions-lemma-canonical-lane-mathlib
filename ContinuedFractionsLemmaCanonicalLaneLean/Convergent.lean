import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure Convergent where
  index : ℕ
  numerator : ℤ
  denominator : ℤ
  errorBound : ℝ

structure ConvergentEvidence (c : Convergent) where
  denominatorPositive : c.denominator > 0
  errorBoundClosed : c.errorBound > 0

def ConvergentClosed (c : Convergent) : Prop :=
  c.denominator > 0 ∧ c.errorBound > 0

theorem convergent_closed_from_evidence (c : Convergent) (e : ConvergentEvidence c) :
    ConvergentClosed c := by
  exact And.intro e.denominatorPositive e.errorBoundClosed

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse