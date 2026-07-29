import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure LegendreTheoremPackage where
  irrationalHasInfiniteCF : Prop
  irrationalCoefficientsUnique : Prop
  rationalTerminates : Prop
  infiniteCFConverges : Prop
  irrationalHasInfiniteCFTerm : irrationalHasInfiniteCF
  irrationalCoefficientsUniqueTerm : irrationalCoefficientsUnique
  rationalTerminatesTerm : rationalTerminates
  infiniteCFConvergesTerm : infiniteCFConverges

def LegendreTheoremClosed (L : LegendreTheoremPackage) : Prop :=
  L.irrationalHasInfiniteCF ∧ L.irrationalCoefficientsUnique ∧ L.rationalTerminates ∧ L.infiniteCFConverges

theorem legendre_theorem_closed_from_evidence
    (L : LegendreTheoremPackage) (h1 : L.irrationalHasInfiniteCF) (h2 : L.irrationalCoefficientsUnique)
    (h3 : L.rationalTerminates) (h4 : L.infiniteCFConverges) : LegendreTheoremClosed L :=
  And.intro h1 (And.intro h2 (And.intro h3 h4))

end HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean end