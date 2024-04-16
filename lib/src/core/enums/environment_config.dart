enum Environment { dev, prod, qs }

EnvironmentConfig? env;

class EnvironmentConfig {
  final Environment? environment;

  EnvironmentConfig._init({
    this.environment,
  });

  static void init({
    required Environment environment,
  }) {
    env ??= EnvironmentConfig._init(
      environment: environment,
    );
  }
}
