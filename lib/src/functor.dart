part of concepts;

abstract class Functor<SelfContext> {

  /**
   * Const constructor for const initialization.
   */
  const Functor();

  /**
   * A structure preserving mapping between algebraic structures.
   *
   * A functor is a structure which wraps a value and comes with a structure
   * preserving operations which allows you to transition the inner value to a new
   * state. This structure preserving operation is known as `map`.
   *
   * Laws
   *   1. Identity: `u.map((a) => a)` is equivalent to `u`
   *   2. Composition: `u.map((x) => f(g(x)))` is equivalent to `u.map(g).map(f)`
   */
  SelfContext map(dynamic mapper(dynamic n));

}