
class ContactGroup{
 static const String FAMILY = 'Family';
 static const String FRIEND = 'Friend';
 static const String COWORKER = 'Coworker';
 static const String MY_CONTACT = 'Friend';
}

class Contact {
  final String id;
  final String name;
  final String? address;
  final List<String> number;
  final String? imageUrl;
  final String? email;
  final String? groups;
  bool isFavorite;

  Contact({
    required this.id,
    required this.name,
    required this.number,
    this.address,
    this.imageUrl,
    this.email,
    this.groups,
    this.isFavorite = false,
  });


}