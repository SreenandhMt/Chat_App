import 'package:hive_ce_flutter/adapters.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'timestamp_adapter.g.dart';

@HiveType(typeId: 0)
class TimestampAdapter extends TypeAdapter<Timestamp> {
  @override
  final int typeId = 0;

  @override
  Timestamp read(BinaryReader reader) {
    return Timestamp.fromMillisecondsSinceEpoch(reader.readInt());
  }

  @override
  void write(BinaryWriter writer, Timestamp obj) {
    writer.writeInt(obj.millisecondsSinceEpoch);
  }
}
