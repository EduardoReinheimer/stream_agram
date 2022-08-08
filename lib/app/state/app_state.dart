import 'package:flutter/material.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'models/models.dart';

import 'demo_users.dart';

class AppState extends ChangeNotifier {
  AppState({
    required StreamFeedClient client,
  }) : _client = client;

  late final StreamFeedClient _client;
}
