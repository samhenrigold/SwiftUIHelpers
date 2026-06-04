//
//  ContentUnavailableView+init.swift
//  SwiftUIHelpers
//
//  Created by Sam on 2026-06-03.
//

import SwiftUI

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, *)
extension ContentUnavailableView where Label == SwiftUI.Label<Text, Image>, Description == Text?, Actions == EmptyView {

    /// Creates a content unavailable view from a `LocalizedError`.
    ///
    /// Use this initializer to display a standardized error state in your app's UI.
    /// The view uses the error's `errorDescription` as its title and the `failureReason`
    /// (or `recoverySuggestion` as a fallback) as its description.
    ///
    ///     ContentUnavailableView(error)
    ///
    /// - Parameter error: The error to present.
    nonisolated public init(_ error: some LocalizedError) {
        let title = error.errorDescription ?? error.localizedDescription
        let descriptionParts = [error.recoverySuggestion, error.failureReason].compactMap { $0 }
        let description = descriptionParts.isEmpty ? nil : Text(descriptionParts.joined(separator: "\n\n"))
        self.init(title, systemImage: "exclamationmark.triangle", description: description)
    }
}
