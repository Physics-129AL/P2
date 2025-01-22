alias file_remove='function _file_remove() {
    if [ -d "$1" ]; then
        echo "Searching for files in directory: $1"
        find "$1" -type f -name "electron scattering *.bin" -exec rm -v {} +
    else
        echo "Error: Directory $1 does not exist."
    fi
}; _file_remove'

