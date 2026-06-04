//
//  Tab+init.swift
//  SwiftUIHelpers
//
//  Created by Sam on 2026-01-05.
//

import SwiftUI

@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
extension Tab where Value: Hashable, Content: View, Label == Text {

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a string label and no image.
    ///
    /// - Parameters:
    ///     - title: The label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - content: The view content of the tab.
    nonisolated public init<S>(_ title: S, value: Value, @ViewBuilder content: () -> Content) where S: StringProtocol {
        self.init(value: value) {
            content()
        } label: {
            Text(title)
        }
    }

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a string label and no image.
    ///
    /// - Parameters:
    ///     - title: The label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - role: The role defining the semantic purpose of the tab.
    ///     - content: The view content of the tab.
    nonisolated public init<S>(_ title: S, value: Value, role: TabRole?, @ViewBuilder content: () -> Content) where S: StringProtocol {
        self.init(value: value, role: role) {
            content()
        } label: {
            Text(title)
        }
    }

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a string label and no image.
    ///
    /// - Parameters:
    ///     - title: The label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - content: The view content of the tab.
    nonisolated public init<S, T>(_ title: S, value: T, @ViewBuilder content: () -> Content) where Value == T?, S: StringProtocol, T: Hashable {
        self.init(value: value) {
            content()
        } label: {
            Text(title)
        }
    }

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a string label and no image.
    ///
    /// - Parameters:
    ///     - title: The label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - role: The role defining the semantic purpose of the tab.
    ///     - content: The view content of the tab.
    nonisolated public init<S, T>(_ title: S, value: T, role: TabRole?, @ViewBuilder content: () -> Content) where Value == T?, S: StringProtocol, T: Hashable {
        self.init(value: value, role: role) {
            content()
        } label: {
            Text(title)
        }
    }

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a localized string key label and no image.
    ///
    /// - Parameters:
    ///     - titleKey: The localized string key label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - content: The view content of the tab.
    nonisolated public init(_ titleKey: LocalizedStringKey, value: Value, @ViewBuilder content: () -> Content) {
        self.init(value: value) {
            content()
        } label: {
            Text(titleKey)
        }
    }

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a localized string key label and no image.
    ///
    /// - Parameters:
    ///     - titleKey: The localized string key label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - role: The role defining the semantic purpose of the tab.
    ///     - content: The view content of the tab.
    nonisolated public init(_ titleKey: LocalizedStringKey, value: Value, role: TabRole?, @ViewBuilder content: () -> Content) {
        self.init(value: value, role: role) {
            content()
        } label: {
            Text(titleKey)
        }
    }

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a localized string key label and no image.
    ///
    /// - Parameters:
    ///     - titleKey: The localized string key label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - content: The view content of the tab.
    nonisolated public init<T>(_ titleKey: LocalizedStringKey, value: T, @ViewBuilder content: () -> Content) where Value == T?, T: Hashable {
        self.init(value: value) {
            content()
        } label: {
            Text(titleKey)
        }
    }

    /// Creates a tab that the tab view presents when the tab view's selection
    /// matches the tab's value, with a localized string key label and no image.
    ///
    /// - Parameters:
    ///     - titleKey: The localized string key label for the tab's tab item.
    ///     - value: The `selection` value which selects this tab.
    ///     - role: The role defining the semantic purpose of the tab.
    ///     - content: The view content of the tab.
    nonisolated public init<T>(_ titleKey: LocalizedStringKey, value: T, role: TabRole?, @ViewBuilder content: () -> Content) where Value == T?, T: Hashable {
        self.init(value: value, role: role) {
            content()
        } label: {
            Text(titleKey)
        }
    }
}

@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
extension Tab where Value == Never, Content: View, Label == Text {

    /// Creates a new tab that you can use in a tab view, with a string label
    /// and no image.
    ///
    /// - Parameters:
    ///     - title: The label for the tab's tab item.
    ///     - content: The view content of the tab.
    public init<S>(_ title: S, @ViewBuilder content: () -> Content) where S: StringProtocol {
        self.init {
            content()
        } label: {
            Text(title)
        }
    }

    /// Creates a new tab that you can use in a tab view, with a string label
    /// and no image.
    ///
    /// - Parameters:
    ///     - title: The label for the tab's tab item.
    ///     - role: The role defining the semantic purpose of the tab.
    ///     - content: The view content of the tab.
    public init<S>(_ title: S, role: TabRole?, @ViewBuilder content: () -> Content) where S: StringProtocol {
        self.init(role: role) {
            content()
        } label: {
            Text(title)
        }
    }

    /// Creates a new tab that you can use in a tab view, with a localized
    /// string key label and no image.
    ///
    /// - Parameters:
    ///     - titleKey: The localized string key label for the tab's tab item.
    ///     - content: The view content of the tab.
    public init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content) {
        self.init {
            content()
        } label: {
            Text(titleKey)
        }
    }

    /// Creates a new tab that you can use in a tab view, with a localized
    /// string key label and no image.
    ///
    /// - Parameters:
    ///     - titleKey: The localized string key label for the tab's tab item.
    ///     - role: The role defining the semantic purpose of the tab.
    ///     - content: The view content of the tab.
    public init(_ titleKey: LocalizedStringKey, role: TabRole?, @ViewBuilder content: () -> Content) {
        self.init(role: role) {
            content()
        } label: {
            Text(titleKey)
        }
    }
}
