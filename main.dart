import 'package:dotenv/dotenv.dart';
import 'package:ratel/core/server.dart';
import 'package:ratel/database/database.dart';

import 'config/di.dart';
import 'internal/handlers/users_handler.dart';

void main() async {
  var env = DotEnv()..load();

  final server = RatelServer(
    port: 8080,
    handlers: [UsersHandler],
    database: RatelDatabase(
      host: env['DB_HOST']!,
      databaseName: env['DB_NAME']!,
      username: env['DB_USER']!,
      password: env['DB_PASSWORD']!,
      port: env['DB_PORT']!,
    ),
    bindings: GlobalBindings(),
  );

  server.startServer();
}
