class items {
  int id;
  String Name;
  String image;
  int Price;
  int Qty;
  bool IsFav;

  items({
    required this.image,
    required this.id,
    required this.Name,
    required this.Price,
    required this.Qty,
    this.IsFav = false,
  });
}
