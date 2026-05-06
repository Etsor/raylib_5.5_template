# Cross-platform raylib project template

No system-wide raylib installation needed
```
├── Makefile
├── src/
│   └── main.c
│   └── raylib.h
└── thirdparty/
    └── raylib-5.5_*
```

## Quick Start
 
```sh
git clone https://github.com/Etsor/raylib_5.5_template
cd raylib_5.5_template
make
```

Makefile detects your OS automatically and picks the right raylib build. The binary appears in the project root

## Makefile Targets
 
| Target | Description |
|--------|-------------|
| `make` | Build and run |
| `make wr` | Build only |
| `make d` | Build and run with `-DDEBUG` |
| `make clean` | Remove the binary 

## Renaming the Binary
 
Change `TARGET` in the Makefile:
 
```makefile
TARGET := aboba
```
