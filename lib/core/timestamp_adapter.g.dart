// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimestampAdapterAdapter extends TypeAdapter<TimestampAdapter> {
  @override
  final int typeId = 0;

  @override
  TimestampAdapter read(BinaryReader reader) {
    return TimestampAdapter();
  }

  @override
  void write(BinaryWriter writer, TimestampAdapter obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimestampAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
