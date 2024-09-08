class Business {
  final String id;
  final String name;
  final String address;
  final String phoneNumber;
  final String category;
  final String description;
  final double rating;

  Business({
    required this.id,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.category,
    required this.description,
    this.rating = 0.0,
  });
}
