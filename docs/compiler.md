# Package Compiler

- github: [PackageCompiler.jl](https://github.com/JuliaLang/PackageCompiler.jl)
- [docs](https://julialang.github.io/PackageCompiler.jl/stable/index.html)

## Install

```bash
cd src/Multiply
julia -q --project
```

```bash
(Multiply) pkg> add PackageCompiler
```

## Sysimages

### Compile

```jl
using PackageCompiler
create_sysimage(["Example"]; sysimage_path="ExampleSysimage.so")
```

```bash
✔ [02m:15s] PackageCompiler: compiling incremental system image
```

```jl
exit()
```

### Output Image

```bash
du -h ExampleSysimage.so

144M	ExampleSysimage.so
```

### Run

```bash
julia -q -J ExampleSysimage.so --startup-file=no
```

```jl
Base.loaded_modules

Dict{Base.PkgId, Module} with 45 entries:
Example [7876af07-990d-54b4-ab0e-23690620f79a]            => Example
Main [top-level]                                          => Main
REPL [3fa0cd96-eef1-5676-8a61-b3b8758bbffb]               => REPL
```

```jl
Example.hello("world")

"Hello, world"
```

## Apps

```bash
cd src
julia
```

```jl
using Pkg
Pkg.generate("MyApp")
exit()
```

### Main

```jl
module MyApp

greet() = print("Hello World!")

function julia_main()::Cint
  greet() = print("Hello World!")
  return 0
end

end # module
```

### Compile

```bash
julia --startup-file=no
```

```jl
julia> using PackageCompiler
 │ Package PackageCompiler not found, but a package named PackageCompiler is available from a registry.
 │ Install package?
 │   (@v1.7) pkg> add PackageCompiler
 └ (y/n) [y]: y
    Updating registry at `~/.julia/registries/General.toml`
```

```jl
using PackageCompiler
create_app("MyApp", "MyAppCompiled")
```

```jl
✔ [02m:54s] PackageCompiler: compiling base system image (incremental=false)
Precompiling project...
  1 dependency successfully precompiled in 12 seconds
✔ [03m:02s] PackageCompiler: compiling incremental system image
```

```jl
exit()
```

### Run

```bash
MyAppCompiled/bin/MyApp

Hello Wrold!
```
