# Ultra-Violet Catastrophe

At the very begin of the 20th century Thermodinamics and Maxwell's equations where widely accepted and the next step in physics seemed to be the study of electromagnetic radiations. One of the problem of most intrest was the black body radiation. 

But what is a black body?

Let's consider a body at a given temperature $T$ in thermal equilibrium. If we strike it with some radiations (e.g. light) it can act in different ways:
1. Absorbtion - The body can absorb some (or all) of the incident radiation. We call the "ability of absorb" radiation as *absorption coefficient* and we indicate it with $a$.
2. Transmition - The body can transmit some (or all) of the incident radiation. We call the "ability of transmit" radiation as *transmission coefficient* and we indicate it with $\tau$.
3. Reflection - The body can reflect some (or all) of the incident radiation. We call the "ability of reflect" radiation as *reflection coefficient* and we indicate it with $\rho$.

:::{figure} ../assets/radiating-body.png
---
name: radiating-body
---
A body response to incident radiations.
:::

Those coefficients are normalized such that $a + \tau + \rho = 1$ meaning that when one of them is set to $1$ the others must be null. Now we call a body *transparent* if it transmit the whole incident radiation, hence if $\tau = 1$.  If a body has a transmission coefficient set to $\tau = 0$ then the body is said to be *opaque*. Otherwise if a body as an absorption coefficient $a = 1$ it is said to be a *black body* (since it happen to be black when not glowing hot).

These are the ones we'll study. When a black body absorbs radiations, in order to stay in thermal equilibrium, it must emit radiation at the same rate as it absorbs it. This means that a black body, besides to absorbing well, it also radiates very well.

Now we want to study the relation between a black body's temperature and the intensity of its radiations. Obviously there not exists such thing as a perfect black body in nature, but we can build a device tha acts just like a black body starting from an opaque one. We can consider a very hot metal chamber with a hole. In such device the radiations entering the hole are reflected and absorbed by the wall of the cavity. If the hole has a much smaller surface than the cavity does, then the amount of radiations reflected out of the hole is negligible.

:::{figure} ../assets/black-body.png
---
name: black-body
---
A cavity acting like a black body.
:::

A first experiment by Kirchhoff led to the recognition that the intesity of radiation emitted by a black body is a universal function of the temperature $T$ and the wavelenght $\lambda$ of the radiation under consideration. This means that neither the material nor the shape of the black body were relevat for its radiation: at a given frequency the amount of energy emitted by the black body depended solely on the temperature.

Further calculations showed that the emissive power of the cavity (energy per unit area per second radiated through the hole) $\varepsilon(\lambda, T)$ in the wavelength  range of $\lambda$ and $\lambda + d\lambda$ is proportional to the energy density $u(\lambda, T)$ inside the cavity. If, for example, we consider electromagnetics radiations we have

$$\varepsilon(\lambda, T) = \dfrac{1}{4}c\,u(\lambda, T)$$

where $c$ it's the speed of light, since we're using light, and the $1/4$ comes out from the fact that the radiation inside the cavity radiate in every direction, but only two directions are perpendicular to the hole and of those only one comes out of the hole, so only $1/4$ of the energy is radiated.

Some experiments by Lummer and Pringsheim confirmed this result, giving data for $u(\lambda, T)$ at low and high frequencies.

:::{figure} ../assets/black-body-spectrum.webp
---
name: black-body-spectrum
---
The spectrum of a black body from Lummer-Pringsheim experiments.
:::

Classical physics could not explain the shape of this funcion. In an effort to find an explanation, Reyleigh tried to derive a law for the energy density from classical physiscs. He started by noticing that radiations inside the cavity acts like oscillators at frequencies $\nu = \dfrac{c}{\lambda}$ and for those systems the energy can be derived thanks to **equipartition theorem**, leading to

$$
    E(\nu, T) = \dfrac{dn(\nu)}{d\nu} k_B T
$$(energy)

where $n(\nu)$ is the number modes (degrees of freedom) of the oscillator, $k_B$ is the Boltzmann constant and $T$ is the cavity temperature. So now, in order to get the energy, we need to calculate the number of modes of the radiation inside the cavity for the given frequency $\nu$.

Let's start by considering a one-dimensional wave with wavelength $\lambda$ radiating inside a linear cavity of lenght $L$. In order to have a *stationary wave* the length of the cavity must be an integral multiple of the half-wavelength.

$$
    \dfrac{2}{\lambda}L = n
$$

Let's now introduce, for convenience, the **wavenumber** defined as follows.

$$ k = \dfrac{2\pi}{\lambda} $$

We can now write the condition for stationary for one-dimensional wave in terms of *wavenumber*.

$$ k = \pi \dfrac{n}{L} $$

Let's extend the concept to a cubic cavity of length $L$. In the space the *wavenumber* clearly is a vector, hence the condition for stationary must be satisfied by its magnitude.

$$ k^2 = k_x^2 + k_y^2 + k_z^2 = \left(\dfrac{2\pi}{\lambda}\right)^2 $$(condition)

We note that in the space the stationary is satisfied independently for each direction.

$$ k_i = \pi \dfrac{n_i}{L} $$

Using those in the equation [](condition) (along with some trivial algebra) we obtain the condition for stationary in the space.

$$ n_x^2 + n_y^2 + n_z^2 = 4\dfrac{L^2}{\lambda^2} $$

The only problem left is to find the nonnegative combination of the numbers $(n_x, n_y, n_z)$ that fit in a sphere of radius $R = 2\dfrac{L}{\lambda}$. Let's consider our combinations as a lattice in the space with the vector $\vect n = (n_x, n_y, n_z)$ being the coordinates in the space of each combination. The nonnegative combinations are all those combinations with all three coordinates nonnegative. This means that all those combinations lies inside one octant of the space. So bounding them to a sphere it means that the lies inside the spherical octant.

:::{figure} ../assets/octant.png
da aggiungere :)
:::

Since the volume of a sphere is $\dfrac{4}{3}\pi R^3$, the volume of a spherical octant is an eighth of the spherical volume. Setting $R = 2\dfrac{L}{\lambda}$ we have the number of modes of the radiation inside the cubic cavity.

$$ n(v) = \dfrac{1}{8}\dfrac{4}{3}\pi R^3 = \dfrac{4\pi}{3}\dfrac{L^3}{c^3}\nu^3$$

We note that we're using electromagnetic radiation so between two end points there can be two standing waves, one coming from each polarization. Hence we must double the number of modes of one wave.

$$ n(v) = \dfrac{8\pi}{3}\dfrac{L^3}{c^3}\nu^3 $$

Using this in the equation [](energy) gives us the energy desinty of the radiations inside the cubic cavity.

$$ \boxed{u(\nu, T) = 8\pi \dfrac{\nu^2}{c^3} k_B T} $$(rayleigh)

:::{prf:remark}
Note that the same conclusion could have been made through dimensional analisys up to the $8\pi$.
:::

The equation [](rayleigh) is know has the **Rayleigh-Jeans law** which is the classical theory derivation for the law of the radiation of a generic black body at the temperature $T$. But this solution lead to a problem: if we integrate this on the whole frequencies we have infinite energy emmitted.

$$ E = \int_0^{\infty} u(\nu, T)d\nu = \infty $$

This means that a black body at thermal equilibrium (indepentenytly to its temperature) would emit an unbounded quantity of energy as the frequency grows into the ultraviolet range which would make any object glow at any temperature and life would (obviously) not possible. This is know as the *ultraviolet catastrophe* and is the first evidence of the crisis of the classical theory.

But a solution had to be found and someone had an idea.
