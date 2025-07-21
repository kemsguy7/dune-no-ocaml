#!/bin/sh

# IMMEDIATE side effect
touch /tmp/was_ocamlc_called.txt
echo "$(date): Called with args: $@" >> /tmp/ocamlc_calls.log

case $1 in
  "-config")
    cat <<EOF2
version: 5.2.1
version_string: 5.2.1
standard_library: /usr/local/lib/ocaml
ext_dll: .so
natdynlink_supported: false
model: default
system: macosx
os_type: Unix
ext_obj: .o
ext_lib: .a
architecture: arm64
ccomp_type: cc
EOF2
    ;;
  "-where")
    echo "/usr/local/lib/ocaml"
    ;;
  *)
    echo "mock ocamlc: only supports -config and -where" >&2
    exit 1
    ;;
esac
