import HautevilleHouse.ContinuedFractionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure BestApproximationPackage where
  target : ℚ
  convergentSequence : ℕ → ℚ
  bestApproximationProperty : Prop
  errorDecreasing : Prop
  convergentsAreBest : Prop

structure BestApproximationEvidence (B : BestApproximationPackage) where
  bestApproximationPropertyClosed : B.bestApproximationProperty
  errorDecreasingClosed : B.errorDecreasing
  convergentsAreBestClosed : B.convergentsAreBest

def BestApproximationClosed (B : BestApproximationPackage) : Prop :=
  B.bestApproximationProperty ∧ B.errorDecreasing ∧ B.convergentsAreBest

theorem best_approximation_closed_from_evidence (B : BestApproximationPackage) (E : BestApproximationEvidence B) :
    BestApproximationClosed B := by
  exact And.intro E.bestApproximationPropertyClosed (And.intro E.errorDecreasingClosed E.convergentsAreBestClosed)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
