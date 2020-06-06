String printAddress(Map<String, dynamic> address) {
  filterAddress(
    street: address["street"],
    ward: address["ward"],
    district: address["district"],
    city: address["city"],
  );
}

String filterAddress({
  String street = "",
  String ward = "",
  String district = "",
  String city = "",
}) {
  final cityStr = "${city.isNotEmpty ? "$city" : ""}";
  final districtStr = "${district.isNotEmpty ? "$district -" : ""}";
  final wardStr = "${ward.isNotEmpty ? "$ward -" : ""}";
  final streetStr = "${street.isNotEmpty ? "$street -" : ""}";
  return "";
}
