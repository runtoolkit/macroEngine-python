# macroEngine-python

Python toolchain for **Advanced Macro Engine** (macroEngine-dp) datapack development.

## Overview

A collection of Python utilities for building, validating, and maintaining the macroEngine-dp multi-version overlay system.

## Requirements

- Python 3.8+
- Git (for repository operations)

## Installation

```bash
git clone https://github.com/runtoolkit/macroEngine-python.git
cd macroEngine-python
```

### Shell Aliases (Optional)

For quick access to tools, source the aliases file:

```bash
source aliases.sh
```

To make aliases permanent, add to your shell profile:

```bash
echo "source $(pwd)/aliases.sh" >> ~/.bashrc  # or ~/.zshrc
```

## Tools

### `init.py`
Initialize a new macroEngine datapack project with the standard directory structure.

```bash
python3 init.py <project_name> [output_dir]
# or with alias:
ame-init <project_name> [output_dir]
```

**Arguments:**
- `project_name` - Name of the new datapack project
- `output_dir` - (Optional) Directory to create the project in (defaults to current directory)

### `extract.py`
Extract datapack structure from a built pack.

```bash
python3 extract.py [output_dir]
# or with alias:
ame-extract [output_dir]
```

### `lint.py`
Lint mcfunction files for syntax errors and best practices.

```bash
python3 lint.py [--strict]
# or with alias:
ame-lint [--strict]
```

**Options:**
- `--strict` - Enable stricter validation rules

### `pack.py`
Package overlay directories into a distributable datapack.

```bash
python3 pack.py <source_dir> [output_file]
# or with alias:
ame-pack <source_dir> [output_file]
```

**Arguments:**
- `source_dir` - Directory containing pack.mcmeta and data/
- `output_file` - (Optional) Output .zip filename

### `validate.py`
Validate datapack structure and mcfunction syntax.

```bash
python3 validate.py [build_path]
# or with alias:
ame-validate [build_path]
```

**Arguments:**
- `build_path` - (Optional) Path to validate (defaults to current directory)

## Project Structure

```
macroEngine-python/
├── aliases.sh        # Shell alias definitions
├── init.py           # Project initialization tool
├── extract.py        # Datapack extraction tool
├── lint.py           # Mcfunction linter
├── pack.py           # Datapack packaging tool
├── validate.py       # Structure validator
├── LICENSE           # MIT License
└── README.md         # This file
```

## Usage Examples

### Initialize a new project
```bash
ame-init my-datapack
ame-init my-datapack ./projects/
```

### Validate before commit
```bash
ame-lint --strict
ame-validate
```

### Package a datapack
```bash
ame-pack overlays/1_21_6 output/macroEngine-1.21.6.zip
```

### Extract existing pack
```bash
ame-extract unpacked/
```

## Related Projects

- [macroEngine-dp](https://github.com/runtoolkit/macroEngine-dp) - Main datapack repository
- [Advanced Macro Engine](https://modrinth.com/datapack/advanced-macro-engine) - Modrinth page

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Contributing

This toolchain is maintained as part of the macroEngine-dp project. Issues and PRs should be opened in the main repository.

---

**Part of the runtoolkit organization** | Maintained by [@tickwarden](https://github.com/tickwarden)