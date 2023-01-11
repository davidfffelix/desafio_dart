class AddressModel {
  final String street;
  final String district;
  final String city;
  final String state;
  final String number;
  final String zipCode;
  final String? complement;

  AddressModel({
    required this.street,
    required this.district,
    required this.city,
    required this.state,
    required this.number,
    required this.zipCode,
    this.complement,
  });
}
