import Cocoa

// Swift class that creates an empty window. Called from
// Objective-C in minimal.m.
public class Window : NSObject {
    @objc public static func CreateWindow() {
        _ = NSApplication.shared
        
        let window = NSWindow(contentRect: NSMakeRect(0, 0, 320, 200),
                              styleMask: .titled,
                              backing: .buffered,
                              defer: true)
        window.orderFrontRegardless()
        
        NSApp.run()
    }
}

