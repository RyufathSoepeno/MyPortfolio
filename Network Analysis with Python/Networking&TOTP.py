import sys
import functools

def main():
    data = sys.stdin.read().splitlines()  # read all input first, line by line
    # Defensive: if no lines, nothing to output
    if not data:
        return

    # Helper to parse int safely without loops
    def safe_int(s):
        try:
            return int(s.strip())
        except Exception:
            # On invalid integer, raise ValueError to be caught at top-level
            raise

    # Recursive processor for test cases.
    # args:
    #   lines: list of strings
    #   idx: current index in lines to read next (0-based)
    #   remain: how many test cases left to process
    # returns: tuple(new_idx, list_of_results_strings)
    def process_cases(lines, idx, remain):
        # base case: no remaining — return empty results
        if remain == 0:
            return (idx, [])
        # if not enough lines to read X -> treat as mismatch per rules
        if idx >= len(lines):
            # produce -1 for this and any remaining recursively
            this = "-1"
            # produce remain-1 more "-1" without loops using recursion
            _, tail = process_cases(lines, idx, remain - 1)
            return (idx, [this] + tail)

        # read X (number of integers claimed)
        try:
            X = safe_int(lines[idx])
        except Exception:
            # malformed X — produce -1 and continue
            this = "-1"
            _, tail = process_cases(lines, idx + 1, remain - 1)
            return (idx + 1, [this] + tail)

        # the numbers are expected on the next line
        numbers_line_index = idx + 1
        if numbers_line_index >= len(lines):
            # missing numbers line -> mismatch
            this = "-1"
            _, tail = process_cases(lines, numbers_line_index, remain - 1)
            return (numbers_line_index, [this] + tail)

        nums_line = lines[numbers_line_index].strip()
        # split into tokens (map returns an iterator; no comprehension used)
        tokens = nums_line.split()

        # Check count equality: if unequal, print -1
        # Note: convert X to int already; tokens is list -> use len(tokens)
        if len(tokens) != X:
            this = "-1"
            _, tail = process_cases(lines, numbers_line_index + 1, remain - 1)
            return (numbers_line_index + 1, [this] + tail)

        # Convert tokens to integers using map (no comprehension)
        try:
            ys_iter = map(lambda t: int(t), tokens)
        except Exception:
            this = "-1"
            _, tail = process_cases(lines, numbers_line_index + 1, remain - 1)
            return (numbers_line_index + 1, [this] + tail)

        # Filter to include non-positive values (y <= 0), excluding positives
        nonpos_iter = filter(lambda y: y <= 0, ys_iter)

        # Compute y**4 for each remaining value using map, then sum
        fourth_pows = map(lambda y: (y * y) * (y * y), nonpos_iter)  # y**4 but avoid ** operator repeated for style
        try:
            total = functools.reduce(lambda a, b: a + b, fourth_pows, 0)
        except Exception:
            # Just in case something odd happens; return -1
            this = "-1"
            _, tail = process_cases(lines, numbers_line_index + 1, remain - 1)
            return (numbers_line_index + 1, [this] + tail)

        this = str(total)
        # Recurse for the rest
        _, tail = process_cases(lines, numbers_line_index + 1, remain - 1)
        return (numbers_line_index + 1, [this] + tail)

    # Top-level: first line must contain N
    try:
        N = safe_int(data[0])
    except Exception:
        # Malformed first line: nothing sensible to do
        return

    # Process N cases starting from line index 1
    _, results = process_cases(data, 1, N)

    # Print results, no blank lines between outputs
    sys.stdout.write("\n".join(results))

if __name__ == "__main__":
    main()
