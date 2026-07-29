import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure QuadraticSurdStructure (α : Type) [LinearOrderedField α] where
  coefficients : ℕ → ℕ
  period : ℕ
  discriminant : α
  periodicRecurrence : Prop
  purelyPeriodic : Prop
  periodicRecurrenceTerm : periodicRecurrence
  purelyPeriodicTerm : purelyPeriodic

def QuadraticSurdStructureClosed {α : Type} [LinearOrderedField α] (Q : QuadraticSurdStructure α) : Prop :=
  Q.periodicRecurrence ∧ Q.purelyPeriodic

theorem quadratic_surd_structure_closed_from_evidence {α : Type} [LinearOrderedField α]
    (Q : QuadraticSurdStructure α) (h1 : Q.periodicRecurrence) (h2 : Q.purelyPeriodic) : QuadraticSurdStructureClosed Q :=
  And.intro h1 h2

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse