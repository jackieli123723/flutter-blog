class Article {
  final String backgroundImg;
  final int commentCount;
  final String content;
  final String createDate;
  final String id;
  final int pv;
  final int stars;
  final String title;
  final int type;
  
  Article({
   this.backgroundImg,
   this.commentCount,
   this.content,
   this.createDate,
   this.id,
   this.pv,
   this.stars,
   this.title,
   this.type
  })
}


final List<Article> articles = [
  Post(
 	backgroundImg: "http://static.lilidong.cn/blog/upload/bg200-1562933974213.png",
  commentCount: 12,
  content: "在构建一定大小的SPA（单页面应用程序）时，会发生与几乎100％API服务器的通信。在这种情况dsfdsf",
  createDate: "1562933387000",
  id: "5d287ad94fd6125d8b30efe0",
  pv: 1465,
  stars: 3,
  title: "Vue CLI创建的项目中使用axios-mock-adapter实现单元测试",
  type: 1,
  ),
    Post(
 	backgroundImg: "http://static.lilidong.cn/blog/upload/bg200-1562933974213.png",
  commentCount: 12,
  content: "<p>在构建一定大小的SPA（单页面应用程序）时，会发生与几乎100％API服务器的通信。在这种情况</p>sdfsdfdsf",
  createDate: "1562933387000",
  id: "5d287ad94fd6125d8b30efe0",
  pv: 14625,
  stars: 3,
  title: "Vue CLI创建的项目中使用axios-mock-adapter实现单元测试",
  type: 1,
  )

]




