import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ApproximationTheoremPackage (A : AdmissibleClass) where
  bestApproximation : Prop
  errorBound : ℝ
  convergentsYieldBest : Prop
  sharpnessBound : Prop
  application : A.endpointSatisfied ∨ A.remainderRecorded

structure ApproximationTheoremEvidence {A : AdmissibleClass}
    (P : ApproximationTheoremPackage A) where
  bestApproximationClosed : P.bestApproximation
  convergentsYieldBestClosed : P.convergentsYieldBest
  sharpnessBoundClosed : P.sharpnessBound
  applicationClosed : P.application

def ApproximationTheoremClosed {A : AdmissibleClass}
    (P : ApproximationTheoremPackage A) : Prop :=
  P.bestApproximation ∧ P.convergentsYieldBest ∧ P.sharpnessBound ∧ P.application

theorem approximation_theorem_closed_from_evidence
    {A : AdmissibleClass} (P : ApproximationTheoremPackage A)
    (Ev : ApproximationTheoremEvidence P) :
    ApproximationTheoremClosed P := by
  exact And.intro Ev.bestApproximationClosed
    (And.intro Ev.convergentsYieldBestClosed
      (And.intro Ev.sharpnessBoundClosed Ev.applicationClosed))

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse