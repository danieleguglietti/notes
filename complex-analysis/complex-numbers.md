# Complex Numbers
To find a solution to this problem a new numeric set has been defined such that, with specific operation, on its field the square root of negative reals could be performed.
This is the *complex numbers* set.

::: {prf:definition} 
The numeric set of *complex numbers*, denoted as $\C$, is the Cartesian product of the real numbers set.

$$
\C := \R \times \R = \{\,(x, y) \in \R^2 \,\}
$$
:::

::: {prf:remark}
The set defined as above is a proper super set of real numbers. 

$$
    \R \subset \C 
$$
:::

The numeric set itself is not of much interest. To make things more interesting we have to define a new sum and a new product.

::: {prf:definition}  
Let $s = (x, y)$ and $z = (a, b)$ complex numbers. We define their sum as

$$ 
    s + z = (x, y) + (a, b) = (x + a, \, y + b) 
$$
:::

Paired with the sum defined as above, the complex numbers set is not just a set, but becomes a commutative group, leading to a possibility to find a product such that the set can become a field.

::: {prf:proposition} 
The pair $(\C, +)$ is a *commutative group*.
:::

::: {prf:proof}  
To prove the statement above we have to verify the properties of a commutative group defined in Algebraic Structures.

The associative and commutative properties are immediate as inherited from reals.

We have now to find the identity element and the inverse element.

The identity element is the pair $(0, \, 0)$ since 

$$
(x,\,y) + (0,\,0) = (x + 0,\, y + 0) = (x,\,y)
$$

The inverse element of a complex number $(x,\,y)$ is the pair $(-x,\,-y)$. In fact we have 

$$
    (x,\,y) + (-x,\,-y) = (x - x,\, y - y) = (0,\,0)
$$

$$ 
\begin{flalign} & & \square \end{flalign}
$$
:::

Now, we are aiming to a field so we now need a product such that satisfies the field axioms.

::: {prf:definition}  
Let $s = (x, y)$ and $z = (a, b)$ complex numbers. Their product is defined as

$$ (x,\,y) \cdot (a,\,b) = (x \cdot a - y \cdot b, x \cdot b + y \cdot a) $$
:::

This specific product, paired with the above sum, makes $\C$ a field. We'll prove it now.

::: {prf:proposition} 
The tuple $(\C, +, \cdot)$ is a *field*.
:::

::: {prf:proof}  In order to be a field, $(\C, +, \cdot)$ has to be an unary commutative ring with inner inverse element for the product. We already proved that $(\C, +)$ is a commutative group, we just have to prove the ring properties and the existence of the inverse element.

The commutative, the associative and the distributive properties are immediate due to inherited from reals (having extended the products).

The identity element is the pair $(1, 0)$, in fact $(x, y) \cdot (1, 0) = (x \cdot 1 - y \cdot 0,\, x \cdot 0 + y \cdot 1) = (x, y)$.

Lastly the opposite element is given by the element $(x, y)^{-1} := (\dfrac{x}{x^2+y^2}, -\dfrac{y}{x^2+y^2})$ having

$$ \begin{flalign} && (x,\,y) \cdot (x,\,y)^{-1} = (\frac{x^2}{x^2+y^2} + \frac{y^2}{x^2+y^2},\frac{xy}{x^2+y^2} - \frac{xy}{x^2+y^2}) = (\frac{x^2+y^2}{x^2+y^2},\, 0) = (1, 0) && \\ && && \\ && && \square  \end{flalign} $$
:::

Now that we reached our goal, we can now use these operations to solve our problem.

To start of, the main problem is that the square root of a negative number $-a \in \R$ is not possible but still we can write its square root as $\sqrt{-a} = \sqrt{-1\cdot a} = \sqrt{-1}\sqrt{a}$ now the problem is not anymore the square root of a negative number, but just the square root of $-1$.

We need now to define a mapping that helps us map a single real number into a complex number.

Being the complex number set a self product of reals, we say that the pair $(x, 0) \in \C$ is the same as $x \in \R$. So we have defined this mapping

$$
\begin{alignat*}{2}
f : \R &\longrightarrow \C \\
 x & \longmapsto s = (x, 0)
\end{alignat*}
$$

which allows us to mark a real number as a complex number. Given that, we now can extend our research of the «*forbidden root*» in the complex field, not looking after "$\sqrt{-1}$" but for "$\sqrt{f(-1)}$".

