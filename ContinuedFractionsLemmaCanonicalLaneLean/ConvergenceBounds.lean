import HautevilleHouse.ContinuedFractionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ConvergenceBoundsPackage where
  lowerBound : ℚ
  upperBound : ℚ
  errorTerm : ℚ
  limitExists : Prop
  limitInInterval : Prop

structure ConvergenceBoundsEvidence (C : ConvergenceBoundsPackage) where
  limitExistsClosed : C.limitExists
  limitInIntervalClosed : C.limitInInterval

def ConvergenceBoundsClosed (C : ConvergenceBoundsPackage) : Prop :=
  C.limitExists ∧ C.limitInInterval

theorem convergence_bounds_closed_from_evidence (C : ConvergenceBoundsPackage) (E : ConvergenceBoundsEvidence C) :
    ConvergenceBoundsClosed C := by
  exact And.intro E.limitExistsClosed E.limitInIntervalClosed

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
