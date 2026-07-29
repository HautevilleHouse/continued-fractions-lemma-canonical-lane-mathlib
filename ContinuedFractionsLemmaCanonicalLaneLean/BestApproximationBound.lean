import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure BestApproximationBoundPackage where
  fractionSequence : Type u
  errorTerm : Type v
  boundDenominator : Type w
  sharpEstimate : Prop
  hurwitzTheorem : Prop
  dirichletTheorem : Prop

structure BestApproximationBoundEvidence (B : BestApproximationBoundPackage) where
  sharpEstimateClosed : B.sharpEstimate
  hurwitzTheoremClosed : B.hurwitzTheorem
  dirichletTheoremClosed : B.dirichletTheorem

def BestApproximationBoundClosed (B : BestApproximationBoundPackage) : Prop :=
  B.sharpEstimate ∧ B.hurwitzTheorem ∧ B.dirichletTheorem

theorem best_approximation_bound_closed_from_evidence (B : BestApproximationBoundPackage) (E : BestApproximationBoundEvidence B) : BestApproximationBoundClosed B := by
  exact And.intro E.sharpEstimateClosed
    (And.intro E.hurwitzTheoremClosed E.dirichletTheoremClosed)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
