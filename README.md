# swift-cgo-example

Edit: There is an unoffcial, more convenient, way to call a swift function from C using `@_cdecl`. See https://forums.swift.org/t/best-way-to-call-a-swift-function-from-c/9829/2.

> There’s no official way yet. Aside from name mangling, Swift functions use a different calling convention from C. Unofficially, if you’re willing to deal with more than the usual amount of code breakage and compiler bugs, there’s an unofficial attribute @_cdecl that does this:

See https://github.com/smasher164/swift-cgo-example/issues/2#issuecomment-459900557 for an example.

---

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
make && ./swift-cgo-example
```
