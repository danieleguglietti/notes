**Algebraic structures** are part of the axiomatic mathematics and are the start for an intercourse in the studies in algebra.

> **DEFINITION.** An *algebraic structure* is an nonempty *set* $A$ paired with a collection of *operations* (mostly a *binary* operation) and a finite set of axioms that the operations must follows.

> **DEFINITION.** An *binary operation* $\cdot$ on a set $A$ is a mapping from elements of the Cartesian product $A \times A$ to $A$.
> $$ \cdot : A \times A \to A $$

The most basic algebraic structure is the **group**.

> **DEFINITION.** Given a nonempty set $G$ and an operation $\cdot$, a *group* is the pair $(G, \cdot)$ if the operation follows the following axioms:
> i. *associative* - $g_1 \cdot (g_2 \cdot g_3) = (g_1 \cdot g_2) \cdot g_3 \,\,\, \forall g_1,g_2,g_3 \in G$ 
> ii. *existence of identity element* - $\exists !\, e \in G : e \cdot g = g \,\,\, \forall g \in G$
> iii. *existence of inverse element* - $\forall g \in G \, \exists ! \, g' \in G : g \cdot g' = e$

If the axiom *(iii)* is true, the inverse of an element $g \in G$ is commonly denoted as $g^{-1}$.

> **EXAMPLE.** The pair $(\mathbb{N}, +)$, with $+$ being the addition, is not a group since the inverse of a natural number $-n$ is not part of the set of natural numbers.

> **EXAMPLE.** The pair $(\mathbb{Z}, +)$, with $+$ being the addition, is a group since the sum follows all the three axioms.

Another important property for a group is the commutative property which allows to define a more specific type of group.

> **PROPOSITION.** If the operation of a group follows the commutative axiom
> $$g_1 \cdot g_2 = g_2 \cdot g_1 \,\,\, \forall g_1,g_2 \in G$$
> then the group is called a *commutative* group and the operation is commonly denoted as $+$ and it's called *sum*. 
> In this case the identity element is denoted as $0$ and the inverse element is denoted as $-g$.

> **EXAMPLE.** The pair $(\mathbb{Z}, +)$, with $+$ being the addition, is a commutative group since the addition in follows the commutative axiom.

Another important structure is the *ring*.

> **DEFINITION.** Let $R$ be a nonempty set and $(+, \, \cdot)$ be two operations with the sum being associative and commutative so that the pair $(R, +)$ is a *commutative group*. 
> Then the tuple $(R, +,\, \cdot)$ is a *ring* if:
> ii. The operation $\cdot$ must follow the *associative axiom*;
> iii. The operation $\cdot$ must be distributive with respect of the sum $$r_1 \cdot (r_2 + r_3) = r_1 \cdot r_2 + r_1 \cdot r_3 \,\,\, \forall r_1,r_2,r_3 \in R$$

> **PROPOSITION.** Let $(R, +, \, \cdot)$ be a ring. If $R$ contains the identity element then the ring is called *unary ring* and the identity element is commonly denoted as $1$.

> **PROPOSITION.** Let $(A, +, \, \cdot)$ be a ring. If the operation $\cdot$ follows the commutative axiom then the ring is called *commutative* and the operation is called *product*.

> **EXAMPLE.** The tuple $(\mathbb{Z}, +, \, \cdot)$, with $+$ being the addition and $\cdot$ being the product, is an unary commutative ring.

Lastly we have the *field*. Fields are the structures we'll see mostly in this course since most number sets like the rationals, reals or complex, are fields.
There are other structures (like lattice or algebra) but for some we need other specific operations to be defined, while others are not of our interest.

> **DEFINITION.** Let $K$ be a nonempty set and $(+, \, \cdot)$ be two commutative associative operations so that $(K, +, \, \cdot)$ is an unary commutative ring. Then the tuple $(K, +, \, \cdot)$ is a *field* if and only if $K$ contains the inverse element of the product.
> In this case the inverse element of the product is commonly denoted as $\dfrac{1}{k} \,\,\, \forall k \in K$.

> **EXAMPLE.** The tuple $(\mathbb{Q}, +, \, \cdot)$, with $+$ being the addition and $\cdot$ being the product, is a field.

> **EXAMPLE.** The tuple $(\mathbb{R}, +, \, \cdot)$, with $+$ being the addition and $\cdot$ being the product, is a field.