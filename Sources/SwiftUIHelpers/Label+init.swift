//
//  Label+init.swift
//  SwiftUIHelpers
//
//  Created by Sam on 2026-01-05.
//

import SwiftUI

#if canImport(UIKit)
import UIKit
#endif

#if canImport(AppKit)
import AppKit
#endif

extension Label where Title == Text {

    /// Creates a label with a custom icon view and a title generated from a localized string.
    ///
    /// - Parameters:
    ///    - titleKey: A title generated from a localized string.
    ///    - icon: A view builder that creates the icon view.
    nonisolated public init(_ titleKey: LocalizedStringKey, @ViewBuilder icon: () -> Icon) {
        self.init {
            Text(titleKey)
        } icon: {
            icon()
        }
    }

    /// Creates a label with a custom icon view and a title generated from a localized string resource.
    ///
    /// - Parameters:
    ///    - resource: A localized string resource used as the label's title.
    ///    - icon: A view builder that creates the icon view.
    @_disfavoredOverload
    nonisolated public init(_ resource: LocalizedStringResource, @ViewBuilder icon: () -> Icon) {
        self.init {
            Text(resource)
        } icon: {
            icon()
        }
    }

    /// Creates a label with a custom icon view and a title generated from a string.
    ///
    /// - Parameters:
    ///    - title: A string used as the label's title.
    ///    - icon: A view builder that creates the icon view.
    @_disfavoredOverload
    nonisolated public init<S>(_ title: S, @ViewBuilder icon: () -> Icon) where S: StringProtocol {
        self.init {
            Text(title)
        } icon: {
            icon()
        }
    }
}

extension Label where Title == Text, Icon == Image {

    /// Creates a label with an internal system icon image and a title generated from a localized string.
    ///
    /// - Parameters:
    ///    - titleKey: A title generated from a localized string.
    ///    - internalSystemName: The name of the internal system image resource to lookup.
    nonisolated public init(_ titleKey: LocalizedStringKey, internalSystemName systemName: String) {
        self.init {
            Text(titleKey)
        } icon: {
            Image(_internalSystemName: systemName)
        }
    }

    /// Creates a label with an internal system icon image and a title generated from a localized string resource.
    ///
    /// - Parameters:
    ///    - resource: A localized string resource used as the label's title.
    ///    - internalSystemName: The name of the internal system image resource to lookup.
    @_disfavoredOverload
    nonisolated public init(_ resource: LocalizedStringResource, internalSystemName systemName: String) {
        self.init {
            Text(resource)
        } icon: {
            Image(_internalSystemName: systemName)
        }
    }

    /// Creates a label with an internal system icon image and a title generated from a string.
    ///
    /// - Parameters:
    ///    - title: A string used as the label's title.
    ///    - internalSystemName: The name of the internal system image resource to lookup.
    @_disfavoredOverload
    nonisolated public init<S>(_ title: S, internalSystemName systemName: String) where S: StringProtocol {
        self.init {
            Text(title)
        } icon: {
            Image(_internalSystemName: systemName)
        }
    }

    #if canImport(UIKit)
    /// Creates a label with a UIKit image icon and a title generated from a localized string.
    ///
    /// - Parameters:
    ///    - titleKey: A title generated from a localized string.
    ///    - uiImage: The UIKit image to display as the label's icon.
    nonisolated public init(_ titleKey: LocalizedStringKey, uiImage: UIImage) {
        self.init {
            Text(titleKey)
        } icon: {
            Image(uiImage: uiImage)
        }
    }

    /// Creates a label with a UIKit image icon and a title generated from a localized string resource.
    ///
    /// - Parameters:
    ///    - resource: A localized string resource used as the label's title.
    ///    - uiImage: The UIKit image to display as the label's icon.
    @_disfavoredOverload
    nonisolated public init(_ resource: LocalizedStringResource, uiImage: UIImage) {
        self.init {
            Text(resource)
        } icon: {
            Image(uiImage: uiImage)
        }
    }

    /// Creates a label with a UIKit image icon and a title generated from a string.
    ///
    /// - Parameters:
    ///    - title: A string used as the label's title.
    ///    - uiImage: The UIKit image to display as the label's icon.
    @_disfavoredOverload
    nonisolated public init<S>(_ title: S, uiImage: UIImage) where S: StringProtocol {
        self.init {
            Text(title)
        } icon: {
            Image(uiImage: uiImage)
        }
    }
    #endif

    #if canImport(AppKit) && !targetEnvironment(macCatalyst)
    /// Creates a label with an AppKit image icon and a title generated from a localized string.
    ///
    /// - Parameters:
    ///    - titleKey: A title generated from a localized string.
    ///    - nsImage: The AppKit image to display as the label's icon.
    nonisolated public init(_ titleKey: LocalizedStringKey, nsImage: NSImage) {
        self.init {
            Text(titleKey)
        } icon: {
            Image(nsImage: nsImage)
        }
    }

    /// Creates a label with an AppKit image icon and a title generated from a localized string resource.
    ///
    /// - Parameters:
    ///    - resource: A localized string resource used as the label's title.
    ///    - nsImage: The AppKit image to display as the label's icon.
    @_disfavoredOverload
    nonisolated public init(_ resource: LocalizedStringResource, nsImage: NSImage) {
        self.init {
            Text(resource)
        } icon: {
            Image(nsImage: nsImage)
        }
    }

    /// Creates a label with an AppKit image icon and a title generated from a string.
    ///
    /// - Parameters:
    ///    - title: A string used as the label's title.
    ///    - nsImage: The AppKit image to display as the label's icon.
    @_disfavoredOverload
    nonisolated public init<S>(_ title: S, nsImage: NSImage) where S: StringProtocol {
        self.init {
            Text(title)
        } icon: {
            Image(nsImage: nsImage)
        }
    }
    #endif
}
