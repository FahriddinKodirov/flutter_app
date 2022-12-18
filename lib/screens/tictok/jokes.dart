class Jokes{
  String joke;
  String setup;
  String category;

  Jokes({required this.joke,
         required this.category,
         required this.setup});
  factory Jokes.fromjson(Map<String, dynamic>json){
    return Jokes(
      joke: json['joke']??'',
      setup: json['setup']??'',
      category: json['category']??'');
  }
}