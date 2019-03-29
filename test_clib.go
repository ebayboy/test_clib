package main

import "C"
import "fmt"

//export hello
func hello() {
	fmt.Println("hello world")
}

//export add
func add(a, b int) int {
	return a + b
}

func main() {}
