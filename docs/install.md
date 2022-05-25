# Install

### GitHub Codespaces

1. `Ctrl + Shift + P`
2. `Codespaces: Add Development Container Configuration Files...`
3. `julia(community)`
4. [.devcontainer/devcontainer.json](../.devcontainer/devcontainer.json)

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
