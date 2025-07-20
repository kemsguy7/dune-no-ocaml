# ===== INITIAL SETUP =====
[[ ! -r '/Users/mac/.opam/opam-init/init.zsh' ]] || source '/Users/mac/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
eval "$(rbenv init -)"

# All other PATH exports
export PATH="\
/Users/mac/Library/Application\ Support/Herd/bin:\
/usr/local/opt/node@20/bin:\
/usr/local/opt/ruby/bin:\
$HOME/.foundry/bin:\
${HOME}/.local/bin:\
${ASDF_DATA_DIR:-$HOME/.asdf}/shims:\
$HOME/.opam/default/bin:\
/Users/mac/.opam/4.14.1/bin:\
$PATH"

# ===== FAKE OCAMLC PATH (ABSOLUTELY LAST) =====
# Ensuring fake ocamlc exists and is executable
[ -f /tmp/ocamlc ] && chmod +x /tmp/ocamlc

# PUT /tmp ABSOLUTELY FIRST
export PATH="/tmp:$PATH"

# Other configurations
export GPG_TTY=/dev/ttys029
alias starkup="curl --proto '=https' --tlsv1.2 -sSf https://sh.starkup.sh | sh -s --"

# Herd PHP configurations (NO PATH modification!)
export HERD_PHP_82_INI_SCAN_DIR="/Users/mac/Library/Application Support/Herd/config/php/82/"
export HERD_PHP_83_INI_SCAN_DIR="/Users/mac/Library/Application Support/Herd/config/php/83/"
export HERD_PHP_84_INI_SCAN_DIR="/Users/mac/Library/Application Support/Herd/config/php/84/"
export HERD_PHP_80_INI_SCAN_DIR="/Users/mac/Library/Application Support/Herd/config/php/80/"