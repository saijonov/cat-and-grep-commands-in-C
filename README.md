# Custom `cat` and `grep` Commands in C

This project is a custom implementation of the Linux `cat` and `grep` commands written in C. It includes all the key specifiers and options available in the original commands.

---

## 📂 **Features**

### `grep` Options
| No. | Option  | Description                                               |
|-----|---------|-----------------------------------------------------------|
| 1   | `-e`    | Specify a pattern for matching.                           |
| 2   | `-i`    | Ignore uppercase vs. lowercase.                          |
| 3   | `-v`    | Invert match (select non-matching lines).                |
| 4   | `-c`    | Output count of matching lines only.                      |
| 5   | `-l`    | Output names of files with matching lines.                |
| 6   | `-n`    | Precede each matching line with its line number.          |
| 7   | `-h`    | Output matching lines without preceding them by file names. |
| 8   | `-s`    | Suppress error messages about nonexistent or unreadable files. |
| 9   | `-f file` | Take regexes from a file.                              |
| 10  | `-o`    | Output only the matched parts of matching lines.          |

### `cat` Options
| No. | Option  | Description                                               |
|-----|---------|-----------------------------------------------------------|
| 1   | `-b`    | Number only non-empty lines.                             |
| 2   | `-e`    | Display end-of-line characters as `$`.                    |
| 3   | `-n`    | Number all output lines.                                 |
| 4   | `-s`    | Squeeze multiple adjacent blank lines.                    |
| 5   | `-t`    | Display tabs as `^I`.                                    |

---

## 🚀 **Getting Started**

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/custom-cat-grep.git
    cd custom-cat-grep
    ```

2. Compile the project:
    ```bash
    gcc -o custom_cat custom_cat.c
    gcc -o custom_grep custom_grep.c
    ```

3. Run the commands:
    ```bash
    ./custom_cat [options] [file...]
    ./custom_grep [options] [pattern] [file...]
    ```

---

## 🔧 **Planned Enhancements**

- Add support for more complex regular expressions in `grep`.
- Performance optimizations for large files.

---

## 📝 **License**

This project is licensed under the MIT License.

---

### 🌟 **Thank You for Trying This Project!**
