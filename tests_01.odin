package test

import "core:fmt"
print :: fmt.println

DEBUG_MODE :: true

main :: proc() {

	print(sumAbsoluteDifferences([]int{1, 2, 3, 4}))
	print(sumAbsoluteDifferences([]int{0, 4, 3, 4, 7, 9, 10}))
	print(sumAbsoluteDifferences([]int{-5, -4, 0, 2, 12, 18}))
	// OUTPUT:
	// 3
	// 2
	// 1
}


sumAbsoluteDifferences :: proc(l: []int) -> int {
	total := 0
	for i in 1 ..< len(l) {
		if l[i] == l[i - 1] + 1 {
			total += (l[i] - l[i - 1])
		}
	}

	return total
}
