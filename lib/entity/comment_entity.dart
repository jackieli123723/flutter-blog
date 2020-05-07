class CommentEntity {
  String msg;
  int code;
  Data data;

  CommentEntity({this.msg, this.code, this.data});

  CommentEntity.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    code = json['code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  List<List> list;
  int page;
  int pageSize;
  int totalRecords;
  int pages;

  Data({this.list, this.page, this.pageSize, this.totalRecords, this.pages});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = new List<List>();
      json['list'].forEach((v) {
        list.add(new List.fromJson(v));
      });
    }
    page = json['page'];
    pageSize = json['pageSize'];
    totalRecords = json['totalRecords'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    data['page'] = this.page;
    data['pageSize'] = this.pageSize;
    data['totalRecords'] = this.totalRecords;
    data['pages'] = this.pages;
    return data;
  }
}

class List {
  String sId;
  String articleId;
  String username;
  String email;
  String website;
  int stars;
  String content;
  String creatDate;
  String id;

  List(
      {this.sId,
      this.articleId,
      this.username,
      this.email,
      this.website,
      this.stars,
      this.content,
      this.creatDate,
      this.id});

  List.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    articleId = json['articleId'];
    username = json['username'];
    email = json['email'];
    website = json['website'];
    stars = json['stars'];
    content = json['content'];
    creatDate = json['creat_date'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['articleId'] = this.articleId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['website'] = this.website;
    data['stars'] = this.stars;
    data['content'] = this.content;
    data['creat_date'] = this.creatDate;
    data['id'] = this.id;
    return data;
  }
}
