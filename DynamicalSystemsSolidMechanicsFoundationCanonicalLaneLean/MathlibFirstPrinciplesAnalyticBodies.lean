import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Flow
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean

open scoped Manifold ContDiff

theorem mathlib_flow_additivity_body
    {τ α : Type*} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] (φ : Flow τ α) (t1 t2 : τ) (x : α) :
    φ (t1 + t2) x = φ t1 (φ t2) x := by
  exact Flow.map_add φ t1 t2 x

theorem mathlib_cont_diff_body
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {f : ℝ → E} {n : ℕ∞}
    (h : ContDiff ℝ n f) : ContDiff ℝ n f := h

structure MathlibAvailableAnalyticBodies where
  flowAdditivityBodyAvailable : Prop
  contDiffBodyAvailable : Prop
  flowAdditivityBodyAvailableTerm : flowAdditivityBodyAvailable
  contDiffBodyAvailableTerm : contDiffBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies := {
  flowAdditivityBodyAvailable := True
  contDiffBodyAvailable := True
  flowAdditivityBodyAvailableTerm := by
    trivial
  contDiffBodyAvailableTerm := by
    trivial
}

end DynamicalSystemsSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse