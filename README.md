# Julia

- [Julia.org](https://julialang.org/)
- [Documentation](https://docs.julialang.org/)
- [Downloads](https://julialang.org/downloads/)

## Install

### GitHub Codespaces

1. `Ctrl + Shift + P`
2. `Codespaces: Add Development Container Configuration Files...`
3. `julia(community)`
4. [.devcontainer/devcontainer.json](.devcontainer/devcontainer.json)

### macOS

1. Download: `julia-1.7.2-mac64.dmg`
2. drag the `Julia-1.7.app` to Applications Folder's Shortcut.
3. Add Julia to PATH

```bash
# sudo mkdir -p /usr/local/bin
# sudo rm -f /usr/local/bin/julia
sudo ln -s /Applications/Julia-1.7.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia
```

#### Uninstall

- `Julia.app`
- `~/.julia`

---

## Run

```bash
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

[helloworld.jl](./src/helloworld/helloworld.jl)

```bash
julia> include("./src/helloworld/helloworld.jl")
Main.HelloWorld

julia> using .HelloWorld

julia> greeting(hello)
Hello, world.

```
