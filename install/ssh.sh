# Generate keys for github/ssh.
if [ ! -f ~/.ssh/id_ed25519.pub ]; then
  ssh-keygen -t ed25519 -C "kirill@kcherkashin.org"
fi