
#! /bin/sh
ORIGDIR="$(pwd)"
echo $ORIGDIR
SELF_PATH="$(cd -P -- "$(dirname -- "$0")" && pwd -P)" && SELF_PATH="$SELF_PATH/$(basename -- "$0")"

# Resolve symlinks - this is the equivalent of "readlink -f", but also works with non-standard OS X readlink.
while [ -h "$SELF_PATH" ]; do
	# 1) cd to directory of the symlink
	# 2) cd to the directory of where the symlink points
	# 3) Get the pwd
	# 4) Append the basename
	
	DIR="$(dirname -- "$SELF_PATH")"
	SYM="$(readlink "$SELF_PATH")"
	SELF_PATH="$(cd "$DIR" && cd "$(dirname -- "$SYM")" && pwd)/$(basename -- "$SYM")"
done
