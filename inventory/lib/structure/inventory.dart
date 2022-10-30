class Inventory {
  String name = "";
  String image_url = "";
  String description = "";

  Inventory(String name, String? image_url, String? description) {
    this.name = name;
    if (image_url != null) this.image_url = image_url;
    if (description != null) this.description = description;
  }
}
