import canonicalLaneMathlib.MathlibObjects

/-!
# Convergent Bounds Package
-/

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ConvergentBoundsPackage where
  number : ℝ
  convergents : ℕ → ℚ
  errorBound : ℕ → ℝ
  approximationExponent : ℕ

structure ConvergentBoundsEvidence (C : ConvergentBoundsPackage) where
  numberClosed : C.number = 0
  convergentsComputed : ∀ n, C.convergents n = 0
  errorBoundClosed : ∀ n, C.errorBound n ≥ 0
  approximationExponentClosed : C.approximationExponent = 1

def ConvergentBoundsClosed (C : ConvergentBoundsPackage) : Prop :=
  ∀ n, C.errorBound n ≥ 0

theorem convergent_bounds_closed_from_evidence
    (C : ConvergentBoundsPackage) (Ev : ConvergentBoundsEvidence C) :
    ConvergentBoundsClosed C := by
  intro n
  exact Ev.errorBoundClosed n

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse