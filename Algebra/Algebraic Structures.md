**Algebraic structures** are part of the axiomatic mathematics and are the start for an intercourse in the studies in algebra.

> **DEFINITION.** An *algebraic structure* is an nonempty *set* $A$ paired with a collaction of *operations* (mostly a *binary* operation) and a finite set of axioms that the operations must follows.

> **DEFINITION.** An *binary operation* $\cdot$ on a set $A$ is a mapping from elements of the Cartesian product $A \times A$ to $A$.
> $$
\cdot : A \times A \to A
$$
>


The most basic algebraic structure is the **group**.

> **DEFINITION.** Given a nonempty set $G$ and an operation $\cdot$, a *group* is the pair $(G, \cdot)$ if the operation follows the following axioms:
> i. *associative* - $g_1 \cdot (g_2 \cdot g_3) = (g_1 \cdot g_2) \cdot g_3 \,\,\, \forall g_1,g_2,g_3 \in G$ 
> ii. *existance of identity element* - $\exists !\, e \in G : e \cdot g = g \,\,\, \forall g \in G$
> iii. *existance of inverse element* - $\forall g \in G \, \exists ! \, g' \in G : g \cdot g' = e$

If the axiom *(iii)* is true, the inverse of an element $g \in G$ is commonly denoted as $-g$.

> **EXAMPLE.** The pair $(\mathbb{N}, +)$ is not a group since the inverse of a natural number $-n$ is not part of the set of natural numbers.

> **PROPOSITION.** If the operation of a group follows the commutative axiom
> $$g_1 + g_2 = g_2 + g_1 \,\,\, \forall g_1,g_2 \in G$$
> then the group is called a *commutative* group and the operation is commonly denoted as $+$. 
> 