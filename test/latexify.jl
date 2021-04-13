using Symbolics
using Test
using Latexify

@variables x y z

@test latexify(x^-1) == Latexify.L"$x^{-1}$"

@test latexify((z + x*y^-1) / sin(z)) ==
    Latexify.L"$\frac{\left( z + \frac{x}{y} \right)}{\sin\left( z \right)}$"

@test latexify((3x - 7y*z^23) * (z - z^2) / x) ==
    Latexify.L"$\frac{\left( z - z^{2} \right) \cdot \left( 3 \cdot x - 7 \cdot y \cdot z^{23} \right)}{x}$"

@test latexify(-(-x)) == Latexify.L"$x$"

@test latexify(x/-x) == Latexify.L"$-1$"

@test latexify(-x * y) == Latexify.L"$ - x \cdot y$"

@test latexify(x * -y) == Latexify.L"$ - x \cdot y$"

@test latexify(x * -y *z) == Latexify.L"$ - x \cdot y \cdot z$"

@test latexify(x * y * -z) == Latexify.L"$ - x \cdot y \cdot z$"

@test latexify(sin(x+y-z)) == Latexify.L"$\sin\left( x + y - z \right)$"