# swift-cgo-example
This example demonstrates how to use CGO to call Swift code from Go.
The path looks something like this:

```
Swift --> Bridging Header --> Objective-C --> C Header Definition --> CGO Include
```

While the process of calling Objective-C from Go is demonstrated in [alexdiaferia's project gogoa](https://github.com/alediaferia/gogoa), calling swift code requires a bridging header that is usually generated in Xcode. This is needed for interoperability between Objective-C and Swift, but as far as I'm aware, requires a precompiled object/library file in order to access the Swift function definition in Go.

In this example we:
  * Generate a bridging header on the command line instead of Xcode.
  * Output a library containing Objective-C and Swift code.
  * Link that library using CGO.

To test it out, run 
```
make && go run minimal.go
```