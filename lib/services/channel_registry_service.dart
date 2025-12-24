import 'package:appwrite/appwrite.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/services/common/event_type.dart';
import 'package:bushido/services/realtime_service.dart';

class ChannelRegistryService {
  late final RealtimeService _realtimeService;
  final Map<EventType, List<Function(RealtimeMessage)>> _handlers = {};

  void init() {
    _realtimeService = locator<RealtimeService>();
    _realtimeService.messages.listen(_parse);
  }

  void register(EventType type, Function(RealtimeMessage) handler) {
    _handlers[type] ??= [];
    _handlers[type]!.add(handler);
  }

  void _parse(RealtimeMessage message) {
    final eventType = _toRealtimeChannel(message);
    final handlers = _handlers[eventType] ?? [];

    for (final handler in handlers) {
      handler(message);
    }
  }

  // 💁‍♂️ Helpers
  EventType? _toRealtimeChannel(RealtimeMessage realtimeMessage) {
    final channelString = realtimeMessage.channels.first;
    return EventType.values.firstWhere(
      (type) => channelString.contains(type.name),
      orElse: () => EventType.undefined,
    );
  }
}
