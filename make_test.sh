#!/bin/bash
# Оновлення тестової директорії
rm -r "test_dir"
echo "Створення директорії test_dir"
mkdir "test_dir"
# Створення порожнього файлу empty_file1
touch "test_dir/empty_file1"

# Створення файлу content_file1 зі змістом
echo "Це вміст файлу content_file1" > "test_dir/content_file1"

# Створення порожньої директорії empty_dir1
mkdir "test_dir/empty_dir1"

# Створення директорії empty_dir2
mkdir "test_dir/empty_dir2"

# Створення порожнього файлу empty_file2 в empty_dir2
touch "test_dir/empty_dir2/empty_file2"

# Створення директорії content_dir3
mkdir "test_dir/content_dir3"

# Створення файлу content_file3 зі змістом в content_dir3
echo "Це вміст файлу content_file3" > "test_dir/content_dir3/content_file3"

echo "Створення структури завершено"
