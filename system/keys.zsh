# Pipe my public key to my clipboard.
# Needs the name of the project
pubkey() {
    pbcopy < ~/.ssh/id_rsa-${1}.pub
    echo '=> Public key copied to pasteboard.'
}