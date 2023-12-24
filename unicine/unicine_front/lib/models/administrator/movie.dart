// To parse this JSON data, do
//
//     final movie = movieFromMap(jsonString);

import 'dart:convert';

class Movie {
  Movie({
    this.idPelicula,
    this.nombre,
    this.imagen,
    this.trailer,
    this.genero,
    this.sinopsis,
    this.reparto,
    this.estadoPelicula,
    // this.listaFuncionSala,
  });

  int? idPelicula;
  String? nombre;
  String? imagen;
  String? trailer;
  String? genero;
  String? sinopsis;
  String? reparto;
  String? estadoPelicula;
  // List<ListaFuncionSala>? listaFuncionSala;

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
        idPelicula: json["idPelicula"],
        nombre: json["nombre"],
        imagen: json["imagen"],
        trailer: json["trailer"],
        genero: json["genero"],
        sinopsis: json["sinopsis"],
        reparto: json["reparto"],
        estadoPelicula: json["estadoPelicula"],
        // listaFuncionSala: List<ListaFuncionSala>.from(json["listaFuncionSala"].map((x) => ListaFuncionSala.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "idPelicula": idPelicula,
        "nombre": nombre,
        "imagen": imagen,
        "trailer": trailer,
        "genero": genero,
        "sinopsis": sinopsis,
        "reparto": reparto,
        "estadoPelicula": estadoPelicula,
        // "listaFuncionSala": List<dynamic>.from(listaFuncionSala.map((x) => x.toMap())),
      };
}

// class ListaFuncionSala {
//     ListaFuncionSala({
//         this.idFuncionSala,
//         this.listaCompras,
//     });

//     int? idFuncionSala;
//     List<ListaCompra>? listaCompras;

//     factory ListaFuncionSala.fromJson(String str) => ListaFuncionSala.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory ListaFuncionSala.fromMap(Map<String, dynamic> json) => ListaFuncionSala(
//         idFuncionSala: json["idFuncionSala"],
//         listaCompras: List<ListaCompra>.from(json["listaCompras"].map((x) => ListaCompra.fromMap(x))),
//     );

//     Map<String, dynamic> toMap() => {
//         "idFuncionSala": idFuncionSala,
//         "listaCompras": List<dynamic>.from(listaCompras.map((x) => x.toMap())),
//     };
// }

// class ListaCompra {
//     ListaCompra({
//         @required this.idCompra,
//         @required this.fechaCompra,
//         @required this.metodoPago,
//         @required this.subtotal,
//         @required this.total,
//         @required this.listaEntradas,
//         @required this.listaConfiteriaCompra,
//     });

//     int idCompra;
//     DateTime fechaCompra;
//     String metodoPago;
//     int subtotal;
//     int total;
//     List<ListaEntrada> listaEntradas;
//     List<ListaConfiteriaCompra> listaConfiteriaCompra;

//     factory ListaCompra.fromJson(String str) => ListaCompra.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory ListaCompra.fromMap(Map<String, dynamic> json) => ListaCompra(
//         idCompra: json["idCompra"],
//         fechaCompra: DateTime.parse(json["fechaCompra"]),
//         metodoPago: json["metodoPago"],
//         subtotal: json["subtotal"],
//         total: json["total"],
//         listaEntradas: List<ListaEntrada>.from(json["listaEntradas"].map((x) => ListaEntrada.fromMap(x))),
//         listaConfiteriaCompra: List<ListaConfiteriaCompra>.from(json["listaConfiteriaCompra"].map((x) => ListaConfiteriaCompra.fromMap(x))),
//     );

//     Map<String, dynamic> toMap() => {
//         "idCompra": idCompra,
//         "fechaCompra": fechaCompra.toIso8601String(),
//         "metodoPago": metodoPago,
//         "subtotal": subtotal,
//         "total": total,
//         "listaEntradas": List<dynamic>.from(listaEntradas.map((x) => x.toMap())),
//         "listaConfiteriaCompra": List<dynamic>.from(listaConfiteriaCompra.map((x) => x.toMap())),
//     };
// }

// class ListaConfiteriaCompra {
//     ListaConfiteriaCompra({
//         @required this.idConfiteriaCompra,
//         @required this.precio,
//         @required this.unidades,
//     });

//     int idConfiteriaCompra;
//     int precio;
//     int unidades;

//     factory ListaConfiteriaCompra.fromJson(String str) => ListaConfiteriaCompra.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory ListaConfiteriaCompra.fromMap(Map<String, dynamic> json) => ListaConfiteriaCompra(
//         idConfiteriaCompra: json["idConfiteriaCompra"],
//         precio: json["precio"],
//         unidades: json["unidades"],
//     );

//     Map<String, dynamic> toMap() => {
//         "idConfiteriaCompra": idConfiteriaCompra,
//         "precio": precio,
//         "unidades": unidades,
//     };
// }

// class ListaEntrada {
//     ListaEntrada({
//         @required this.idEntrada,
//         @required this.filaSilla,
//         @required this.columnaSilla,
//         @required this.precio,
//     });

//     int idEntrada;
//     String filaSilla;
//     String columnaSilla;
//     int precio;

//     factory ListaEntrada.fromJson(String str) => ListaEntrada.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory ListaEntrada.fromMap(Map<String, dynamic> json) => ListaEntrada(
//         idEntrada: json["idEntrada"],
//         filaSilla: json["filaSilla"],
//         columnaSilla: json["columnaSilla"],
//         precio: json["precio"],
//     );

//     Map<String, dynamic> toMap() => {
//         "idEntrada": idEntrada,
//         "filaSilla": filaSilla,
//         "columnaSilla": columnaSilla,
//         "precio": precio,
//     };
// }
