//
//  LabeledContent+init.swift
//  SwiftUIHelpers
//
//  Created by Sam on 2026-01-05.
//

import SwiftUI
import DeveloperToolsSupport

extension LabeledContent where Label == SwiftUI.Label<Text, Image>, Content: View {

    /// Creates a labeled view with a system icon image label and a title
    /// generated from a localized string key.
    ///
    /// This initializer creates a ``Label`` view on your behalf with a system
    /// image.
    ///
    /// - Parameters:
    ///     - titleKey: The key for the label's localized title.
    ///     - systemImage: The name of the system image resource to lookup.
    ///     - content: The value content being labeled.
    nonisolated public init(_ titleKey: LocalizedStringKey, systemImage name: String, @ViewBuilder content: () -> Content) {
        self.init {
            content()
        } label: {
            Label(titleKey, systemImage: name)
        }
    }

    /// Creates a labeled view with a system icon image label and a title
    /// generated from a string.
    ///
    /// This initializer creates a ``Label`` view on your behalf with a system
    /// image.
    ///
    /// - Parameters:
    ///     - title: A string used as the label's title.
    ///     - systemImage: The name of the system image resource to lookup.
    ///     - content: The value content being labeled.
    @_disfavoredOverload
    nonisolated public init<S>(_ title: S, systemImage name: String, @ViewBuilder content: () -> Content) where S: StringProtocol {
        self.init {
            content()
        } label: {
            Label(title, systemImage: name)
        }
    }

    /// Creates a labeled view with an internal system icon image label and a title
    /// generated from a localized string key.
    ///
    /// This initializer creates a ``Label`` view on your behalf with an internal
    /// system image.
    ///
    /// - Parameters:
    ///     - titleKey: The key for the label's localized title.
    ///     - internalSystemName: The name of the internal system image resource to lookup.
    ///     - content: The value content being labeled.
    nonisolated public init(_ titleKey: LocalizedStringKey, internalSystemName name: String, @ViewBuilder content: () -> Content) {
        self.init {
            content()
        } label: {
            Label(titleKey, internalSystemName: name)
        }
    }

    /// Creates a labeled view with an internal system icon image label and a title
    /// generated from a string.
    ///
    /// This initializer creates a ``Label`` view on your behalf with an internal
    /// system image.
    ///
    /// - Parameters:
    ///     - title: A string used as the label's title.
    ///     - internalSystemName: The name of the internal system image resource to lookup.
    ///     - content: The value content being labeled.
    @_disfavoredOverload
    nonisolated public init<S>(_ title: S, internalSystemName name: String, @ViewBuilder content: () -> Content) where S: StringProtocol {
        self.init {
            content()
        } label: {
            Label(title, internalSystemName: name)
        }
    }
}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, *)
extension LabeledContent where Label == SwiftUI.Label<Text, Image>, Content: View {

    /// Creates a labeled view with an image resource label and a title generated
    /// from a localized string key.
    ///
    /// This initializer creates a ``Label`` view on your behalf with an image
    /// from your asset catalog.
    ///
    /// - Parameters:
    ///     - titleKey: The key for the label's localized title.
    ///     - image: The image resource to display as the label's icon.
    ///     - content: The value content being labeled.
    nonisolated public init(_ titleKey: LocalizedStringKey, image: ImageResource, @ViewBuilder content: () -> Content) {
        self.init {
            content()
        } label: {
            Label(titleKey, image: image)
        }
    }

    /// Creates a labeled view with an image resource label and a title generated
    /// from a localized string resource.
    ///
    /// This initializer creates a ``Label`` view on your behalf with an image
    /// from your asset catalog.
    ///
    /// - Parameters:
    ///     - resource: A localized string resource used as the label's title.
    ///     - image: The image resource to display as the label's icon.
    ///     - content: The value content being labeled.
    nonisolated public init(_ resource: LocalizedStringResource, image: ImageResource, @ViewBuilder content: () -> Content) {
        self.init {
            content()
        } label: {
            Label(resource, image: image)
        }
    }

    /// Creates a labeled view with an image resource label and a title generated
    /// from a string.
    ///
    /// This initializer creates a ``Label`` view on your behalf with an image
    /// from your asset catalog.
    ///
    /// - Parameters:
    ///     - title: A string used as the label's title.
    ///     - image: The image resource to display as the label's icon.
    ///     - content: The value content being labeled.
    @_disfavoredOverload
    nonisolated public init<S>(_ title: S, image: ImageResource, @ViewBuilder content: () -> Content) where S: StringProtocol {
        self.init {
            content()
        } label: {
            Label {
                Text(title)
            } icon: {
                Image(image)
            }
        }
    }
}
