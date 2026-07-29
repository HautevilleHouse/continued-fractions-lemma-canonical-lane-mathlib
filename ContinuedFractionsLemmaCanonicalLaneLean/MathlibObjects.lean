import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ContinuedFractionsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuedFractionsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuedFractionsAdmittedObject where
  space : ContinuedFractionsSpace
  continuedFractionExpansion : Prop
  convergentLimit : ℝ
  rationalApproximation : Prop
  approximationQuality : ℝ
  conclusion : rationalApproximation ∧ (approximationQuality ≤ 1 / (convergentLimit * convergentLimit))

structure ContinuedFractionsEndgameState where
  object : ContinuedFractionsAdmittedObject

def ContinuedFractionsWitnessClosed (O : ContinuedFractionsAdmittedObject) : Prop :=
  O.rationalApproximation ∧ (O.approximationQuality ≤ 1 / (O.convergentLimit * O.convergentLimit))

end ContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse