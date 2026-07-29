import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure PeriodicQuadraticIrrational where
  alpha : ℝ
  continuedFraction : ContinuedFraction
  galoisConjugate : ℝ
  periodicCycle : Prop

structure PeriodicQuadraticIrrationalEvidence (p : PeriodicQuadraticIrrational) where
  alphaQuadratic : ∃ a b c : ℤ, a*p.alpha^2 + b*p.alpha + c = 0
  galoisConjugateDefined : p.galoisConjugate ∈ ℚ(√p.continuedFraction.a 0?)
  periodicCycleClosed : p.periodicCycle

def PeriodicQuadraticIrrationalClosed (p : PeriodicQuadraticIrrational) : Prop :=
  (∃ a b c : ℤ, a*p.alpha^2 + b*p.alpha + c = 0) ∧ p.periodicCycle

theorem periodic_quadratic_irrational_closed_from_evidence (p : PeriodicQuadraticIrrational) (e : PeriodicQuadraticIrrationalEvidence p) :
    PeriodicQuadraticIrrationalClosed p := by
  exact And.intro e.alphaQuadratic e.periodicCycleClosed

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse