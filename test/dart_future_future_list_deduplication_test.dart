import 'package:dart_future_future_list_deduplication/dart_future_future_list_deduplication.dart';
import 'package:test/test.dart';

void main() {
  test('deduplicateFutureList removes duplicates from a future list', () async {
    var futures = [
      Future.value(1),
      Future.value(2),
      Future.value(1),
      Future.value(3)
    ];
    var result = await deduplicateFutureList(futures);
    expect(result, equals([1, 2, 3]));
  });

  test('deduplicateFutureList handles an empty list', () async {
    var futures = <Future<int>>[];
    var result = await deduplicateFutureList(futures);
    expect(result, isEmpty);
  });
}
