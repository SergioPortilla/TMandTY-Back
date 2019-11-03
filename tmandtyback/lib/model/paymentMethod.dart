import 'dart:convert';
import 'package:tmandtyback/tmandtyback.dart';

PaymentMethod PaymentMethodFromJson(String jsonPaymentMethod) => PaymentMethod.fromJson(json.decode(jsonPaymentMethod));

@Table(name: "FormaPago")
class PaymentMethod{
  
  final int id;
  final String description;

  //Constructor del metodo de pago
  PaymentMethod({this.id, this.description});

  factory PaymentMethod.fromJson(var json) => PaymentMethod(
    id:           json["Id"] as int,
    description:  json["Descripcion"] as String,
  );

  Map<String, dynamic> toJson() => {
    "Id":         id,
    "Descripcion":description
  };

}