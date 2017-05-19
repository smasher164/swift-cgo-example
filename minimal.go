package main

// Linker flags specify the object file containing the
// 	* Objective-C function that is called.
// 	* Swift class/static method that creates a window.
// 	* Bridging header emitted by swift compiler for Obj-C <-> Swift interoperability.

/*
#cgo LDFLAGS: minimal.a
#include "minimal.h"
*/
import "C"

func main() {
	C.CreateWindow()
}
