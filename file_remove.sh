file_remove() {
    if [ "$#" -ne 1 ]; then
        echo "file_remove <target_directory>"
        return 1
    fi
    rm -r "$1"
}
