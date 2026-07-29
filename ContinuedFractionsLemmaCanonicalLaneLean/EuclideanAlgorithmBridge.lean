import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

structure EuclideanAlgorithmBridgePackage where
  inputPair : Type u
  outputSequence : Type v
  terminationProof : Prop
  gcdRecovered : Prop
  continuedFractionDerived : Prop

structure EuclideanAlgorithmBridgeEvidence (E : EuclideanAlgorithmBridgePackage) where
  terminationProofClosed : E.terminationProof
  gcdRecoveredClosed : E.gcdRecovered
  continuedFractionDerivedClosed : E.continuedFractionDerived

def EuclideanAlgorithmBridgeClosed (E : EuclideanAlgorithmBridgePackage) : Prop :=
  E.terminationProof ∧ E.gcdRecovered ∧ E.continuedFractionDerived

theorem euclidean_algorithm_bridge_closed_from_evidence (E : EuclideanAlgorithmBridgePackage) (Ev : EuclideanAlgorithmBridgeEvidence E) : EuclideanAlgorithmBridgeClosed E := by
  exact And.intro Ev.terminationProofClosed
    (And.intro Ev.gcdRecoveredClosed Ev.continuedFractionDerivedClosed)

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse
