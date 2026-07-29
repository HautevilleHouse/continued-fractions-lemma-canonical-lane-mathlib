import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ConvergentPackage where
  approximantSequence : Type u
  indexSet : Type v
  convergentValue : Type w
  convergenceProperty : Prop
  bestApproximation : Prop
  interpolatingProperty : Prop

structure ConvergentEvidence (C : ConvergentPackage) where
  convergencePropertyClosed : C.convergenceProperty
  bestApproximationClosed : C.bestApproximation
  interpolatingPropertyClosed : C.interpolatingProperty

def ConvergentClosed (C : ConvergentPackage) : Prop :=
  C.convergenceProperty ∧ C.bestApproximation ∧ C.interpolatingProperty

theorem convergent_closed_from_evidence (C : ConvergentPackage) (E : ConvergentEvidence C) : ConvergentClosed C := by
  exact And.intro E.convergencePropertyClosed
    (And.intro E.bestApproximationClosed E.interpolatingPropertyClosed)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
