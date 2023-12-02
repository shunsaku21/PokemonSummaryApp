// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {
  /// ポケカ相場
  public static let forceItem = L10n.tr("Localizable", "forceItem", fallback: "ポケカ相場")
  /// シュミレーション
  public static let item = L10n.tr("Localizable", "item", fallback: "シュミレーション")
  /// 近くのポケカ情報
  public static let secondItem = L10n.tr("Localizable", "secondItem", fallback: "近くのポケカ情報")
  /// 環境デッキ
  public static let thirdItem = L10n.tr("Localizable", "thirdItem", fallback: "環境デッキ")
  /// まとめ
  public static let title = L10n.tr("Localizable", "title", fallback: "まとめ")
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
