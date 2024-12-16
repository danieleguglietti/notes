Our main goal in this course is to understand how to work with $n$-th dimensional spaces.
Since the real space is three dimensional, the decision to study $n$-th dimensional spaces might sound a bit off. The fact is that some times (n.e. most of the cases) having just three scalars is not enough to represent our problem and this is obvious from physics.
Imagine a material point moving in the space. To study its trajectory we need at least its position and its velocity, which are both three scalars, for a total of six scalars.
Now if we take a bunch of material points, let's say $m$ material points, then to study its trajectory we need $6\cdot m$ scalars.
So if we can achive a more general theory we can can apply it to every scenario we have to study, indifferently from the number of dimension we need.
To do so we need to introduce a new kind of set which generalize the definition of Euclidean vectors as we defined in [[Vectors]].

>[!definition|blue-hint]
>Let $(\mathbb K, +, \cdot)$ be a field. Then the set $V \subseteq \mathbb K$ is a *vectorial space* if the operation satisfies the following axioms:
>*i*. $(V, +)$ must be a *commutative group*;
>*ii*. *distributive axiom of the product* - $\lambda (\mathbf v + \mathbf w) = \lambda \, \mathbf v + \lambda \, \mathbf w \quad \forall \mathbf v, \mathbf w \in V,\forall \lambda \in \mathbb K$
>*iii*. *associative axiom of the product* - $(\lambda\mu)\mathbf v = \lambda(\mu\mathbf v) \quad \forall \mathbf v \in V,\forall \lambda,\mu \in \mathbb K$
>*iv*. *null and identity element for the product* - $1\mathbf v = \mathbf v \quad 0\mathbf v = \mathbf 0 \quad \forall \mathbf v \in \mathbb K$

> [!remark|cyan-note]
>The axioms *i*-*iv* are called *vector axioms*. So for short we say that $(V, +, \cdot)$ is a vector space if it satisfies the vector axioms.

>[!example]
>We already saw (and proved) that $\mathcal V_o^n$ with the operation defined as in [[Vectors]] is a vector space.

>[!example]
>The set containing every matrices $\mathbb K^{m \times n}$ is a vector space. In fact we can define a sum as follows.
>Let $A,B\in\mathbb K^{m \times n}$ be matrices $m \times n$. Then the sum of the two matrices $A+B$ is a third matrix $C \in\mathbb K^{m \times n}$ whose entries are the sum of the entries in the same position of the two matrices.
>$$ C = (c_{ij}) = (a_{ij} + b_{ij}) = A + B \qquad \forall i=1, \dots m \,\forall j = 1, \dots n$$
>Now we need the product, which is simple to define too. Let $A\in\mathbb K^{m \times n}$ be matrices $m \times n$ and let $\lambda \in \mathbb K$ be a scalar. Then the product of $A$ with the scalar $\lambda A$ is a the matrix $B \in\mathbb K^{m \times n}$ whose entries are the product of the entries in the same position of the matrix with $\lambda$.
>$$ B = (b_{ij}) = (\lambda a_{ij}) = \lambda A \qquad \forall i=1, \dots m \,\forall j = 1, \dots n$$
>So these two operations we have defined satisfies the vector axioms (no proof) and so $\mathbb K^{m \times n}$ is a vector space.

>[!definition|blue-hint]
>An element in a vector space is called *vector*.

