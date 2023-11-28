class User{
  late int? userId;
  late String? password;
  late String? username;
  late String? email;
  late String? fullname;
  late String? birthdate;
  late int? phone;
  late String? country;



  User({this.userId,this.password,this.username, this.email,
  this.fullname, this.birthdate, this.phone, this.country});

  User.fromMap(dynamic obj){
    this.userId = obj['userId'];
    this.password = obj['password'];
    this.username = obj['username'];
    this.email = obj['email'];
    this.fullname = obj['fullname'];
    this.birthdate = obj['birthdate'];
    this.phone = obj['phone'];
    this.country = obj['country'];

  }


  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'password' : password,
      'username' : username,
      'email' : email,
      'fullname' : fullname,
      'birthdate' : birthdate,
      'phone' : phone,
      'country' : country,

    };
    return map;
  }

}