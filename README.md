# Shared Configurations

This repository contains shared configuration files that can be used across multiple projects to ensure consistent coding styles, formatting, and version control exclusion rules.

## Available Configurations

- `.editorconfig`: A comprehensive set of coding style rules designed specifically for **.NET and Unity** projects. It ensures consistent indentation, code styling, and naming conventions (like PascalCase for public members and camelCase for private fields) across different editors and IDEs. It includes rules specifically for:
  - `*`: General formatting (spaces, indentation, newlines).
  - `*.csproj`: Specific indentation for project files.
  - `*.cs`: C# specific rules containing ReSharper rules, .NET code style settings, and strict naming conventions.
- `.gitignore`: A predefined list of intentionally untracked files that Git should ignore, tailored specifically for **Unity** projects to keep your repository clean from build artifacts, temp folders, and IDE-generated configurations.

## How to use

You can consume these configuration files individually in your own projects depending on your needs. Below are the common methods to include them in your repository.

### Option 1: Copying the files directly (Recommended)

The easiest and simplest way is to manually download or copy the raw files into the root of your target project.

### Option 2: Using Git Remote (Advanced)

If you want to keep the configuration files updated easily without manually copying them each time, you can add this repository as a remote and restore the files directly.

#### Adding both files the first time:
```bash
git remote add shared-configs https://github.com/sandolkakos/shared-configs.git
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig .gitignore win-update-shared-configs.cmd mac-update-shared-configs.sh
git commit -m "Add shared .editorconfig and .gitignore"
```
#### 🔄️Updating later:
Run the update script based on your OS:
- Windows: `win-update-shared-configs.cmd`
- Mac/Linux: `chmod +x mac-update-shared-configs.sh && ./mac-update-shared-configs.sh`

Or manually:
```bash
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig .gitignore
git diff --cached --quiet || git commit -m "Sync shared configs"
```

#### Adding only the `.editorconfig` file
```bash
git remote add shared-configs https://github.com/sandolkakos/shared-configs.git
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig win-update-editorconfig.cmd mac-update-editorconfig.sh
git commit -m "Add shared .editorconfig"
```

#### 🔄️Updating later:
Run the update script based on your OS:
- Windows: `win-update-editorconfig.cmd`
- Mac/Linux: `chmod +x mac-update-editorconfig.sh && ./mac-update-editorconfig.sh`

Or manually:
```bash
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .editorconfig
git diff --cached --quiet || git commit -m "Sync shared .editorconfig"
```

#### Adding only the `.gitignore` file
```bash
git remote add shared-configs https://github.com/sandolkakos/shared-configs.git
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .gitignore win-update-gitignore.cmd mac-update-gitignore.sh
git commit -m "Add shared .gitignore"
```

#### 🔄️Updating later:
Run the update script based on your OS:
- Windows: `win-update-gitignore.cmd`
- Mac/Linux: `chmod +x mac-update-gitignore.sh && ./mac-update-gitignore.sh`

Or manually:
```bash
git fetch shared-configs
git restore --source=shared-configs/main --worktree --staged .gitignore
git diff --cached --quiet || git commit -m "Sync shared .gitignore"
```

## Contributing

Feel free to submit pull requests if you want to propose additions to the universal `.gitignore` or adjustments to the `.editorconfig` rules, or if you have a better approach to sync them into other repos.
