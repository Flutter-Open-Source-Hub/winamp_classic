import 'package:envied/envied.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

@Envied(path: '.env/development.env', name: 'DevelopmentEnv')
@Envied(path: '.env/production.env', name: 'ProductionEnv')
final class Env {
  factory Env() => _instance;

  static final Env _instance = switch (kDebugMode) {
    true => _DevelopmentEnv(),
    false => _ProductionEnv(),
  };

  @EnviedField(varName: 'OPENAI_API_KEY', obfuscate: true)
  final String openAiApiKey = _instance.openAiApiKey;
}
