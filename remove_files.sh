#!/bin/bash
alias file_remove='function _file_remove() { rm "$1"/*; unalias file_remove; }; _file_remove'

