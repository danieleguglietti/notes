Up till the 17th century mathematicians could relay only on real numbers, this leading to a major problem: finding roots for quadratic equations of the form $x^2 + 1 = 0$.
The problem is that you have to calculate the square root of a negative number, which is not defined over negative reals.
To find a solution to this problem a new numeric set has been defined such that, with specific operation, on its field the square root of negative reals could be performed.
This is the *complex numbers* set.

> [!definition|blue-hint]
> The numeric set of *complex numbers*, denoted as $\mathbb{C}$, is the Cartesian product of the real numbers set.
> $$\mathbb{C} := \mathbb{R} \times \mathbb{R} = \{\,(x, y) \in \mathbb{R}^2 \,\}$$

> [!remark|cyan-note]
> The set defined as above is a proper super set of real numbers. $$ \mathbb{R} \subset \mathbb{C} $$

The numeric set itself is not of much interest. To make things more interesting we have to define a new sum and a new product.

> [!definition|blue-hint]
> Let $s = (x, y)$ and $z = (a, b)$ complex numbers. We define their sum as
> $$ s + z = (x, y) + (a, b) = (x + a, \, y + b) $$

Paired with the sum defined as above, the complex numbers set is not just a set, but becomes a commutative group, leading to a possibility to find a product such that the set can become a field.

> [!proposition|purple-important]
> The pair $(\mathbb{C}, +)$ is a *commutative group*.

> [!proof|gray-info]
> To prove the statement above we have to verify the properties of a commutative group defined in [[Algebraic Structures]]. 
> The associative and commutative properties are immediate as inherited from reals.
> We have now to find the identity element and the inverse element.
> The identity element is the pair $(0, \, 0)$ since $$(x,\,y) + (0,\,0) = (x + 0,\, y + 0) = (x,\,y)$$ The inverse element of a complex number $(x,\,y)$ is the pair $(-x,\,-y)$. In fact we have $$ \begin{flalign} && (x,\,y) + (-x,\,-y) = (x - x,\, y - y) = (0,\,0) && \\ && && \\ && && \square  \end{flalign}$$

Now, we are aiming to a field so we now need a product such that satisfies the field axioms.

> [!definition|blue-hint]
> Let $s = (x, y)$ and $z = (a, b)$ complex numbers. Their product is defined as
> $$ (x,\,y) \cdot (a,\,b) = (x \cdot a - y \cdot b, x \cdot b + y \cdot a) $$

This specific product, paired with the above sum, makes $\mathbb{C}$ a field. We'll prove it now.

> [!proposition|purple-important]
> The tuple $(\mathbb{C}, +, \cdot)$ is a *field*.

> [!proof|gray-info] 
> In order to be a field, $(\mathbb{C}, +, \cdot)$ has to be an unary commutative ring with inner inverse element for the product. We already proved that $(\mathbb{C}, +)$ is a commutative group, we just have to prove the ring properties and the existence of the inverse element.
> The commutative, the associative and the distributive properties are immediate due to inherited from reals (having extended the products).
> The identity element is the pair $(1, 0)$, in fact $(x, y) \cdot (1, 0) = (x \cdot 1 - y \cdot 0,\, x \cdot 0 + y \cdot 1) = (x, y)$.
> Lastly the opposite element is given by the element $(x, y)^{-1} := (\dfrac{x}{x^2+y^2}, -\dfrac{y}{x^2+y^2})$ having
> $$ \begin{flalign} && (x,\,y) \cdot (x,\,y)^{-1} = (\frac{x^2}{x^2+y^2} + \frac{y^2}{x^2+y^2},\frac{xy}{x^2+y^2} - \frac{xy}{x^2+y^2}) = (\frac{x^2+y^2}{x^2+y^2},\, 0) = (1, 0) && \\ && && \\ && && \square  \end{flalign} $$

Now that we reached our goal, we can now use these operations to solve our problem.
To start of, the main problem is that the square root of a negative number $-a \in \mathbb{R}$ is not possible but still we can write its square root as $\sqrt{-a} = \sqrt{-1\cdot a} = \sqrt{-1}\sqrt{a}$ now the problem is not anymore the square root of a negative number, but just the square root of $-1$.
We need now to define a mapping that helps us map a single real number into a complex number. 
Being the complex number set a self product of reals, we say that the pair $(x, 0) \in \mathbb{C}$ is the same as $x \in \mathbb{R}$. So we have defined this mapping
$$
\begin{alignat*}{2}
f : \mathbb{R} &\longrightarrow \mathbb{C} \\
 x & \longmapsto s = (x, 0)
\end{alignat*}
$$
which allows us to mark a real number as a complex number. Given that, we now can extend our research of the «*forbidden root*» in the complex field, not looking after "$\sqrt{-1}$" but for "$\sqrt{f(-1)}$".
With the product provided we can find a pair $s = (x, y) \in \mathbb{C}$ such that its *second power* is $s^2 = s \cdot s = f(-1)$, meaning that the pair itself can represent the square root of $-1$.
So extending the product we have
$$
(x, y) \cdot (x, y) = (x^2 - y^2, \, 2xy) = f(-1) = (-1, 0)
$$
This means that one of the two elements must be $0$ having the double product being null.
To have $-1$ in the first member instead, we must have $x^2 - y^2 = -1$.
Since which ever real number squared is always positive, the pair $(-1, 0)$ won't work.
So now we have only two candidates: $(0, 1)$ and $(0, -1)$.
They actually work both, but since "$1$" is the identity element for real product we choose the pair $(0, 1)$.

> [!definition|blue-hint]
> The pair $(0, 1) \in \mathbb{C}$ is called the *imaginary unit* and is denoted as $i$.

> [!remark|cyan-note]
> The power of $i$ over the complex number product are cyclic every four.
> $$ \begin{alignat}{1} i^0 &=\, 1 \\ i^1 &= \, i \\ i^2 &= -1 \\ i^3 &= -i  \\ i^4 &=\, 1\\ &\vdots \end{alignat} $$

Another interesting fact about the imaginary unit is that if you take a real number $x \in \mathbb{R}$, and multiply its complex traspose with the imaginary number $f(x) \cdot (0, 1)$, it will always be in the form $(0, x)$.

> [!definition|blue-hint]
> Let $\alpha, \beta \in \mathbb{R}$. The *algebraic form* of the complex number $z = (\alpha, \beta)$ is a way to denote it.
> $$ z = (\alpha, \, \beta) = (\alpha, 0) + (0, \beta) = f(\alpha) + (\beta, 0) \cdot (0, 1) = f(\alpha) + if(\beta) $$
> In this case we can omit the function calls and write it as $z = \alpha + \beta\, i$.
> The number $\alpha$ is called real part and commonly denoted with $\mathfrak{R}(z)$.
> The number $\beta$ is called imaginary part and commonly denoted with $\mathfrak{I}(z)$.

>[!definition|blue-hint]
>Let $z = (\alpha, i\beta) \in \mathbb{C}$. Its complex conjugate $\overline{z}$ is a complex number with same real part but opposite imaginary part.
>$$ \overline{z} = \alpha - i\beta = (\alpha, -\beta)$$

Now we can write more easily the solution to our main problem $\sqrt{-a} = i\sqrt{a} = (0, a) \in \mathbb{C}$, this leads to one of the most important theorem in maths.

> [!theorem|purple-important]  Theorem. *Fundamental theorem of algebra*
> Every non-constant single-variable polynomial with complex coefficients has at least one complex root.

This is all about complex numbers.