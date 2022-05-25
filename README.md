# Julia

- [Julia.org](https://julialang.org/)
  - [Documentation](https://docs.julialang.org/)
    - [Style guide](https://docs.julialang.org/en/v1/manual/style-guide/)
  - [Downloads](https://julialang.org/downloads/)
- [Pkg.jl](https://pkgdocs.julialang.org/)

---

## Contents

- [documentation](docs/README.md)

---

## Run

```jl
@rurumimic ➜ /workspaces/julia (master ✗) $ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.2 (2022-02-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> 1 + 2
3

julia> ans
3
```

### Module

[HelloWorld.jl](./src/HelloWorld/src/HelloWorld.jl)

```jl
julia> include("./src/HelloWorld/src/HelloWorld.jl")
Main.HelloWorld

julia> using .HelloWorld

julia> hello
"Hello, World!"

julia> HelloWorld.greeting(hello)
Hello, World!
```

```jl
julia> @__MODULE__
Main

julia> varinfo()
  name                    size summary
  –––––––––––––––– ––––––––––– ––––––––––––––––––
  Base                         Module
  Core                         Module
  HelloWorld         3.083 KiB Module
  InteractiveUtils 252.883 KiB Module
  Main                         Module
  ans                 21 bytes 13-codeunit String
```
