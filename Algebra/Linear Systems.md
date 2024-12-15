One of our main goal in these course is to achive the ability of solving **linear systems**.
We need to solve linear systems because most of the simple problems in geometry and physics, like intersections between line or planes, require to find for which values of the variables a set of **linear equation** has solutions.

>[!definition|blue-hint]
>Let $\mathbb{K}$ be a field as defined in [[Algebraic Structures]].
>A *linear equation* of $n$ variables with coefficients in $\mathbb{K}$ is a first-degree polynomial with $n$ variables.
>$$\alpha_1x_1 + \alpha_2x_2 + \cdots \alpha_nx_n = \beta, \qquad \alpha_i,\beta \in \mathbb{K} \,\, \forall i = 1, \dots n $$

>[!example] Example (*4.1*)
>An example of a linear equation with real coefficients is the equation of a line.
>$$ y - x = 1$$

>[!definition|blue-hint]
>Let $\mathbb{K}$ be a field. A *root* for a linear equation is a $n$-tuple $(\sigma_1, \sigma_2, \dots \sigma_n) \in \mathbb{K}$ that satisfies the equality.

>[!definition|blue-hint]
>Let $\mathbb{K}$ be a field. A *linear system* of the $m$-th order in $n$ variables  is a collection of $m$ linear equations of $n$ variables.
>$$\begin{cases} \alpha_{11}x_1 &+ \alpha_{12}x_2 & + \cdots \alpha_{1n}x_n &= & \beta_1 \\ \alpha_{21}x_1 &+ \alpha_{22}x_2 & + \cdots \alpha_{2n}x_n &= & \beta_2 \\ \,\, &&& \vdots & \\ \alpha_{m1}x_1 &+ \alpha_{m2}x_2 & + \cdots \alpha_{mn}x_n &= & \beta_m \end{cases}$$

>[!example] Example (*4.2*)
>An example of a linear system with real coefficients is the intersection of two lines.
>$$\begin{cases} y & - & x & = & 1 \\ y & + & 2x & = & -\frac{2}{3} \end{cases}$$

>[!definition|blue-hint]
>Let $\mathbb{K}$ be a field. A solution for a linear system of $m$ equation is the $n$-tuple $(\sigma_1, \sigma_2, \dots \sigma_n) \in \mathbb{K}$ such that is a root for each $m$ equation.

>[!definition|blue-hint]
>A linear system is said to be *compatible* if and only if it admits at least one solution.

>[!example] Example (*4.3*)
>Let's consider the system in the Example (*4.2*). A solution of the system is the pair $\left(-\dfrac{5}{9}, \dfrac{4}{9}\right)$, but how we get here? We can solve it by **substitution**.
>If we sum $x$ on both sides of the first equation we can rearrange it it to isolate the variable $y$:
>$$\begin{cases} y & - & x & = & 1 \\ y & + & 2x & = & -\frac{2}{3} \end{cases} \implies \begin{cases} y & = & x & + & 1 \\ y & + & 2x & = & -\frac{2}{3} \end{cases}$$
>Now we can substitute $y$ with $x+1$ on the second equation to find the value of $x$:
>$$\begin{cases} y & - & x & = & 1 \\ y & + & 2x & = & -\frac{2}{3} \end{cases} \implies \begin{cases} y & = & x & + & 1 \\ (x+1) & + & 2x & =  & -\frac{2}{3} \end{cases}$$
>Doing our basic algebra lead us to
>$$\begin{cases} y & - & x & = & 1 \\ y & + & 2x & = & -\frac{2}{3} \end{cases} \implies \begin{cases} y & = & x & + & 1 \\ 3x & =  & -\frac{5}{3} & \end{cases} \implies \begin{cases} x & = & -\frac{5}{9} \\ y & = & x & + & 1 \end{cases}$$
>Finally now we can substitute $x$ with $-\dfrac{5}{9}$ on the last equation to find the value of $y$
>$$\begin{cases} x & = & -\frac{5}{9}\\ y & = & \frac{4}{9} \end{cases}$$
>Now to verify that the pair $\left(-\dfrac{5}{9}, \dfrac{4}{9}\right)$ we just need to feed these values to the system and see what happens.
>$$\begin{cases} (\frac{4}{9}) & - & (-\frac{5}{9}) & = & 1 \\ (\frac{4}{9}) & + & 2(-\frac{5}{9}) & = & -\frac{2}{3} \end{cases} \implies \begin{cases} \frac{5}{9} & + & \frac{4}{9} & = & 1 \\ \frac{4}{9} & - & \frac{10}{9} & = & -\frac{2}{3} \end{cases} \implies \begin{cases} 1 & = & 1 \\ -\frac{2}{3} & = & -\frac{2}{3} \end{cases} $$

