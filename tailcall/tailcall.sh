#!/bin/bash
wget https://github.com/tailcallhq/tailcall/releases/download/v0.13.0/tailcall-x86_64-unknown-linux-gnu
chmod +x ./tailcall-x86_64-unknown-linux-gnu
./tailcall-x86_64-unknown-linux-gnu start ./hello.graphql
