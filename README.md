# localization

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## Localization

To extract to arb:

`flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/localizations/l10n lib/localizations/localizations.dart`

To generate intl from arb:

`flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/localizations/l10n \ --no-use-deferred-loading lib/localizations/localizations.dart lib/localizations/l10n/intl_*.arb`
