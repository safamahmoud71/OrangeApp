class Terms_Model {
  String? code;
  Data? data;

  Terms_Model({this.code, this.data});

  Terms_Model.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? terms;

  Data({this.terms});

  Data.fromJson(Map<String, dynamic> json) {
    terms = json['Terms'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Terms'] = this.terms;
    return data;
  }
}