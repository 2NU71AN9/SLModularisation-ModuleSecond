//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  /// This `R.color` struct is generated, and contains static references to 15 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")
    /// Color `prime`.
    static let prime = Rswift.ColorResource(bundle: R.hostingBundle, name: "prime")
    /// Color `text_gray1`.
    static let text_gray1 = Rswift.ColorResource(bundle: R.hostingBundle, name: "text_gray1")
    /// Color `text_gray2`.
    static let text_gray2 = Rswift.ColorResource(bundle: R.hostingBundle, name: "text_gray2")
    /// Color `text_gray3`.
    static let text_gray3 = Rswift.ColorResource(bundle: R.hostingBundle, name: "text_gray3")
    /// Color `text_gray4`.
    static let text_gray4 = Rswift.ColorResource(bundle: R.hostingBundle, name: "text_gray4")
    /// Color `text_gray5`.
    static let text_gray5 = Rswift.ColorResource(bundle: R.hostingBundle, name: "text_gray5")
    /// Color `view_able1`.
    static let view_able1 = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_able1")
    /// Color `view_able_no1`.
    static let view_able_no1 = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_able_no1")
    /// Color `view_background`.
    static let view_background = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_background")
    /// Color `view_gray1`.
    static let view_gray1 = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_gray1")
    /// Color `view_gray2`.
    static let view_gray2 = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_gray2")
    /// Color `view_gray3`.
    static let view_gray3 = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_gray3")
    /// Color `view_gray4`.
    static let view_gray4 = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_gray4")
    /// Color `view_gray5`.
    static let view_gray5 = Rswift.ColorResource(bundle: R.hostingBundle, name: "view_gray5")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "prime", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func prime(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.prime, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "text_gray1", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func text_gray1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.text_gray1, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "text_gray2", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func text_gray2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.text_gray2, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "text_gray3", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func text_gray3(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.text_gray3, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "text_gray4", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func text_gray4(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.text_gray4, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "text_gray5", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func text_gray5(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.text_gray5, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_able1", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_able1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_able1, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_able_no1", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_able_no1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_able_no1, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_background", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_background(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_background, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_gray1", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_gray1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_gray1, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_gray2", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_gray2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_gray2, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_gray3", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_gray3(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_gray3, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_gray4", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_gray4(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_gray4, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "view_gray5", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func view_gray5(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.view_gray5, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "prime", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func prime(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.prime.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "text_gray1", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func text_gray1(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.text_gray1.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "text_gray2", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func text_gray2(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.text_gray2.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "text_gray3", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func text_gray3(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.text_gray3.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "text_gray4", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func text_gray4(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.text_gray4.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "text_gray5", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func text_gray5(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.text_gray5.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_able1", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_able1(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_able1.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_able_no1", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_able_no1(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_able_no1.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_background", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_background(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_background.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_gray1", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_gray1(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_gray1.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_gray2", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_gray2(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_gray2.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_gray3", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_gray3(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_gray3.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_gray4", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_gray4(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_gray4.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "view_gray5", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func view_gray5(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.view_gray5.name)
    }
    #endif

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      // There are no resources to validate
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R {
  fileprivate init() {}
}
