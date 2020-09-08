class Comments {
  int postId;
  int id;
  String name;
  String email;
  String body;

  // Constructor of Comments Class
  Comments({this.postId, this.id, this.name, this.email, this.body});

  Comments.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }
}
