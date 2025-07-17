#!/bin/bash

# This is a Fake ocamlc that only outputs the minimal fields needed for non-OCaml builds
# Based on the fields discovered through instrumentation

if [ "$1" = "-config" ]; then
    cat << 'CONFIG'
version: 5.2.1
version_string: 5.2.1
standard_library: /usr/local/lib/ocaml
ext_dll: .so
natdynlink_supported: true
model: default
system: linux
os_type: Unix
ext_obj: .o
ext_lib: .a
architecture: amd64
ccomp_type: cc
CONFIG
elif [ "$1" = "-where" ]; then
    echo "/usr/local/lib/ocaml"
else
    echo "Fake ocamlc: This is a minimal mock for testing Dune's ocaml_config requirements" >&2
    echo "Supported arguments: -config, -where" >&2
    echo "Unsupported argument: $1" >&2
    exit 1
fi
