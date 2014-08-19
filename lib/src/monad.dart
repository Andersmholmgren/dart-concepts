part of concepts;

abstract class Monad<SelfContext> extends Applicative<SelfContext> {

  /**
   * Const constructor for const initialization.
   */
  const Monad();

  /**
   * "A monad is just a monoid in the category of endofunctors"
   *
   * A monad is an applicative functor that lets you transition a value to a new
   * context within the same type hierarchy.
   *
   * Laws
   *   1. Left identity: `const M(a).expand(f)` is equivalent to `f(a)`
   *   2. Right identity: `m.expand((n) => const M(n))` is equivalent to `m`
   *   3. Must also implement the Applicative laws.
   */
  SelfContext expand(SelfContext expander(dynamic n));

}