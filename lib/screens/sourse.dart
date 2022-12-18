class Sourse{
  String? id;
  String? name;

  Sourse({required this.id, 
          required this.name});

  factory Sourse.fromjson(Map<String, dynamic> json){
    return Sourse(
         id : json['id']?? '', 
         name: json['name']?? ''
         );
  }
}