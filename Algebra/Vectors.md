**Vectors** are one of the most important mathematical objects. In this course they'll be the *main character*.

A vector is a *geometrical* object, in fact to give a definition of vector will start talking about the Euclidean spaces and segments.
Let $\mathcal{A}^1$, $\mathcal{A}^2$ and $\mathcal{A}^3$ be, respectively, the set of the point in the Euclidean line, plane and space.
Then if we take two point in one of these spaces $O,A\in\mathcal{A}^n$ the we can identify the *segment* $\overline{OA}$ which starts at the point $O$ and goes to the point $A$.
This segment has two important information: a *length*, which identifies the distance between the points; and the *direction*, which is the line where the segment lies on.
If instead we consider the *oriented* segment from $O$ to $A$, $\overrightarrow{\rm OA}$, then we get another important information: the orientation, which indicates in which way we are moving on from $O$ to $A$.

> [!definition|blue-hint]
> Let $O,A \in \mathcal{A}^n$ be two points in the Euclidean space. A *vector* applied in $O$ to $A$ is the oriented segment $\overrightarrow{OA}$.

Now we can define a special set containing all the vectors applied in a given point.

> [!definition|blue-hint]
> Let $O \in \mathcal{A}^n$ be a point in the Euclidean space. The set $\mathcal{V}_O^n := \{\overrightarrow{OP} \, \, \forall P \in \mathcal{A}^n\}$ is the set containing every vector in the Euclidean space applied in $O$.

But **why** vectors? 

Not every quantities can be represented with just a scalar value, but some need other information like the *direction*. 
In fact one of the biggest field of use case of vectors is *Physics*. 
For instance let's consider forces. If you want to analyze the motion of a mass in a free fall pulled from the gravitational force, then the how much the gravity pulls the mass is not enough because you can eventually evaluate just *how far* the mass moved from the starting point (ed. the displacement). If you want to know even *where* it moves in the space (which probably is the case) you need to know where the gravity is pulling the mass to and so the force direction.

>[!definition|blue-hint]
>Let $O \in \mathcal{A}^n$ be a point in the Euclidean space. Then the mapping
>$$ \begin{alignat*}{2} \Phi_o : \mathcal{A}^n & \longrightarrow  \mathcal{V}_o^n \\ P & \longmapsto \overrightarrow{OP} = \Phi_o(P) \end{alignat*} $$
>is a bijective function which maps every point $P \in \mathcal{A}^n$ to a vector applied in $O$.

> [!definition|blue-hint]
> Let $O \in \mathcal{A}^n$ be points in the Euclidean space. The *null vector* applied in $O$ is the zero length oriented segment starting from $O$
> $$ \mathbf{0} = \Phi_o(O) = \overrightarrow{OO} $$

Now that we have clear the definition of an applied vector and its set we can work on these one.
From now on we'll refer to *applied* vectors by just *vectors*.
Let's start to find some operation for vectors. 

> [!definition|blue-hint]
> Let $O,A,B \in \mathcal{A}^n$ be a point in the Euclidean space. The sum of the vectors $\overrightarrow{OA} = \Phi_o(A)$ and $\overrightarrow{OB} = \Phi_o(B)$ is a another vector $\overrightarrow{OC} = \Phi_o(C) = \overrightarrow{OA} + \overrightarrow{OB}$ where the point $C \in \mathcal{A}^n$ is the fourth vertex of the parallelogram drawn by the points $O,A,B$.

This sum is named *parallelogram sum of vectors* and is one of the way to define a sum between vectors. Another way is the tail-point method.

>[!proposition|orange-important] Proposition. (*3.1*) 
>Let $O \in \mathcal{A}^n$ be a point in the Euclidean space. The pair $(\mathcal{V_o^n}, +)$ is a commutative group.

