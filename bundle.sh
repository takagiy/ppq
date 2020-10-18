#!/bin/sh

echo "#!/bin/sh"

subcmds=$(find src \( -name src -o -prune \) -type f -name 'ppq_*')

for cmd in $subcmds
do
  echo "$(basename "$cmd")()"
  echo "{"
  cat "$cmd"
  echo "}"
done

cat src/ppq
