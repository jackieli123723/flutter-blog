class ArticleDetailEntity {
  String msg;
  int code;
  Data data;

  ArticleDetailEntity({this.msg, this.code, this.data});

  ArticleDetailEntity.fromJson(Map<String, dynamic> json) {
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
  String sId;
  int type;
  String title;
  String content;
  int commentCount;
  int stars;
  String creatDate;
  String updateDate;
  int isDelete;
  String placeholderImg;
  String backgroundImg;
  int iV;
  int pv;

  Data(
      {this.sId,
      this.type,
      this.title,
      this.content,
      this.commentCount,
      this.stars,
      this.creatDate,
      this.updateDate,
      this.isDelete,
      this.placeholderImg,
      this.backgroundImg,
      this.iV,
      this.pv});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    title = json['title'];
    content = json['content'];
    commentCount = json['comment_count'];
    stars = json['stars'];
    creatDate = json['creat_date'];
    updateDate = json['update_date'];
    isDelete = json['is_delete'];
    placeholderImg = json['placeholder_img'];
    backgroundImg = json['background_img'];
    iV = json['__v'];
    pv = json['pv'];
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
    data['update_date'] = this.updateDate;
    data['is_delete'] = this.isDelete;
    data['placeholder_img'] = this.placeholderImg;
    data['background_img'] = this.backgroundImg;
    data['__v'] = this.iV;
    data['pv'] = this.pv;
    return data;
  }
}
