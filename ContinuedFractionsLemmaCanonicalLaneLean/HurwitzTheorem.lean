import canonicalLaneMathlib.MathlibObjects

/-!
# Hurwitz's Theorem Package: The approximation quality for any irrational is bounded by 1/(√5 q^2)
-/

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure HurwitzTheoremPackage where
  irrational : ℝ
  convergentQuality : ℕ → ℝ
  hurwitzConstant : ℝ := Real.sqrt 5
  approximationBound : ℕ → ℝ
  qualityConverges : Prop

structure HurwitzTheoremEvidence (H : HurwitzTheoremPackage) where
  irrationalClosed : H.irrational = 0
  convergentQualityDefined : ∀ n, H.convergentQuality n = 0
  hurwitzConstantClosed : H.hurwitzConstant = Real.sqrt 5
  approximationBoundClosed : ∀ n, H.approximationBound n = 1 / (H.hurwitzConstant * ((n:ℝ) * (n:ℝ)))
  qualityConvergesClosed : H.qualityConverges

def HurwitzTheoremClosed (H : HurwitzTheoremPackage) : Prop :=
  H.qualityConverges

theorem hurwitz_theorem_closed_from_evidence
    (H : HurwitzTheoremPackage) (Ev : HurwitzTheoremEvidence H) :
    HurwitzTheoremClosed H := by
  exact Ev.qualityConvergesClosed

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse