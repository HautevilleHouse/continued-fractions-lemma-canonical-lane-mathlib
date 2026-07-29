import HautevilleHouse.ContinuedFractionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFractionExpansionPackage where
  partialQuotients : Type u
  convergents : Type v
  infiniteTail : Prop
  periodicAfterSomeIndex : Prop
  quadraticIrrational : Prop

structure ContinuedFractionExpansionEvidence (P : ContinuedFractionExpansionPackage) where
  infiniteTailClosed : P.infiniteTail
  periodicAfterSomeIndexClosed : P.periodicAfterSomeIndex
  quadraticIrrationalClosed : P.quadraticIrrational

def ContinuedFractionExpansionClosed (P : ContinuedFractionExpansionPackage) : Prop :=
  P.infiniteTail ∧ P.periodicAfterSomeIndex ∧ P.quadraticIrrational

theorem continued_fraction_expansion_closed_from_evidence (P : ContinuedFractionExpansionPackage) (E : ContinuedFractionExpansionEvidence P) :
    ContinuedFractionExpansionClosed P := by
  exact And.intro E.infiniteTailClosed (And.intro E.periodicAfterSomeIndexClosed E.quadraticIrrationalClosed)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
