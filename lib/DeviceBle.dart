import 'dart:convert';

import 'Base.dart';

/**
 * Create by laoge
 * on 2020/7/16 0016
 */

class DeviceBle extends Base<DeviceBle> {
  String name;
  int rssi;
  String address;

  DeviceBle({
    required this.name,
    required this.rssi,
    required this.address,
  });

  factory DeviceBle.fromJson(Map<dynamic, dynamic> json) {
    return DeviceBle(
      name: json['name'],
      rssi: json['rssi'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = this.name;
    data['rssi'] = this.rssi;
    data['address'] = this.address;
    return data;
  }

  @override
  DeviceBle fromJson(String str) {
    return DeviceBle.fromJson(jsonDecode(str));
  }

  @override
  String toString() {
    return '{"name": "$name", "rssi": $rssi, "address": "$address"}';
  }
}
