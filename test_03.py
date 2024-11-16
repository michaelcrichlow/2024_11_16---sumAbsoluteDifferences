def sumAbsoluteDifferences(l: list[int]) -> int:
    total = 0
    for i in range(1, len(l)):
        if l[i] == l[i - 1] + 1:
            total += (l[i] - l[i-1])

    return total


def main() -> None:
    print(sumAbsoluteDifferences([1, 2, 3, 4]))
    print(sumAbsoluteDifferences([0, 4, 3, 4, 7, 9, 10]))
    print(sumAbsoluteDifferences([-5, -4, 0, 2, 12, 18]))


if __name__ == '__main__':
    main()

# sumAbsoluteDifferences([1, 2, 3, 4]) => 3
