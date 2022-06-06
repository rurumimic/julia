# Revise.jl

- github: [Revise.jl](https://github.com/timholy/Revise.jl)
- [configuration](https://timholy.github.io/Revise.jl/stable/config/)

---

## Content

- Create a project
- Installation
  - default in julia
  - default in jupyter
- Run

## Create a project

```bash
cd src
julia
```

Enter the Pkg REPL: `]`

```jl
(@v1.7) pkg> generate Multiply

  Generating  project Multiply:
    Multiply/Project.toml
    Multiply/src/Multiply.jl
```

Go back to the Julia REPL: `^C`

```jl
julia> cd("Multiply")
```

Enter the Pkg REPL: `]`

```jl
(@v1.7) pkg> activate .

  Activating project at `…/src/Multiply`
```

---

## Installation

### in Pkg REPL

```jl
(Multiply) pkg> add Revise
```

```jl
(Multiply) pkg> st
     Project Multiply v0.1.0
      Status `…/src/Multiply/Project.toml`
  [295af30f] Revise v3.3.3
```

### in Julia REPL

```jl
using Pkg; Pkg.add("Revise")
```

### Using Revise by default

```bash
mkdir -p ~/.julia/config/
vi ~/.julia/config/startup.jl
```

```bash
try
    using Revise
catch e
    @warn "Error initializing Revise" exception=(e, catch_backtrace())
end
```

### Using Revise automatically within Jupyter/IJulia

```bash
mkdir -p ~/.julia/config/ && tee -a  ~/.julia/config/startup_ijulia.jl << END
try
    @eval using Revise
catch e
    @warn "Error initializing Revise" exception=(e, catch_backtrace())
end
END
```

---

## Run

### Example.jl

github: [Example.jl](https://github.com/JuliaLang/Example.jl/blob/master/src/Example.jl)

#### in Pkg REPL

```jl
(Multiply) pkg> dev Example

     Cloning git-repo `https://github.com/JuliaLang/Example.jl.git`
   Resolving package versions...
    Updating `…/src/Multiply/Project.toml`
  [7876af07] + Example v0.5.4 `~/.julia/dev/Example`
    Updating `…/src/Multiply/Manifest.toml`
  [7876af07] + Example v0.5.4 `~/.julia/dev/Example`
```

#### in Julia REPL

```jl
julia> using Revise

julia> using Example
[ Info: Precompiling Example [7876af07-990d-54b4-ab0e-23690620f79a]

julia> hello("world")
"Hello, world"
```

### Multiply

```jl
julia> using Multiply
julia> Multiply.greet()
Hello World!
```

#### Edit `Multiply/src/Multiply.jl` in VSCode

```jl
module Multiply
export multiply

multiply(a::Number, b::Number) = a * b

end # module
```

#### Run functions

```jl
julia> multiply(3, 4)
12

julia> Multiply.greet()
ERROR: MethodError: no method matching greet()
Stacktrace:
 [1] top-level scope
   @ REPL[18]:1
```
