import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

def ConstrainedContinuedFractionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continued_fractions_endgame (A : AdmissibleClass) :
    ConstrainedContinuedFractionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
