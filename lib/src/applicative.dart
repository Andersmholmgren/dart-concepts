part of concepts;

abstract class Applicative<SelfContext> extends Functor<SelfContext> {

  /**
   * Const constructor for const initialization.
   */
  const Applicative();

  /**
   * Applicative lets you apply a n-ary function to n values in a context.
   *
   * Applicative is a Functor lets you apply a function that is contained in a
   * context itself to values that are also in the context.
   *
   * Laws
   *   1. Identity: `const A((a) => a).ap(v)` is equivalent to `v`
   *   2. Homomorphism: `const A(f).ap(const A(x))` is equivalent to `const A(f(x))`
   *   3. Interchange: `u.ap(const A(y))` is equivalent to `const A((f) => f(y)).ap(u)`
   *   4. Must also implement the Functor laws.
   */
  SelfContext ap(SelfContext other);

}