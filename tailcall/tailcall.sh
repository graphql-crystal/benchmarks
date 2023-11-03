#/bin/bash
curl -sSL https://raw.githubusercontent.com/tailcallhq/tailcall/master/install.sh | bash -s
export PATH="$HOME/.tailcall/bin:$PATH"
tc start ./main.graphql