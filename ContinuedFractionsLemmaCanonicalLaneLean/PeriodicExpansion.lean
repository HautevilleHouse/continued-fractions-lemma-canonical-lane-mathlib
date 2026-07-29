import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure PeriodicExpansionPackage where
  sequence : Type u
  partialQuotients : Type v
  periodDetected : Prop
  purelyPeriodic : Prop
  eventuallyPeriodic : Prop
  lagrangeConstant : Prop

structure PeriodicExpansionEvidence (P : PeriodicExpansionPackage) where
  periodDetectedClosed : P.periodDetected
  purelyPeriodicClosed : P.purelyPeriodic
  eventuallyPeriodicClosed : P.eventuallyPeriodic
  lagrangeConstantClosed : P.lagrangeConstant

def PeriodicExpansionClosed (P : PeriodicExpansionPackage) : Prop :=
  P.periodDetected ∧ P.purelyPeriodic ∧ P.eventuallyPeriodic ∧ P.lagrangeConstant

theorem periodic_expansion_closed_from_evidence (P : PeriodicExpansionPackage) (E : PeriodicExpansionEvidence P) : PeriodicExpansionClosed P := by
  exact And.intro E.periodDetectedClosed
    (And.intro E.purelyPeriodicClosed
      (And.intro E.eventuallyPeriodicClosed E.lagrangeConstantClosed))

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