Not every linear system requires so few steps to be solved. Some can't be solved at all with substitution. In fact what we want to achive is to find a strategy to easily solve every *compatible system*.
To do so we'll introduce the **Gaussian elimination** which allows us to reduce the system to a  compatible one that admits one solution in a specific case.
But before we can introduce this tool we need to define another tool which we'll help us to represent a system.

>[!definition|blue-hint]
>A *matrix* with $m$ rows and $n$ columns is a rectangular table of $m$ rows and $n$ columns containing numbers.
>$$\begin{pmatrix} \alpha_{11} & \alpha_{12} & \alpha_{13} & \cdots & \alpha_{1n} \\ \alpha_{21} & \alpha_{22} & \alpha_{23} & \cdots & \alpha_{2n} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ \alpha_{m1} & \alpha_{m2} & \alpha_{m3} & \cdots & \alpha_{mn} \\\end{pmatrix}$$

>[!definition|blue-hint]
>Let $\mathbb{K}$ be a field. The set of all the $m \times n$ matrix with values in $\mathbb{K}$ is denoted with $\mathbb{K}^{n\times m}$.

>[!example] Example (*4.4*)
>The set of all the $m \times n$ matrix with real values is $\mathbb{R}^{n\times m}$.

>[!definition|blue-hint]
>Let $\mathbb{K}$ be a field and let $A \in \mathbb{K}^{m \times n}$ a $m \times n$ matrix.
>The vector $A_i = \begin{pmatrix} \alpha_{i1} & \alpha_{i2} & \dots & \alpha_{in} \end{pmatrix}$ is the *row* vector containing all the values on the $i$-th row.
>The vector $A^j = \begin{pmatrix} \alpha_{1j} \\ \alpha_{2j} \\ \vdots \\ \alpha_{mj} \end{pmatrix}$ is the *column* vector containing all the values on the $j$-th row.

We are introducing matrices so we can write systems in simpler way. 
Let's start by considering the generalized linear system
$$\begin{cases} \alpha_{11}x_1 &+ \alpha_{12}x_2 & + \cdots \alpha_{1n}x_n &= & \beta_1 \\ \alpha_{21}x_1 &+ \alpha_{22}x_2 & + \cdots \alpha_{2n}x_n &= & \beta_2 \\ \,\, &&& \vdots & \\ \alpha_{m1}x_1 &+ \alpha_{m2}x_2 & + \cdots \alpha_{mn}x_n &= & \beta_m \end{cases}$$
the numbers $\alpha_{11},\alpha_{12},\dots\alpha_{mn}$ are called *coefficients of the system* while the numbers $\beta_1,\beta_2,\dots\beta_m$ are called *constant terms*. 

>[!definition|blue-hint]
>Given a linear system, we can define a $m \times n$ matrix which contains all the coefficients
>$$A = \begin{pmatrix} \alpha_{11} & \alpha_{12} & \alpha_{13} & \cdots & \alpha_{1n} \\ \alpha_{21} & \alpha_{22} & \alpha_{23} & \cdots & \alpha_{2n} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ \alpha_{m1} & \alpha_{m2} & \alpha_{m3} & \cdots & \alpha_{mn} \end{pmatrix} \in \mathbb{K}^{m \times n}$$ which is called *coefficients matrix* and a vectors containing all the constant terms $\mathbf{b} = \begin{pmatrix} \beta_{1} \\ \beta_{2} \\ \vdots \\ \beta_{m} \end{pmatrix} \in \mathbb{K}^m$ which is called the *constant terms vector*.

>[!definition|blue-hint]
>Let $A \in \mathbb{K}^{m \times n}$ be a coefficient matrix and let $\mathbf{b} \in \mathbb{K}^m$ be a constant terms vector. 
>The *complete coefficients matrix* of the system is the matrix that contains both the coefficients and the constant terms
>$$(A|\mathbf{b}) = \begin{pmatrix} \alpha_{11} & \alpha_{12} & \alpha_{13} & \cdots & \alpha_{1n} & \beta_1 \\ \alpha_{21} & \alpha_{22} & \alpha_{23} & \cdots & \alpha_{2n} & \beta_2 \\ \vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\ \alpha_{m1} & \alpha_{m2} & \alpha_{m3} & \cdots & \alpha_{mn} & \beta_m \end{pmatrix}$$

