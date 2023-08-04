# 0x06-regular_expressions
- `ARGV` is an array in Ruby that holds command-line arguments provided when running a script.

- `ARGV[0]` retrieves the first command-line argument passed to the script.

- `.scan(/School/)` scans the input string (the first command-line argument) for occurrences of the pattern "School". It returns an array containing all the matches.

- `.join` is used to join the array of matches into a single string.
- `.scan(/hbt{2,5}n/)` scans the input string (the first command-line argument) for occurrences of the pattern "hbt" followed by 2 to 5 occurrences of the letter "t" and then followed by the letter "n". It returns an array containing all the matches.
- `.scan(/hb?tn/)` scans the input string (the first command-line argument) for occurrences of the pattern "hb" followed by an optional "t" and then followed by "n". The `?` after the `b` indicates that the preceding element (in this case, the "t") is optional. It returns an array containing all the matches.
- .scan(/hbt+n/) scans the input string (the first command-line argument) for occurrences of the pattern "hbt" followed by one or more occurrences of the letter "t" and then followed by the letter "n". The `+` after the `t` indicates that the preceding element (the "t") can occur one or more times. It returns an array containing all the matches.
- `.scan(/hbt*n/)` scans the input string (the first command-line argument) for occurrences of the pattern "hbt" followed by zero or more occurrences of the letter "t" and then followed by the letter "n". The `*` after the `t` indicates that the preceding element (the "t") can occur zero or more times. It returns an array containing all the matches.
- `.scan(/^h.n$/)` scans the input string (the first command-line argument) for occurrences of the pattern that starts with "h", followed by any single character (represented by the dot .), and ends with "n". The `^` at the beginning and the `$` at the end of the pattern indicate that the match should start at the beginning of the line and end at the end of the line. It returns an array containing all the matches.
- `.scan(/^\d{10}$/)` scans the input string (the first command-line argument) for occurrences of the pattern that consists of exactly 10 digits. The `^` at the beginning and the `$` at the end of the pattern indicate that the match should start at the beginning of the line and end at the end of the line. `\d` represents a digit character (0-9), and `{10}` specifies that there should be exactly 10 occurrences of the preceding element. It returns an array containing all the matches.
- `.scan(/[A-Z]/)` scans the input string (the first command-line argument) for occurrences of uppercase letters in the range from `A` to `Z`. The square brackets `[A-Z]` define a character class that matches any single character within the specified range. It returns an array containing all the matches.
- .scan(/\[from:(\+?\w*)\]\s\[to:(\+?\w*)\]\s\[flags:(\S*)\]/) scans the input string (the first command-line argument) for occurrences of a specific pattern:

- `\ and ]` are escaped to match the literal characters `[ and ]`.

- `\s` matches whitespace characters (spaces or tabs).

	- `(\+?\w*)` captures a sequence of word characters (alphanumeric characters and underscores), optionally starting with a plus sign.

	- `(\S*)` captures a sequence of non-whitespace characters (flags).

	- The captured values are stored in capture groups `((\+?\w*), (\+?\w*)`, `(\S*))` within the pattern.
