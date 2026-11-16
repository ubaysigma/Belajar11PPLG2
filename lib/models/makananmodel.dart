// To parse this JSON data, do
//
//     final makananModels = makananModelsFromJson(jsonString);

import 'dart:convert';

List<MakananModels> makananModelsFromJson(String str) => List<MakananModels>.from(json.decode(str).map((x) => MakananModels.fromJson(x)));

String makananModelsToJson(List<MakananModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MakananModels {
    final String name;
    final String gambar;
    final String rating;
    final String kategori;
    final String harga;
    final String deskripsi;
    final String id;

    MakananModels({
        required this.name,
        required this.gambar,
        required this.rating,
        required this.kategori,
        required this.harga,
        required this.deskripsi,
        required this.id,
    });

    factory MakananModels.fromJson(Map<String, dynamic> json) => MakananModels(
        name: json["name"],
        gambar: json["gambar"],
        rating: json["rating"],
        kategori: json["kategori"],
        harga: json["harga"],
        deskripsi: json["deskripsi"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "gambar": gambar,
        "rating": rating,
        "kategori": kategori,
        "harga": harga,
        "deskripsi": deskripsi,
        "id": id,
    };
}
