# Concepts

Concepts is a partial port of Haskell's type class hierarchy to Dart. This
library contains interfaces only with no implementations. This allows us to
leverage Dart's type checker in conjunction with Dart's package manager to
create executable, versioned and linkable specifications which double as
layers of interoperation via polymorphism.

Like the algebraic structures in the haskell type class hierarchy, each
given implementation must satisfy the interface as well as satisfy the
laws associated to that interface.

## Interfaces

### SemiGroup

SemiGroup represents data structures which can be merged associatively. Some
people get an intuition from this by saying that it's two structures which
can be summed.

#### Laws

  1. Associativity: `a.merge(b).merge(c)` is equivalent to `a.merge(b.merge(c))`

### Monoid

A Monoid is a SemiGroup that also implements an identity value.

#### Laws

  1. Right identity: `m.merge(m.empty())` is equivalent to `m`
  2. Left identity: `m.empty().merge(m)` is equivalent to `m`
  3. Must also implement the SemiGroup laws (associativity).

### Functor

A functor is a structure which wraps a value and comes with a structure
preserving operations which allows you to transition the inner value to a new
state. This structure preserving operation is known as `map`.

#### Laws

  1. Identity: `u.map((a) => a)` is equivalent to `u`
  2. Composition: `u.map((x) => f(g(x)))` is equivalent to `u.map(g).map(f)`

### Applicative

Applicative is a Functor lets you apply a function that is contained in a
context itself to values that are also in the context.

#### Laws

  1. Identity: `const A((a) => a).ap(v)` is equivalent to `v`
  2. Homomorphism: `const A(f).ap(const A(x))` is equivalent to `const A(f(x))`
  3. Interchange: `u.ap(const A(y))` is equivalent to `const A((f) => f(y)).ap(u)`
  4. Must also implement the Functor laws.

### Monad

A monad is an applicative functor that lets you transition a value to a new
context within the same type hierarchy.

#### Laws

  1. Left identity: `const M(a).expand(f)` is equivalent to `f(a)`
  2. Right identity: `m.expand((n) => const M(n))` is equivalent to `m`
  3. Must also implement the Applicative laws.
