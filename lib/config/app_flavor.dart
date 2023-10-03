// 1
enum AppFlavor { dev, stg, prod }

// 2
extension AppFlavorExtension on AppFlavor {
  String get apiURL {
    switch (this) {
      case AppFlavor.dev:
        return "https://example.api.dev.com/";
      case AppFlavor.stg:
        return "https://example.api.stg.com/";
      case AppFlavor.prod:
        return "https://example.api.com/";
    }
  }
}