>[!definition|blue-hint]
>Let $A \in \mathbb{K}^{m \times n}$ be a coefficient matrix and let $\mathbf{b} \in \mathbb{K}^m$ be a constant terms vector. 
>Let $\mathbf{x} = \begin{pmatrix} x_{1} \\ x_{2} \\ \vdots \\ x_{n} \end{pmatrix}$ be the *variable vector* then $A\mathbf{x} = \mathbf{b}$ is a linear system.

We'll skip for now why that's true, we're going to prove that later on. We're introducing it now just for notation reasoning.

>[!definition|blue-hint]
>Let $A \in \mathbb{K}^{m \times n}$ be a coefficient matrix and let $\mathbf{b} \in \mathbb{K}^m$ be a constant terms vector.
>The set containing all the solutions of the linear system $A\mathbf{x} = \mathbf{b}$ is the set
>$$\Sigma_A(\mathbf{b}) := \{\vec \sigma \in \mathbb{K}^n : A\vec \sigma = \mathbf{b}\}$$

>[!definition|blue-hint]
>Let $A,B \in \mathbb{K}^{m \times n}$ be a coefficient matrices and let $\mathbf{b},\mathbf{d} \in \mathbb{K}^m$ be a constant terms vectors.
>Then the two linear systems $A\mathbf{x} = \mathbf{b}$ and $B\mathbf{x} = \mathbf{d}$ are *equivalent* if they admits the same solutions.
>$$\Sigma_A(\mathbf{b}) = \Sigma_B(\mathbf{d})$$

>[!definition|blue-hint]
>Let $A,B \in \mathbb{K}^{m \times n}$ be matrix and $\mathbf{b},\mathbf{d} \in \mathbb{K}^m$ constant terms vectors.
>The systems $A\mathbf x = \mathbf b$ and $B\mathbf x = \mathbf d$ are said to be *equivalent* if and only if they admits the same solutions.

The goal of Gaussians elimination is to reduce our complex system to a triangular one.
We try to do that because in a specific case compatible triangular systems admits one and only one solution. So what we are going to do is to find a triangular system equivalent to the initial one.

>[!definition|blue-hint]
>Let $A \in \mathbb{K}^{m \times n}$ be a matrix. If $m = n$ then $A$ is a *square matrix* and denote it with $A \in \mathbb{K}^{n \times n}$.

>[!definition|blue-hint]
>Let $A \in \mathbb{K}^{n \times n}$ be a square matrix. Then $A$ is said to be an *upper triangular matrix* if it's structured like the following one.
>$$ \begin{pmatrix} p_{1} & \alpha_{12} & \alpha_{13} & \cdots & \alpha_{1n} \\ 0 & p_{2} & \alpha_{23} & \cdots & \alpha_{2n} \\ 0 & 0 & p_{3} & \cdots & \alpha_{2n} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & 0 & \cdots & p_{n} \end{pmatrix} $$
>Else if the zeros are above the diagonal and the numbers underneath then $A$ is said to be a *lower triangular matrix*.
>The elements on the diagonal $p_1,p_2,\dots p_n$ are called *pivots*.

> [!remark|cyan-note]
> We'll not make any distinction between *lower* or *upper* triangular matrix, so we'll refer to them just as *trianuglar* matrix.

>[!definition|blue-hint]
>Let $A \in \mathbb{K}^{n \times n}$ be a triangular matrix and let $\mathbf{b} \in \mathbb{K}^n$ be a constant terms vector. Then the system $A\mathbf{x} = \mathbf{b}$ is a *triangular system*.

>[!proposition|orange-important] Proposition. (*4.1*) 
>Let $A \in \mathbb{K}^{n \times n}$ be a triangular matrix and let $\mathbf{b} \in \mathbb{K}^n$ be a constant terms vector such that the system $A\mathbf{x} = \mathbf{b}$ is compatible. Then it admits exactly one solution if and only if pivots are non-zero.

>[!proof|gray-info]
>Let's start by assuming that the elements $p_1,p_2,\dots p_n$ are non-zero.
>Then the last row of the system is $p_n x_n = \beta_n$ admits only one solution $\sigma_n = \dfrac{\beta_n}{p_n}$ since $p_n \neq 0$.
>If we substitute $x_n$ with $sigma_n$ on the $n-1$-th row we have $p_{n-1} x_{n-1} = \beta_{n-1} - \alpha_{n-1n}\, \sigma_n$ which admits only one solution $\sigma_{n-1}$.
>Proceeding like that we reach the first equation where we can substitute every variables with their solutions we obtain the following equation
>$$ p_1 x_1 = \beta_1 - \alpha_{12}\, \sigma_2 - \dots \, \alpha_{1n}\, \sigma_n  $$
>which still admits only one solution $\sigma_1$.
>So the vector $\vec \sigma = \begin{pmatrix} \sigma_1 & \sigma_2 & \dots & \sigma_n \end{pmatrix}$ is the only solution to the system.
>$$ \begin{flalign} && && \square \end{flalign} $$

