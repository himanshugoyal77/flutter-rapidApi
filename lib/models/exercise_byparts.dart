// // To parse this JSON data, do
// //
// //     final exByParts = exByPartsFromJson(jsonString);

// import 'dart:convert';

// List<ExByParts> exByPartsFromJson(String str) => List<ExByParts>.from(json.decode(str).map((x) => ExByParts.fromJson(x)));

// String exByPartsToJson(List<ExByParts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class ExByParts {
//     ExByParts({
//         required this.bodyPart,
//         required this.equipment,
//         required this.gifUrl,
//         required this.id,
//         required this.name,
//         required this.target,
//     });

//     String bodyPart;
//     String equipment;
//     String gifUrl;
//     String id;
//     String name;
//     String target;

//     factory ExByParts.fromJson(Map<String, dynamic> json) => ExByParts(
//         bodyPart: json["bodyPart"],
//         equipment: json["equipment"],
//         gifUrl: json["gifUrl"],
//         id: json["id"],
//         name: json["name"],
//         target: json["target"],
//     );

//     Map<String, dynamic> toJson() => {
//         "bodyPart": bodyPart,
//         "equipment": equipment,
//         "gifUrl": gifUrl,
//         "id": id,
//         "name": name,
//         "target": target,
//     };
// }
