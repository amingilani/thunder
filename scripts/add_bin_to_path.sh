#!/usr/bin/env bash
cd "$(dirname "$0")"

FILE="$HOME/.bashrc"
DIR="$(realpath ../bin)"
STRING="PATH=\$PATH:$DIR"

if grep -q $STRING $FILE; then
  echo "PATH already setup, skipping"
else
  echo "Adding bin to PATH"
  echo '' >> $FILE
  echo '# Thunder bins' >> $FILE
  echo $STRING >> $FILE
fi
