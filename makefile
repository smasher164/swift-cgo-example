all:
	make swift && make objc && make lib && go build

swift:
	xcrun swiftc -frontend -c -primary-file minimal.swift -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/ -module-name minimal -emit-module-path minimal.swiftmodule -emit-objc-header-path emittedheader.h -parse-as-library -o minimalS.o

objc:
	xcrun clang minimal.m -o minimalC.o -c

lib:
	xcrun swiftc minimalC.o minimalS.o -emit-library -module-name minimal -o minimal.a