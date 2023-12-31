// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Onboarding {
    /// Get started
    internal static let buttonTitle = L10n.tr("Localizable", "onboarding.buttonTitle", fallback: "Get started")
    /// Read more and stress less with our online book shopping app. Shop from anywhere you are and discover titles that you love. Happy reading!
    internal static let firstText = L10n.tr("Localizable", "onboarding.firstText", fallback: "Read more and stress less with our online book shopping app. Shop from anywhere you are and discover titles that you love. Happy reading!")
    /// Put your favourite books into a basket and buy it later. Thousands books are in your pocket
    internal static let secondText = L10n.tr("Localizable", "onboarding.secondText", fallback: "Put your favourite books into a basket and buy it later. Thousands books are in your pocket")
    /// We provide you a lot of books in different categories. Are you interested in?
    internal static let thirdText = L10n.tr("Localizable", "onboarding.thirdText", fallback: "We provide you a lot of books in different categories. Are you interested in?")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
