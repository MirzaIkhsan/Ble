/**
 * Create by laoge
 * on 2020/7/16 0016
 */

class BaseEvent {
  int code;
  dynamic data;

  BaseEvent({required this.code, required this.data});

  factory BaseEvent.fromJson(Map<dynamic, dynamic> json) {
    return BaseEvent(
      code: json['code'],
      data: json['data'],
    );
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['code'] = this.code;
    data['data'] = this.data;
    return data;
  }
}
