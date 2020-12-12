# The heat equation
As a first extension of the Poisson problem from the previous chapter, weconsider the time-dependent heat equation, or the time-dependent diffusion equation. This is the natural extension of the Poisson equation describing the stationary distribution of heat in a body to a time-dependent problem. We will see that by discretizing time into small time intervals and applying standard time-stepping methods, we can solve the heat equation by solvinga sequence of variational problems, much like the one we encountered for the Poisson equation.

## The PDE problem
The model problem for the time-dependent PDe reads
\begin{align}
    \frac{\partial u}{\partial t}&=\nabla^2 u + f && \text{in } \Omega \times (0, T]\\
    u &= u_D && \text{n } \partial\Omega \times (0,T]\\
    u &= u_0 && \text{at } t=0.
\end{align}