>[!proof|gray-info]
>To prove that $(\mathcal{V_o^n}, +)$ is a commutative group we need to prove that the sum satisfies the axioms of a group operation defined in [[Algebraic Structures]].
>The *identity element* for the sum is the null vector. In fact by definition the null vector is a null length segment (and so a point) so we have
>$$ \begin{flalign} && \overrightarrow{OA} + \overrightarrow{OO} = \overrightarrow{OA} = \overrightarrow{OO} + \overrightarrow{OA} \quad \forall \, \overrightarrow{OA} \in \mathcal{V}_o^n && \\ && && \\ && && \square \end{flalign} $$
>About the *inverse element* we can define the inverse of the vector $\overrightarrow{OA}$ is the vector $-\overrightarrow{OA}=\overrightarrow{OA'}$  where $A'$ is the symmetric point of $A$ with the respect of $O$.
>$$ \begin{flalign} && && \square \end{flalign} $$
>The *commutative property* is quite intuitive. Let $O, A, B \in \mathcal{A}^n$ be three points, we have two cases: the points are non-aligned then they always draw the same parallelogram, whether is the order; if instead they're aligned then it is direct consequence of segments congruence.
>$$ \begin{flalign} && && \square \end{flalign} $$
>Lastly we have to prove the associative property. Let $O, A_1, A_2, A_3 \in \mathcal{A}^n$ be non-aligned points in the Euclidean space, we can identify three vectors $\overrightarrow{OA_1}, \overrightarrow{OA_2}, \overrightarrow{OA_3}$. Now let's define $\overrightarrow{OB_1} = \overrightarrow{OA_1} + \overrightarrow{OA_2}$ and $\overrightarrow{OB_2} = \overrightarrow{OA_2} + \overrightarrow{OA_3}$ we can define a third vector as $\overrightarrow{OC} = \overrightarrow{OB_1} + \overrightarrow{OA_3} = (\overrightarrow{OA_1} + \overrightarrow{OA_2}) + \overrightarrow{OA_3}$.
>In order to prove the property we have to prove that $\overrightarrow{OA_1} + (\overrightarrow{OA_2} + \overrightarrow{OA_3}) = \overrightarrow{OA_1} + \overrightarrow{OB_2}  = \overrightarrow{OC}$.
>Since $OA_3B_1C$ is a parallelogram we have the segments (and so the vectors) $\overline{OA_3} \parallel \overline{CB_1}$ and $\overline{OA_3} \cong \overline{CB_1}$. 
>The same results can be obtained with the parallelogram $OA_2A_3B_2$ having that $\overline{OA_3} \parallel \overline{A_2B_2}$ and $\overline{OA_3} \cong \overline{A_2B_2}$ which leads us to $\overline{CB_1} \cong \overline{A_2B_2}$.
>Since it's also $\overline{CB_1} \parallel \overline{A_2B_2}$ then we have that $A_2B_1B_2C$ is also a parallelogram hence $\overline{B_2C}$ is both congruent and parallel to $\overline{A_2B_1}$.
>Lastly we have that $OA_1A_2B_1$ is also a parallelogram so $\overline{OA_1}$ is both congruent and parallel to $\overline{A_2B_1}$. Hence $\overline{B_2C} \parallel \overline{A_2B_1} \parallel \overline{OA_1}$ and that $\overline{B_2C} \cong \overline{A_2B_1} \cong \overline{OA_1}$ so $\overline{OA_1}$ is both congruent and parallel to $\overline{B_2C}$ resulting to $OA_1B_2C$ being a parallelogram and that is $\overrightarrow{OC} =  \overrightarrow{OA_1} + \overrightarrow{OB_2}$.
>$$ \begin{flalign} && && \square \end{flalign} $$

Another operation that can be performed on vectors is the **scalar multiplication**, which allows to re-scale a vector.

> [!definition|blue-hint]
>  Let $O, A, B \in \mathcal{A}^n$ be points in the Euclidean space and $\lambda \in \mathbb{R}$ a scalar. The *scalar multiplication* of the vector $\overrightarrow{OA} = \Phi_o(A)$ by the scalar $\lambda$ is the vector $\overrightarrow{OB} = \Phi_o(B) = \lambda \overrightarrow{OA}$ whose direction is the same as the one of $\overrightarrow{OA}$, its length is $\overrightarrow{OA}$'s length scaled by $|\lambda|$ and concordant verse if $\lambda$ is positive, discordant otherwise.

This operation has its own set of properties too.

> [!proposition|orange-important] Proposition. (*3.2*) 
> Let $\lambda,\mu \in \mathbb{R}$ be two scalars and $\overrightarrow{OA}, \overrightarrow{OB} \in \mathcal{V}_o^n$ be two vectors. Then:
> *i*. $\lambda\, (\overrightarrow{OA} + \overrightarrow{OB}) = \lambda\, \overrightarrow{OA} + \lambda \, \overrightarrow{OB}$;
> *ii*. $(\lambda+\mu)\,\overrightarrow{OA} = \lambda\, \overrightarrow{OA} + \mu\, \overrightarrow{OA}$;
> *iii*. $(\lambda\,\mu)\,\overrightarrow{OA} = \lambda\,(\mu\, \overrightarrow{OA}) = \mu\,(\lambda\, \overrightarrow{OA})$;
> *iv*. $1\, \overrightarrow{OA} = \overrightarrow{OA}$;
> *v*. $0\,\overrightarrow{OA} = \mathbf{0}$;

Let $O,I \in \mathcal{A}^2$ be points in the Euclidean plane and so $\overrightarrow{OI} = \Phi_o(I)$ the associated vector.
Now let $r$ be the line where the vector $\overrightarrow{OI}$ lies on, then if we take a point on the line $A \in r$ the vector $\overrightarrow{OA} = \Phi_o(A)$ can be described as the vector $\overrightarrow{OI}$ re-scaled by a fixed valued $t \in \mathbb{R}$ and we say that $\overrightarrow{OA}$ is $t$-proportional to $\overrightarrow{OI}$.
$$
\overrightarrow{OA} = \Phi_o(A) = t\, \Phi_o(I) = t\, \overrightarrow{OI}
$$
Now let's consider the whole plane $\mathcal{A}^2$. Since $r \subset \mathcal{A}^2$ not every vector in $\mathcal{V}_o^2$ lies on $r$. So how do we describe a vector in the plane?

>[!|orange-important] Proposition. (*3.3*)
>Let $O,A_1,A_2,\dots A_n \in \mathcal{A}^n$ be points in the Euclidean space such that the associated vectors to the points $\overrightarrow{OA_1}=\Phi_o(A_1),\,\overrightarrow{OA_2}=\Phi_o(A_2),\dots \,\overrightarrow{OA_n}=\Phi_o(A_n)$ are non proportional.
>Then for each vector $\overrightarrow{OP} \in \mathcal{V}_o^n$ there exist $n$ scalars $x_1,x_2,\dots x_n \in \mathbb{R}$ such that
>$$
>\overrightarrow{OP} = x_1\,\overrightarrow{OA_1} + x_2\,\overrightarrow{OA_2} + \cdots x_n\,\overrightarrow{OA_n}
>$$ 

> [!proof|gray-info]
> Will prove it for $n=2$ but the same goes for $n>2$.
> Let $r,s$ be the line where the vectors $\overrightarrow{OA_1},\,\overrightarrow{OA_2}$ respectively.
> If we draw a line parallel to $s$ it will intersect on $r$ in $P_1$. Similarly drawing a parallel line to $r$ will lead to an intersection point $P_2$ on $s$.
> So now we have that the figure $OP_1P_2P$ is a parallelogram and therefore it must be $\overrightarrow{OP} = \overrightarrow{OP_1} + \overrightarrow{OP_2}$. But since $P_1 \in r$ then $\exists \, x_1 \in \mathbb{R} \, : \overrightarrow{OP_1} = x_1\, \overrightarrow{OA_1}$. 
> Similarly for $P_2$ we have that $\exists \, x_2 \in \mathbb{R} \, : \overrightarrow{OP_2} = x_2\, \overrightarrow{OA_2}$.
> $$ \begin{flalign} && && \square \end{flalign} $$

>[!definition|blue-hint]
>Let $\overrightarrow{OA_1},\, \overrightarrow{OA_2},\dots\, \overrightarrow{OA_n}$ be non proportional vectors.
>The set containing all these vectors $\mathcal{B} := \{\overrightarrow{OA_1},\, \overrightarrow{OA_2},\dots\, \overrightarrow{OA_n}\}$ is called *basis*.

>[!definition|blue-hint]
>Let $\mathcal{B} := \{\overrightarrow{OA_1},\, \overrightarrow{OA_2},\dots\, \overrightarrow{OA_n}\}$ be a basis and let $\overrightarrow{OP} \in \mathcal{V}_o^n$ be a vector such that $$\overrightarrow{OP} = x_1\,\overrightarrow{OA_1} + x_2\,\overrightarrow{OA_2} + \cdots x_n\,\overrightarrow{OA_n}$$ 
>Then the scalars $x_1,x_2,\dots x_n$ are the *coordinates* of the vector $\overrightarrow{OP}$ with respect of the basis $\mathcal{B}$.

>[!|orange-important] Proposition. (*3.4*)
>Let $\mathcal{B} := \{\overrightarrow{OA_1},\, \overrightarrow{OA_2},\dots\, \overrightarrow{OA_n}\}$ be a basis and let $\overrightarrow{OP} \in \mathcal{V}_o^n$ be a vector.
>The coordinates of $\overrightarrow{OP}$ with respect of the basis $\mathcal{B}$ are unique.

> [!proof|gray-info]
> Let $\overrightarrow{OP} \in \mathcal{V}_o^n$ be a vector and let's suppose that $$\exists\, (x_1,\dots x_n) \neq (x_1',\dots x_n') :  x_1\,\overrightarrow{OA_1} + \cdots x_n\,\overrightarrow{OA_n} = \overrightarrow{OP} =  x_1'\,\overrightarrow{OA_1} + \cdots x_n'\,\overrightarrow{OA_n}$$
> Therefore we have that $(x_1\ - x_1')\,\overrightarrow{OA_1} = \mathbf{0},\, \dots (x_n - x_n')\,\overrightarrow{OA_n} = \mathbf{0}$.
> But since the vectors $\overrightarrow{OA_1}, \dots \overrightarrow{OA_n}$ are non-null then it must be $x_1 - x_1' = 0\,,\,\dots x_n - x_n' = 0$ and so it must be $x_1 = x_1'\,,\,\dots x_n = x_n'$.
> $$\begin{flalign} && && \square \end{flalign} $$

>[!definition|blue-hint]
>Let $\mathcal{B} := \{\overrightarrow{OA_1},\, \overrightarrow{OA_2},\dots\, \overrightarrow{OA_n}\}$ be a basis then we can define a mapping
>$$\begin{alignat*}{2} F_\mathcal{B} : \mathcal{V}_o^n & \longrightarrow \mathbb{R}^n \\ \overrightarrow{OP} & \longmapsto \mathbf{x} = &\begin{pmatrix} x_1 \\ \vdots \\ x_n \\ \end{pmatrix} \end{alignat*}$$
>which yields the coordinates of the vector $\overrightarrow{OP}$ with respect of the basis $\mathcal{B}$.

>[!|orange-important] Proposition. (*3.5*)
>The mapping $F_\mathcal{B}$ is a *bijective function*.

> [!proof|gray-info]
> Let's start by proving the surjectivity of the function.
> Let $x_1, \dots, x_n \in \mathbb{R}$ be real numbers then we have that $$\begin{pmatrix} x_1 \\ \vdots \\ x_n \\ \end{pmatrix} = F_\mathcal{B}(x_1\,\overrightarrow{OA_1} + \cdots x_n\,\overrightarrow{OA_n}) \in im \{F_\mathcal{B}\}$$
> $$\begin{flalign} && && \square \end{flalign} $$
> The inietivity is intuitive. Let $\overrightarrow{OA},\overrightarrow{OB} \in \mathcal{V}_o^n$ be two vectors such that they have common coordinates in $\mathcal{B}$
> $$F_\mathcal{B}(\overrightarrow{OA}) = \begin{pmatrix} x_1 \\ \vdots \\ x_n \\ \end{pmatrix} = F_\mathcal{B}(\overrightarrow{OB})$$
> Since the coordinates of a vectors are unique due to *Proposition (3.4)* the it must be
> $$\overrightarrow{OA} = x_1\,\overrightarrow{OA_1} + \cdots x_n\,\overrightarrow{OA_n} = \overrightarrow{OB}$$
> $$\begin{flalign} && && \square \end{flalign} $$

What we are trying to say is that there are as many vectors in $\mathcal{V}_o^n$ as are the points in $\mathbb{R}^n$.

>[!|orange-important] Proposition. (*3.6*)
>Let $\mathcal{B}$ be a basis and let $\overrightarrow{OP},\overrightarrow{OQ}\,\in\mathcal{V}_o^n$ be vectors. Then $F_\mathcal{B}$ satisfies the followings:
>*i*. $F_\mathcal{B}(\lambda\,\overrightarrow{OP}) = \lambda F_\mathcal{B}(\overrightarrow{OP})\quad \forall \lambda \in \mathbb{R}$
>*ii*. $F_\mathcal{B}(\overrightarrow{OP}+\overrightarrow{OQ}) = F_\mathcal{B}(\overrightarrow{OP}) + F_\mathcal{B}(\overrightarrow{OQ})$

> [!proof|gray-info]
> Let's start by proving the property *i*.
> Let $\mathbf{x} = F_\mathcal{B}(\overrightarrow{OP})$ be the coordinates of  $\overrightarrow{OP}$. Then we can write the vector $\overrightarrow{OP}$ by its coordinates as $\overrightarrow{OP} = x_1\,\overrightarrow{OA}_1+\cdots x_n\,\overrightarrow{OA}_n$.
> Now let's consider the scaled vector $\lambda\,\overrightarrow{OP}$ we have that $\lambda\,\overrightarrow{OP} = \lambda\,x_1\,\overrightarrow{OA}_1+\cdots \lambda\,x_n\,\overrightarrow{OA}_n$ leading us to $$ F_\mathcal{B}(\lambda\,\overrightarrow{OP}) = \begin{pmatrix} \lambda\,x_1 \\ \vdots \\ \lambda\,x_n \\ \end{pmatrix} = \lambda\mathbf{x} = \lambda F_\mathcal{B}(\overrightarrow{OP}) $$
> $$\begin{flalign} && && \square \end{flalign} $$
> To prove the property *ii* we do the same steps as the previous.
> Let $\mathbf{x} = F_\mathcal{B}(\overrightarrow{OP})$ and $\mathbf{y} = F_\mathcal{B}(\overrightarrow{OQ})$ be the coordinates of  $\overrightarrow{OP},\overrightarrow{OQ}$ respectively.
> Then we can write the vector $\overrightarrow{OP}$ by its coordinates as $\overrightarrow{OP} = x_1\,\overrightarrow{OA}_1+\cdots x_n\,\overrightarrow{OA}_n$. The same goes for $\overrightarrow{OQ}$.
>Now if we consider the sum vector we have $\overrightarrow{OP} + \overrightarrow{OQ} = (x_1+y_1)\,\overrightarrow{OA}_1+\cdots (x_n+y_n)\,\overrightarrow{OA}_n$ which leads to $$ F_\mathcal{B}(\overrightarrow{OP}+\overrightarrow{OQ}) = \begin{pmatrix} x_1+y_1 \\ \vdots \\ x_n+y_n \\ \end{pmatrix} = \mathbf{x}+\mathbf{y} = F_\mathcal{B}(\overrightarrow{OP}) + F_\mathcal{B}(\overrightarrow{OQ})$$
>$$\begin{flalign} && && \square \end{flalign} $$

Till to now we talked about applied vectors on a fixed point. Now if we take two parallel, congruent and has same direction, even though if they're applied in different point, they have something in *common*. Actually they represent the *same vector* except their origins.

>[!definition|blue-hint]
>We denote with $\mathcal{\overline V}^n$ the set of applied vectors whether is their application point.

Since now we are not caring of the vectors application points we can find a criteria to say that two applied vectors are kinda the "same".

>[!definition|blue-hint]
>Let $\overrightarrow{OA},\overrightarrow{O'A'}\in\mathcal{\overline V}^n$ be applied vectors. We say that they are *equivalent* $\overrightarrow{OA}\sim\overrightarrow{O'A'}$ if they are parallel, congruent and has the same direction.

This equivalence over applied vectors is really important because we can now define **free vectors**.

>[!definition|blue-hint]
>A *free* vector $\mathbf{v} = [\overrightarrow{OA}]$ is the equivalence class of $\sim$ over the set $\mathcal{\overline V}^n$.
>The set of all the free vectors is the quotient set $\mathcal{V}^n := \mathcal{\overline V}^n/\sim$.

>[!|orange-important] Proposition. (*3.7*)
>The propositions (*3.1*)-(*3.6*) are still valid for free vectors.

>[!definition|blue-hint]
>A *unit* vector $\mathbf{\hat u} \in \mathcal{V}^n$ is a free vector whose length is unitary.

> [!remark|cyan-note]
> A set of non proportional free vectors can still define a basis.

That's all about vectors.