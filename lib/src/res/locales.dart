part of 'resources.dart';

/// [ResLocales] is deprecated since 0.2.0 and will be removed in next version.
@Deprecated('Use [AcResLocales] instead. [ResLocales] is deprecated will be removed in next version.')
abstract base class ResLocales {
  static const Locale english = Locale('en', 'US');
  static const Locale czech = Locale('cs', 'CZ');
  static const Locale french = Locale('fr', 'FR');
  static const Locale german = Locale('de', 'DE');
  static const Locale ukrainian = Locale('uk', 'UA'); // uk_UA
  static const Locale russian = Locale('ru', 'RU');
  static const Locale italian = Locale('it', 'IT');
  static const Locale spanish = Locale('es', 'ES');
  static const Locale slovak = Locale('sk', 'SK');
  static const Locale macedonian = Locale('mk', 'MK');
  static const Locale chineseSimplified = Locale('zh', 'CN');
  static const Locale chineseTraditional = Locale('zh', 'TW');

  static Locale get defaultLocale => ResLocales.czech;

  static const List<Locale> locales = [czech, english, ukrainian, russian];
  static const List<String> languages = ['cs', 'en', 'uk', 'ru'];

  // return locale by lang code or default (czech) if not found
  static Locale byLangCode(String? langCode) => locales.firstWhere((l) => l.languageCode == langCode, orElse: () => defaultLocale);
}
