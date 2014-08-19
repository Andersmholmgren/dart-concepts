part of concepts;

abstract class SemiGroup<Self> {

  /**
   * Const constructor for const initialization.
   */
  const SemiGroup();

  /**
   * An associative magma.
   *
   * SemiGroup represents data structures which can be merged associatively. Some
   * people get an intuition from this by saying that it's two structures which
   * can be summed.
   *
   * Laws
   *   1. Associativity: `a.merge(b).merge(c)` is equivalent to `a.merge(b.merge(c))`
   */
  Self merge(Self other);

}