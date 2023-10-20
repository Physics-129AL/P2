#!/bin/bash

target_directory=$1

find "$target_directory" -maxdepth 1 -name "electron_scattering_*.bin" | xargs rm
