# Package

- [Pkg.jl](https://pkgdocs.julialang.org/)
  - [Creating Packages](https://pkgdocs.julialang.org/v1/creating-packages/)

### Basic

1. Enter the Pkg REPL by pressing `]` from the Julia REPL.
2. To get back to the Julia REPL, press backspace or `^C`.

### Activate a project

```bash
julia> cd("src")
```

Enter the Pkg REPL: `]`

```bash
(@v1.7) pkg> generate HelloWorld
  Generating  project HelloWorld:
    HelloWorld/Project.toml
    HelloWorld/src/HelloWorld.jl
```

Go back to the Julia REPL: `^C`

```bash
julia> cd("HelloWorld")

julia> pwd()
"…/src/HelloWorld"

julia> readdir()
2-element Vector{String}:
 "Project.toml"
 "src"
```

Enter the Pkg REPL: `]`

```bash
(@v1.7) pkg> activate . # activate src/HelloWorld
  Activating project at `…/src/HelloWorld`

(HelloWorld) pkg> st
     Project HelloWorld v0.1.0
      Status `…/src/HelloWorld/Project.toml` (empty project)
```

Edit: [`…/HelloWorld.jl`](../src/HelloWorld/src/HelloWorld.jl)

Go back to the Julia REPL: `^C`

```bash
julia> using HelloWorld
[ Info: Precompiling HelloWorld [2c597627-394a-4fca-89ca-eebf32025d85]

julia> hello
"Hello, World!"

julia> HelloWorld.greeting(hello)
Hello, World!
```

---

### Add dependencies

Enter the Pkg REPL: `]`

```bash
(HelloWorld) pkg> add Random
    Updating registry at `~/.julia/registries/General.toml`
   Resolving package versions...
    Updating `…/src/HelloWorld/Project.toml`
  [9a3f8284] + Random
    Updating `…/src/HelloWorld/Manifest.toml`
  [9a3f8284] + Random
  [ea8e919c] + SHA
  [9e88b42a] + Serialization
Precompiling project...
  1 dependency successfully precompiled in 1 seconds
```

Add: [message.jl](../src/HelloWorld/src/message.jl)

Go back to the Julia REPL: `^C`

```bash
julia> include("src/message.jl")
Main.message

julia> import .message

julia> message.hi()
"Hi, David"

julia> message.hi()
"Hi, Alice"
```

or

```bash
julia> include("src/message.jl")
Main.message

julia> using .message

julia> hi()
"Hi, David"

julia> hi()
"Hi, Alice"
```
