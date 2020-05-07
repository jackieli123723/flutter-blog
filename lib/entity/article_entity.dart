class ArticleEntity {
  String msg;
  int code;
  Data data;

  ArticleEntity({this.msg, this.code, this.data});

  ArticleEntity.fromJson(Map<String, dynamic> json) {
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
  List<ListItem> list;
  int page;
  int pageSize;
  int totalRecords;
  int pages;

  Data({this.list, this.page, this.pageSize, this.totalRecords, this.pages});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = new List<ListItem>();
      json['list'].forEach((v) {
        list.add(new ListItem.fromJson(v));
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

class ListItem {
  String sId;
  int type;
  String title;
  String content;
  int commentCount;
  int stars;
  String creatDate;
  String placeholderImg;
  String backgroundImg;
  int pv;
  String id;

  ListItem(
      {this.sId,
      this.type,
      this.title,
      this.content,
      this.commentCount,
      this.stars,
      this.creatDate,
      this.placeholderImg,
      this.backgroundImg,
      this.pv,
      this.id});

  ListItem.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    title = json['title'];
    content = json['content'];
    commentCount = json['comment_count'];
    stars = json['stars'];
    creatDate = json['creat_date'];
    placeholderImg = json['placeholder_img'];
    backgroundImg = json['background_img'];
    pv = json['pv'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['type'] = this.type;
    data['title'] = this.title;
    data['content'] = this.content;
    data['comment_count'] = this.commentCount;
    data['stars'] = this.stars;
    data['creat_date'] = this.creatDate;
    data['placeholder_img'] = this.placeholderImg;
    data['background_img'] = this.backgroundImg;
    data['pv'] = this.pv;
    data['id'] = this.id;
    return data;
  }
}
