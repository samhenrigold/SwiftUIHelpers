//
//  Image+systemSymbolExists.swift
//  SwiftUIHelpers
//
//  Created by Sam on 2026-01-05.
//

import SwiftUI

extension Image {
    /// Returns whether a system symbol with the specified name is available.
    ///
    /// Use this to check symbol availability before creating an image:
    ///
    ///     if Image.systemSymbolExists("star.leadinghalf.filled") {
    ///         Image(systemName: "star.leadinghalf.filled")
    ///     } else {
    ///         Image(systemName: "star.fill")
    ///     }
    ///
    /// - Parameter name: The name of the system symbol to check.
    /// - Returns: `true` if the symbol is available in the public API, otherwise `false`.
    public static func systemSymbolExists(_ name: String) -> Bool {
        #if canImport(UIKit)
            UIImage(systemName: name) != nil
        #elseif canImport(AppKit)
            NSImage(systemSymbolName: name, accessibilityDescription: nil) != nil
        #else
            false
        #endif
    }

    /// Returns whether a private system symbol with the specified name is available.
    ///
    /// Private symbols are not guaranteed to be available across OS versions and may
    /// change without notice.
    ///
    ///     if Image.privateSymbolExists("macintosh.classic") {
    ///         Image(_internalSystemName: "macintosh.classic")
    ///     }
    ///
    /// - Parameter name: The name of the private symbol to check.
    /// - Returns: `true` if the private symbol exists, otherwise `false`.
    public static func privateSymbolExists(_ name: String) -> Bool {
        #if canImport(UIKit)
        // thank you seb https://x.com/SebJVidal/status/2006091535029596476
        // _systemImageNamed:withConfiguration:allowPrivate:
        let selector = NSSelectorFromString(_deobfuscate("X3N5c3RlbUltYWdlTmFtZWQ6d2l0aENvbmZpZ3VyYXRpb246YWxsb3dQcml2YXRlOg=="))
        guard UIImage.responds(to: selector) else { return false }

        let type = (@convention(c) (AnyClass, Selector, String, UIImage.SymbolConfiguration?, Bool) -> UIImage?).self
        let method = unsafeBitCast(UIImage.method(for: selector), to: type)

        return method(UIImage.self, selector, name, nil, true) != nil

        #elseif canImport(AppKit)
        // imageWithPrivateSystemSymbolName:accessibilityDescription:
        let selector = NSSelectorFromString(_deobfuscate("aW1hZ2VXaXRoUHJpdmF0ZVN5c3RlbVN5bWJvbE5hbWU6YWNjZXNzaWJpbGl0eURlc2NyaXB0aW9uOg=="))
        guard NSImage.responds(to: selector) else { return false }

        let type = (@convention(c) (AnyClass, Selector, String, String?) -> NSImage?).self
        let method = unsafeBitCast(NSImage.method(for: selector), to: type)

        return method(NSImage.self, selector, name, nil) != nil
        #else
        false
        #endif
    }
}

private func _deobfuscate(_ base64: String) -> String {
    let data = Data(base64Encoded: base64)!
    return String(data: data, encoding: .utf8)!
}
