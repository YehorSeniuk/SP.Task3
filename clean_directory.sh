#!/bin/bash

# Перевіряємо, чи передано правильну кількість аргументів
if [ "$#" -ne 1 ]; then
    echo "Використання: $0 <шлях_до_директорії>"
    exit 1
fi

target_directory="$1"

# Пошук і видалення порожніх файлів з виведенням повідомлення
find "$target_directory" -type f -empty -exec echo "Delete {}" \; -delete

# Пошук і видалення порожніх директорій з виведенням повідомлення, за винятком кореневої директорії
find "$target_directory" -type d -empty -not -path "$target_directory" -exec echo "Delete {}" \; -delete

echo "Очищення завершено"
