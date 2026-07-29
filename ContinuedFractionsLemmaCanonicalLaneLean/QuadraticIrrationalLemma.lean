import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure QuadraticIrrationalPackage where
  irrationalNumber : Type u
  minimalPolynomial : Type v
  discriminant : Type w
  periodicExpansionAssociated : Prop
  galoisConjugatePair : Prop
  rationalApproximationRate : Prop

structure QuadraticIrrationalEvidence (Q : QuadraticIrrationalPackage) where
  periodicExpansionAssociatedClosed : Q.periodicExpansionAssociated
  galoisConjugatePairClosed : Q.galoisConjugatePair
  rationalApproximationRateClosed : Q.rationalApproximationRate

def QuadraticIrrationalClosed (Q : QuadraticIrrationalPackage) : Prop :=
  Q.periodicExpansionAssociated ∧ Q.galoisConjugatePair ∧ Q.rationalApproximationRate

theorem quadratic_irrational_closed_from_evidence (Q : QuadraticIrrationalPackage) (E : QuadraticIrrationalEvidence Q) : QuadraticIrrationalClosed Q := by
  exact And.intro E.periodicExpansionAssociatedClosed
    (And.intro E.galoisConjugatePairClosed E.rationalApproximationRateClosed)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
