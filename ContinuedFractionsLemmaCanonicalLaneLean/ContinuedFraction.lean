import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFraction where
  a : ℕ → ℤ
  period : ℕ
  preperiod : ℕ
  quadraticIrrational : Prop

structure ContinuedFractionEvidence (c : ContinuedFraction) where
  periodValid : c.period > 0
  preperiodValid : c.preperiod ≥ 0
  quadraticIrrationalClosed : c.quadraticIrrational

def ContinuedFractionClosed (c : ContinuedFraction) : Prop :=
  c.period > 0 ∧ c.preperiod ≥ 0 ∧ c.quadraticIrrational

theorem continued_fraction_closed_from_evidence (c : ContinuedFraction) (e : ContinuedFractionEvidence c) :
    ContinuedFractionClosed c := by
  exact And.intro e.periodValid (And.intro e.preperiodValid e.quadraticIrrationalClosed)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse