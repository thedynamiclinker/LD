# LD

`LD FILE ARG ...` loads a readable prose program with `lord`. The file
supplies instructions, argv supplies the request, and stdin supplies input.
An ordinary native shebang selects that interpreter. `#!/bin/LD` and
`#!/usr/bin/env LD` select the prose loader. `#!` and `nsh-ld` alias LD.

`ATA` runs the general-purpose [ATA program](share/new-world/ATA.md).
The dialects also use those instructions.

```sh
LD --effort 3 --permission read instructions.md request
LD --effort 4 --compile instructions.md > program.sh
LD --link my-program LD instructions.md
LD --link my-filter sh program.sh
LD --native printf '%s\n' hello
```

`--compile` asks for a complete shell program and checks its syntax before
emitting it. `LD_RUNNER` selects a runner. By default compilation uses
`lordhavemercy` and execution uses `lord`. `--link` installs an executable
with the specified interpreter under `${LD_BINDIR:-$HOME/.local/bin}`.
Choose an available destination name.

`make install` and `make develop` install the `lord` dependency.
`make uninstall` removes this package's files. `make clean` is available
for the source-only checkout.
