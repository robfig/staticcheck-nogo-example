package main

import "fmt"

func main() {
	var ch = make(chan int)
	select {
	case x := <-ch:
		fmt.Println(x)
	}
}
