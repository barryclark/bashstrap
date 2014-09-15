# Takes a filename (relative or absolute) and strips the path.
# Usage:
#   strip_extension ./hello.world.txt
# Output:
#   ./hello.world

function strip_extension() {
    echo $(echo $1 | sed -E "s/\.[[:alnum:]]+$//");
}


# Takes a file name and appends an extension.
# Usage:
#   append_extensions ./hello.world txt
# Output:
#   ./hello.world.txt

function append_extension() {
    echo "$1.$2"
}


# Compiles and runs a single Rust (.rs) file. The function works whether or
# not the file extension is added. This allows it to be quickly used with
# tab completion in the event an executable has already been generated.
# Usage:
#   rustonce ./hello.world.rs
#   rustonce ./hello.world

function rustonce() {
    srcfile=$1
    binfile=$1

    if [[ $1 =~ ".rs" ]]; then
        srcfile=$1
        binfile=$(strip_extension $1)
    else
        srcfile=$(append_extension $1 rs)
        binfile=$1
    fi

    rustc $srcfile -o $binfile && ./$binfile
}
