class Expense {
  int id;
  String name;
  String category;
  double amount;
  DateTime date;

  Expense(
      {required this.id,
      required this.name,
      required this.category,
      required this.amount,
      required this.date});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'amount': amount,
      'date': date,
    };
  }
}
