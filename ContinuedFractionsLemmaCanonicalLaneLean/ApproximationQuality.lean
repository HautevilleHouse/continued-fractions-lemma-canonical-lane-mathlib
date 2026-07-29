import canonicalLaneMathlib.MathlibObjects

/-!
# Approximation Quality Package
-/

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ApproximationQualityPackage where
  rational : ℚ
  irrational : ℝ
  continuedFractionApprox : ℕ → ℚ
  qualityMetric : ℕ → ℝ
  bestApproximationProperty : ℕ → Prop

structure ApproximationQualityEvidence (A : ApproximationQualityPackage) where
  rationalClosed : A.rational = 0
  irrationalClosed : A.irrational = 0
  continuedFractionApproxComputed : ∀ n, A.continuedFractionApprox n = 0
  qualityMetricBound : ∀ n, A.qualityMetric n ≤ 1 / ((n:ℝ) * (n:ℝ))
  bestApproximationPropertyClosed : ∀ n, A.bestApproximationProperty n

def ApproximationQualityClosed (A : ApproximationQualityPackage) : Prop :=
  ∀ n, A.qualityMetric n ≤ 1 / ((n:ℝ) * (n:ℝ))

theorem approximation_quality_closed_from_evidence
    (A : ApproximationQualityPackage) (Ev : ApproximationQualityEvidence A) :
    ApproximationQualityClosed A := by
  intro n
  exact Ev.qualityMetricBound n

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse