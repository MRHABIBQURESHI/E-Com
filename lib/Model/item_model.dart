class items {
  int id;
  String Name;
  int Price;
  int Qty;
  bool IsFAv;

  items({
 required this.id,
 required this.Name,
 required this.Price,
 required this.Qty,
this.IsFAv = false,
  });
}