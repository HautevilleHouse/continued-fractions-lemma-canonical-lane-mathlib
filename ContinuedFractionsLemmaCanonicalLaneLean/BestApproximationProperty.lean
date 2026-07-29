import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure BestApproximationProperty where
  target : ℝ
  convergent : Convergent
  distanceInequality : Prop

structure BestApproximationEvidence (b : BestApproximationProperty) where
  targetIrrational : Irrational b.target
  distanceInequalityClosed : b.distanceInequality

def BestApproximationClosed (b : BestApproximationProperty) : Prop :=
  Irrational b.target ∧ b.distanceInequality

theorem best_approximation_closed_from_evidence (b : BestApproximationProperty) (e : BestApproximationEvidence b) :
    BestApproximationClosed b := by
  exact And.intro e.targetIrrational e.distanceInequalityClosed

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse