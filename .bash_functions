# Takes a filename (relative or absolute) and strips the path.
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
#   c_family_once $1 rs rustc
#   c_family_once $1 cpp c++

function c_family_once() {
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
#   rustonce hello-world.rs
#   rustonce hello-world

function rustonce() {
    c_family_once $1 "rs" rustc
}


# Compiles and runs a single C++ (.cpp) file.
# Usage:
#   c++once hello-world.cpp
#   c++once hello-world

function c++once() {
    c_family_once $1 "cpp" c++
}


# Compiles and runs a single Java source file. The function works whether or
# not the file extension is added, and also whether or not a '.' character
# is added. This allows it to be quickly used with tab completion in the 
# event an executable has already been generated.
# Usage:
#   javaonce HelloWorld.java
#   javaonce HelloWorld.
#   javaonce HelloWorld

function javaonce() {
    srcfile=$1
    binfile=$1
    srcextension="java"

    if [[ $1 == *".$srcextension" ]]; then
        srcfile=$1
        binfile=$(strip_extension $1)
    elif [[ $1 == *. ]]; then
        binfile=$(strip_extension $1)
        srcfile=$(append_extension $binfile $srcextension)
    else
        srcfile=$(append_extension $1 $srcextension)
        binfile=$1
    fi
    javac $srcfile && java $binfile
}