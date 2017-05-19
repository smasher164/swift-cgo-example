import Cocoa

// Swift class that creates an empty window. Called from
// Objective-C in minimal.m.
public class Window : NSObject {
    public static func CreateWindow() {
        NSApplication.shared()
        
        let window = NSWindow(contentRect: NSMakeRect(0, 0, 320, 200),
                              styleMask: NSTitledWindowMask,
                              backing: .buffered,
                              defer: true)
        window.orderFrontRegardless()
        
        NSApp.run()
    }	
}