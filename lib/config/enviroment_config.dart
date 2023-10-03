class EnvironmentConfig {
  static const appName =
      String.fromEnvironment('APP_NAME', defaultValue: 'app_chat_ui');
  static const appSuffix = String.fromEnvironment('APP_SUFFIX');
}
