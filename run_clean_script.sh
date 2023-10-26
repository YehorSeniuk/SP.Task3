#!/bin/bash

# Перевіряємо, чи передано правильну кількість аргументів
if [ "$#" -ne 1 ]; then
    echo "Використання: $0 <шлях_до_директорії>"
    exit 1
fi

target_directory="$1"

# Запускаємо перший скрипт у новому терміналі
gnome-terminal -- bash -c "./clean_directory.sh '$target_directory'; exec bash"