%% TODO: ADD SECOND PROOF TO 4.1 

> [!remark|cyan-note]
> The proof above defines a way to solve triangular systems which is called *back substitution*.

>[!proposition|orange-important] Lemma. (*4.2*) 
>Let $A,B \in \mathbb{K}^{m \times n}$ be matrix and $\mathbf{b},\mathbf{d} \in \mathbb{K}^m$ constant terms vectors.
>Let $A\mathbf x = \mathbf b$ contain the following two equations:
>*i*. $\alpha_1 x_1 + \alpha_2 x_2 + \cdots \, \alpha_n x_n = \beta$
>*ii*. $\gamma_1 x_1 + \gamma_2 x_2 + \cdots \, \gamma_n x_n = \delta$
>
>Now let $B\mathbf x = \mathbf d$ be the system obtained by replacing the line *ii* with the linear combination of the two lines above:
>$$a. \quad h(\alpha_1 x_1 + \alpha_2 x_2 + \cdots \, \alpha_n x_n) + k (\gamma_1 x_1 + \gamma_2 x_2 + \cdots \, \gamma_n x_n) = h\beta + k\delta \quad h\in\mathbb R,\,k \in \mathbb R\setminus\{0\}$$
>Then $A\mathbf x = \mathbf b$ and $B\mathbf x = \mathbf d$ are equivalent.

>[!proof|gray-info]
> Let $\vec \sigma \in \Sigma_A$ be a solution for $A\mathbf x = \mathbf b$. Then the rows *i* and *ii* are verified and so is the row *a* since he other equations have not changed.
> Let now $\vec \sigma \in \Sigma_B$  be a solution for $B\mathbf x = \mathbf d$. The row *i* is still verified since it has not changed.
> If we now substitute the *i* in *a* we get $k(\gamma_1 x_1 + \gamma_2 x_2 + \cdots \, \gamma_n x_n) = k\delta$.
> Since $k \neq 0$ the row *ii* is verificata too.
>$$ \begin{flalign} && && \square \end{flalign} $$

>[!proposition|orange-important] Proposition. (*4.3*) 
>Let $A,B \in \mathbb{K}^{m \times n}$ be matrix and $\mathbf{b},\mathbf{d} \in \mathbb{K}^m$ constant terms vectors.
>Let $B\mathbf x = \mathbf d$ be the system obtained by switching the row $A_i$ with the row $A_j$.
>Then $A\mathbf x = \mathbf b$ and $B\mathbf x = \mathbf d$ are equivalent.

>[!proof|gray-info]
>Same as *Lemma 4.2*.
>$$ \begin{flalign} && && \square \end{flalign} $$

Now that we have the fundamental tools we can proceed to define what a **Gaussian elimination** for square systems is.

>[!definition|blue-hint]
>Let $A \mathbf x = \mathbf b$ be a linear  square system. A *Gaussian elimination* for square system is the application of the *Lemma 4.2* on the $i$-th and $j$-th rows setting $h = -\dfrac{\alpha_{ji}}{p_i}$ and $k = 1$.

