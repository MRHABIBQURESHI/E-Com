class items {
  int id;
  String Name;

  int Price;
  int Qty;
  bool IsFav;

  items({
 
    required this.id,
    required this.Name,
    required this.Price,
    required this.Qty,
    this.IsFav = false,
  });
}
