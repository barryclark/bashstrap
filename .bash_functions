# Takes a filename (relative or absolute) and strips the extension.
# Usage:
#   strip_extension ./hello.world.txt
# Output:
#   ./hello.world

function strip_extension() {
    echo $(echo $1 | sed -E "s/\.[[:alnum:]]*$//");
}


# Takes a file name and appends an extension.
# Usage:
#   append_extensions ./hello.world txt
# Output:
#   ./hello.world.txt

function append_extension() {
    echo "$1.$2"
}


# Compiles and runs a single source file. The function works whether or
# not the file extension is added. This allows it to be quickly used with
# tab completion in the event an executable has already been generated.
# Usage:
#   _c_family_exe $1 rs rustc
#   _c_family_exe $1 cpp c++

function _c_family_exe() {
    srcfile=$1
    binfile=$1
    extension=$2

    if [[ $1 =~ ".$extension" ]]; then
        srcfile=$1
        binfile=$(strip_extension $1)
    else
        srcfile=$(append_extension $1 $extension)
        binfile=$1
    fi

    $3 $srcfile -o $binfile && ./$binfile
}


# Compiles and runs a single Rust (.rs) file.
# Usage:
#   exerust hello-world.rs
#   exerust hello-world

function exerust() {
    _c_family_exe $1 "rs" rustc
}


# Compiles and runs a single C++ (.cpp) file.
# Usage:
#   exec++ hello-world.cpp
#   exec++ hello-world

function exec++() {
    _c_family_exe $1 "cpp" c++
}


# Compiles and runs a single Java source file. The function works whether or
# not the file extension is added, and also whether or not a '.' character
# is added. This allows it to be quickly used with tab completion in the
# event an executable has already been generated.
# Usage:
#   exejava HelloWorld.java
#   exejava HelloWorld.
#   exejava HelloWorld

function exejava() {
    srcfile=$1
    binfile=$1
    srcextension="java"
    binextension="class"

    if [[ $1 == *".$srcextension" ]]; then
        srcfile=$1
        binfile=$(strip_extension $1)
    elif [[ $1 == *. ]] || [[ $1 == *".$binextension" ]]; then
        binfile=$(strip_extension $1)
        srcfile=$(append_extension $binfile $srcextension)
    else
        srcfile=$(append_extension $1 $srcextension)
        binfile=$1
    fi
    javac $srcfile && java $binfile
}
