import 'dart:convert';
import 'package:tmandtyback/model/paymentMethod.dart';
import 'package:tmandtyback/model/subscription.dart';
import 'package:tmandtyback/model/user.dart';
import 'package:tmandtyback/tmandtyback.dart';

Payment PaymentFromJson(String jsonPayment) => Payment.fromJson(json.decode(jsonPayment));

@Table(name: "Pago")
class Payment {
  
  final int id;
  final Subscription idSubscription;
  final User idUser;
  final PaymentMethod idPaymentMethod;
  final int amount;

  //Constructor del pago
  Payment({this.id, this.idSubscription, this.idUser, this.idPaymentMethod, this.amount});

  factory Payment.fromJson(var json) => Payment(
    id:             json["IdPago"] as int,
    idSubscription: Subscription.fromJson(json["IdSuscripcion"]),
    idUser:         User.fromJson(json["IdUsuario"]),
    idPaymentMethod:PaymentMethod.fromJson(json["IdFormaPago"]),
    amount:         json["Monto"] as int
  );

  Map<String, dynamic> toJson() => {
    "IdPago":       id,
    "IdSuscripcion":idSubscription.toJson(),
    "IdUsuario":    idUser,
    "IdFormaPago":  idPaymentMethod,
    "Monto":        amount
  };

}