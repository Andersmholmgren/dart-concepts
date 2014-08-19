part of concepts;

abstract class Monoid<Self> extends SemiGroup<Self> {

  /**
   * Const constructor for const initialization.
   */
  const Monoid();

  /**
   * A SemiGroup with identity.
   *
   * A Monoid is a SemiGroup that also implements an identity value.
   *
   * Laws
   *   1. Right identity: `m.merge(m.empty())` is equivalent to `m`
   *   2. Left identity: `m.empty().merge(m)` is equivalent to `m`
   *   3. Must also implement the SemiGroup laws (associativity).
   */
  Self empty();

}