import 'package:pisos_calculator/helpers/parse_helper.dart';
import 'package:pisos_calculator/models/floor_model.dart';
import 'package:pisos_calculator/models/result_model.dart';
import 'package:pisos_calculator/models/room_model.dart';

class CalculatorController {
  final RoomModel _room = RoomModel();
  final FloorModel _floor = FloorModel();

  void setRoomWidth(String value) {
    _room.width = ParseHelper.toDouble(value);
  }

  void setRoomLength(String value) {
    _room.width = ParseHelper.toDouble(value);
  }

  void setFloorWidth(String value) {
    _room.width = ParseHelper.toDouble(value);
  }

  void setFloorLength(String value) {
    _room.width = ParseHelper.toDouble(value);
  }

  void setFloorPrice(String value) {
    _floor.price = ParseHelper.toDouble(value);
  }

  ResultModel calculate() {
    return ResultModel(
      piecesByWidth: (_room.width / _floor.width).ceil(),
      piecesByLength: (_room.length / _floor.length).ceil(),
      areaFloor: _floor.width * _floor.width,
      price: _floor.price * (_floor.width * _floor.width),
    );
  }
}
