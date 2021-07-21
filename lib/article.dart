// class Article {
//   // Source source;
//   final String sellerNameO;
//   final String urlToImage;
//   final int price;
//
//   Article({
//     // required this.source,
//     required this.sellerNameO,
//     required this.urlToImage,
//     required this.price,
//   });
//
//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//       // source: Source.fromJson(json["source"]),
//       sellerNameO: json['seller_name_o'] as String,
//       urlToImage: json['image'] as String,
//       price: json['price'] as int,
//     );
//   }
// }

// class Source {
//   final String id;
//   final String seller_name;
//
//   Source({required this.id, required this.seller_name});
//
//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       id: json["id"] as String,
//       seller_name: json["name"] as String,
//     );
//   }
// }
//
//
//
// List<Article> parseArticles(String responseBody) {
//   final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
//   return parsed.map<Article>((json) => Article.fromJson(json)).toList();
// }
//
// Future<List<Article>> fetchPhotos(http.Client client) async {
//   final response =
//       await client.get(Uri.parse('./lib/assets/cars-and-dealers-search.json'));
//   return compute(parseArticles, response.body);
// }