>[!example]
>Let's consider the following linear system.
> $$\begin{cases} x & +\, 3y & +\, z & -\, w &= & 1 \\ 3x & +\, 9y & +\, 4z & +\, w &= & 1 \\ 2x & +\, y & +\, 5z & +\, 2w &= & 0 \\ & y &-\,z &-\,w &= &2 \end{cases}$$
> The complete matrix $(A|\mathbf b)$ associated to the system is the following.
> $$ (A|\mathbf b) = \begin{pmatrix} 1&3&1&-1&1 \\ 3&9&4&1&1 \\ 2&1&5&2&0 \\ 0&1&-1&-1&2 \end{pmatrix} $$
> Our goal is to transform $A$ to its equivalent triangular matrix. Let's start by setting our first pivot to the very first element of the matrix: $p_1 = \alpha_{11}$.
> We can now proceed to do a Gaussian elimination to the first and second row. 
> We set $h = -3$ and apply the *lemma* to the second row:  
> $$-3\begin{pmatrix} 1&3&1&-1&1\end{pmatrix} + \begin{pmatrix}3&9&4&1&1\end{pmatrix} = \begin{pmatrix}0&0&1&4&-2\end{pmatrix}$$ 
> And so we found an equivalent matrix to the first one which has a zero as first element of the second row.
> $$\begin{pmatrix} 1&3&1&-1&1 \\ 3&9&4&1&1 \\ 2&1&5&2&0 \\ 0&1&-1&-1&2 \end{pmatrix} \sim \begin{pmatrix} 1&3&1&-1&1 \\ 0&0&1&4&-2 \\ 2&1&5&2&0 \\ 0&1&-1&-1&2 \end{pmatrix}$$
> We can keep proceeding in this way with the other rows (first with third and first with fourth)
> $$\begin{pmatrix} 1&3&1&-1&1 \\ 3&9&4&1&1 \\ 2&1&5&2&0 \\ 0&1&-1&-1&2 \end{pmatrix} \sim \begin{pmatrix} 1&3&1&-1&1 \\ 0&0&1&4&-2 \\ 0&-5&3&5&-2 \\ 0&1&-1&-1&2 \end{pmatrix}$$
> Now we have a zero as first element in each row. Keep in mind we need to reach a triangular matrix.
> Thanks to *Proposition 4.3* we can rearrange rows without changing the solutions of the system, so we switch the second row with the third row.
> $$\begin{pmatrix} 1&3&1&-1&1 \\ 3&9&4&1&1 \\ 2&1&5&2&0 \\ 0&1&-1&-1&2 \end{pmatrix} \sim \begin{pmatrix} 1&3&1&-1&1 \\ 0&-5&3&5&-2 \\ 0&0&1&4&-2 \\ 0&1&-1&-1&2 \end{pmatrix}$$
> Now we set the second pivot with the second element of the second row $p_2 = \alpha_{22}$. We want the matrix to have all zeros under our pivot so we need to do a Gaussian elimination (G.e. from now on) just with the third row since the second element on the last row is zero.
> To do so we can set $h = \dfrac{1}{5}$ and apply the lemma.
> $$\begin{pmatrix} 1&3&1&-1&1 \\ 3&9&4&1&1 \\ 2&1&5&2&0 \\ 0&1&-1&-1&2 \end{pmatrix} \sim \begin{pmatrix} 1&3&1&-1&1 \\ 0&-5&3&5&-2 \\ 0&0&1&4&-2 \\ 0&0&-\dfrac{2}{5}&-\dfrac{1}{5}&-\dfrac{2}{5} \end{pmatrix}$$
> Lastly, to achieve the triangular matrix, we need to have a zero on the third element on the last column. To do so we set the third pivot to the third element of the diagonal $p_3 = \alpha_{33}$ and we do a G.e. fixing $h = \dfrac{2}{5}$
> $$\begin{pmatrix} 1&3&1&-1&1 \\ 3&9&4&1&1 \\ 2&1&5&2&0 \\ 0&1&-1&-1&2 \end{pmatrix} \sim \begin{pmatrix} 1&3&1&-1&1 \\ 0&-5&3&5&-2 \\ 0&0&1&4&-2 \\ 0&0&0& -\dfrac{7}{5} & -\dfrac{2}{5} \end{pmatrix} = (B|\mathbf d)$$
> Now this is the complete matrix of the equivalent triangular system $B\mathbf x = \mathbf d$.
> $$\begin{cases} x & +\, 3y & +\, z & -\, w &= & 1 \\  & -\, 5y & +\, 3z & -\, 5w &= & -2 \\ &  & z & +\, 4w &= & -2 \\  &  &  & -\dfrac{7}{5}w &= & -\dfrac{2}{5} \end{cases}$$
> This system can be solved by back substitution as we did in the proof for *Proposition 4.1*.

>[!proposition|orange-important] Proposition. (*4.4*) 
>Every square system is equivalent to a triangular system.

>[!proof|gray-info]
>Immediate from *Lemma 4.2*. Just do as many G.e. as you need to reach the triangular equivalent.
>$$ \begin{flalign} && && \square \end{flalign} $$

>[!proposition|orange-important] Theorem. (*4.5*) 
>A square system admits exactly one solution if and only if the pivots of its triangular equivalent are non-zero.

>[!proof|gray-info]
>Due to *Proposition 4.4* every square system is equivalent to a triangular system. So due *Proposition 4.1* a triangular system admits exactly one solution only if its pivots are non zero.
>$$ \begin{flalign} && && \square \end{flalign} $$

>[!definition|blue-hint]
>Let $A \mathbf x = \mathbf b$ be a square system. Then the system is *singular* if the pivots of the triangular equivalent are non zero (e.n. if the system admits exactly one solution).
>Otherwise the system is *non singular*.
