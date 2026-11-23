# LD

LD loads an English source file and emits one shell implementation to stdout.

~~~sh
LD NSH > nsh.new && sh -n nsh.new
~~~

Put **#!/bin/LD** on the first line in ix. Use **#!/usr/bin/env LD** when
installing into another prefix. LD_RUNNER selects a lord name and defaults
to lordhavemercy. Any subsequent arguments describe the requested build.
