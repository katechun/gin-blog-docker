package main

import "time"

func main() {
	for i := 0; i < 100; i++ {
		go Goroute1(i)
	}

	time.Sleep(time.Second)
}