With the product provided we can find a pair $s = (x, y) \in \C$ such that its *second power* is $s^2 = s \cdot s = f(-1)$, meaning that the pair itself can represent the square root of $-1$.

So extending the product we have

$$
(x, y) \cdot (x, y) = (x^2 - y^2, \, 2xy) = f(-1) = (-1, 0)
$$

This means that one of the two elements must be $0$ having the double product being null.

To have $-1$ in the first member instead, we must have $x^2 - y^2 = -1$.

Since which ever real number squared is always positive, the pair $(-1, 0)$ won't work.

So now we have only two candidates: $(0, 1)$ and $(0, -1)$.

They actually work both, but since "$1$" is the identity element for real product we choose the pair $(0, 1)$.

::: {prf:definition} 
The pair $(0, 1) \in \C$ is called the *imaginary unit* and is denoted as $i$.
:::

::: {prf:remark}
The power of $i$ over the complex number product are cyclic every four.

$$ \begin{alignat}{1} i^0 &=\, 1 \\ i^1 &= \, i \\ i^2 &= -1 \\ i^3 &= -i  \\ i^4 &=\, 1\\ &\vdots \end{alignat} $$
:::

Another interesting fact about the imaginary unit is that if you take a real number $x \in \R$, and multiply its complex traspose with the imaginary number $f(x) \cdot (0, 1)$, it will always be in the form $(0, x)$.

::: {prf:definition} *Algebraic form.*
Let $\alpha, \beta \in \R$. The *algebraic form* of the complex number $s = (\alpha, \beta)$ is a way to denote it.

$$ s = (\alpha, \, \beta) = (\alpha, 0) + (0, \beta) = f(\alpha) + (\beta, 0) \cdot (0, 1) = f(\alpha) + if(\beta) $$

In this case we can omit the function calls and write it as $s = \alpha + \beta\, i$.
The number $\alpha$ is called real part and commonly denoted with $\Re s$.
The number $\beta$ is called imaginary part and commonly denoted with $\Im s$.
:::

Now we can write more easily the solution to our main problem $\sqrt{-a} = i\sqrt{a} = (0, a) \in \C$, this leads to one of the most important theorem in maths.

::: {prf:theorem} *Fundamental theorem of algebra*
Every non-constant single-variable polynomial with complex coefficients has at least one complex root.
:::

Geometrically, we can see complex numbers like if they are vectors on the complex plane. In fact, the complex plane it self is a *vector space* over the set $\R^2$ with basis $\{\vect{1}, \vect{i}\}$ and so the real and immaginary part of a complex number can be interpreted as its coordinates in this basis.
With this new interpretation we can now define a new operation that we can use to calculate the length of these vectors.

::: {prf:definition} *Magnitude.*
Let $s = \alpha + i\beta \in \C$. The *magnitude* of $s$ is the length of the vector on the complex plane $\mathbf s =(\alpha, \beta)$.

$$
\abs s = \sqrt{\alpha^2 + \beta^2}
$$
:::

:::{prf:proposition}
Let $s,z \in \C$. The magnetude has the following properties.

*i*. $\abs{s + z} \leq \abs s + \abs z$ 

*ii*. $\abs{s\, z} = \abs s \abs z$

*iii*. $\abs{\dfrac{s}{z}} = \dfrac{\abs s}{\abs z}\, , \quad z \neq 0$
:::

::: {prf:definition} *Complex conjugate.*
Let $s = (\alpha, \beta) \in \C$. Its complex conjugate $\conj s$ is a complex number with same real part but opposite imaginary part.

$$ \conj s = \alpha - i\beta = (\alpha, -\beta)$$
:::

::: {prf:remark} 
The double conjugate how a complex number $s$ is the number itself.

$$
s^{**} = s
$$
:::

There's an interesting relation between the complex conjugate and its magnitude.

:::{prf:proposition}
:label: complex-len

Let $s \in \C$. The product of $s$ with its conjugate $\conj s$ is the square magnitude.

$$
\abs{s}^2 = s \cdot \conj s
$$
:::

:::{prf:proof}
The proof is simple. By algebra we have

$$
s \cdot \conj s = (\alpha + i\beta) \cdot (\alpha - i\beta) = \alpha^2 + i\alpha\beta - i\alpha\beta + \beta^2 = \alpha^2 + \beta^2 = \abs{s}^2
$$
:::

:::{prf:remark}
Obviously from {prf:ref}`complex-len` we can write the magnetude of $s$ as $\abs s = \sqrt{s\cdot\conj s}$.
:::
