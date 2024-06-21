import '/backend/schema/structs/index.dart';

double? differenceValue(
  double? initialValue,
  double? subtractedBy,
) {
  // return initialValue argument - subtractedBy argument
  if (initialValue == null || subtractedBy == null) {
    return null;
  }
  return initialValue - subtractedBy;
}

double stringtoDouble(String inputString) {
  // convert string to double
  return double.parse(inputString);
}

double inverseDouble(double inputDouble) {
  // convert positive double to negative double
  return -inputDouble;
}

double? getBudgetProgress(
  double? usedAmount,
  double? totalAmount,
) {
  // Get percentage of double variables usedAmount from totalAmount in 2 decimal places
  if (usedAmount == null || totalAmount == null || totalAmount == 0) {
    return null;
  }
  final percentage = usedAmount / totalAmount;
  return double.parse(percentage.toStringAsFixed(2));
}

String? doubleToPercentage(double? inputPercentage) {
  if (inputPercentage == null) {
    return null;
  }

  final percentage = (inputPercentage * 100).toStringAsFixed(2);
  return '$percentage%';
}

double? summarizeAmount(List<double>? expenses) {
  // summarize all expenses
  if (expenses == null || expenses.isEmpty) {
    return null;
  }
  double sum = 0.0;
  for (final expense in expenses) {
    sum += expense;
  }
  return sum;
}

List<CategoryStruct>? getCategoryAmountCopy(
  List<TransactionStruct>? transactionList,
  DateTime currentDate,
  List<CategoryStruct>? categoryList,
) {
  // summarize transactionAmount field in transactionList if transactionCategory == category
  if (transactionList == null || categoryList == null) {
    return null;
  }

  for (var category in categoryList) {
    int totalAmount = 0;

    for (final transaction in transactionList) {
      if (transaction.transactionCategory == category.categoryName &&
          transaction.transactionDate!.month == currentDate.month &&
          transaction.transactionDate!.year == currentDate.year) {
        totalAmount += transaction.transactionAmount;
      }
    }

    category.categoryAmount = totalAmount;
  }

  return categoryList;
}

double? getTotalBudgetAmount(
  List<BudgetStruct>? budgetList,
  double? totalBudget,
) {
  if (budgetList == null || totalBudget == null) {
    return null;
  }

  double totalAmount = 0.0;

  for (final budget in budgetList) {
    totalAmount += budget.budgetAmount;
  }

  totalBudget = totalAmount;

  return totalBudget;
}

double? getUsedBudget(
  List<TransactionStruct>? transactionList,
  String? category,
  BudgetStruct? budgetList,
  DateTime? currentDate,
) {
  // summarize transactionAmount field in transactionList if transactionCategory == category
  if (transactionList == null ||
      category == null ||
      budgetList == null ||
      currentDate == null) {
    return null;
  }

  double totalAmount = 0.0;

  for (final transaction in transactionList) {
    if (transaction.transactionCategory == category &&
        transaction.transactionDate?.month == currentDate.month) {
      totalAmount += transaction.transactionAmount;
    }
  }

  budgetList.budgetUsedAmount = totalAmount;

  return totalAmount;
}

double? getAccountAmount(
  String? account,
  String? type,
  List<TransactionStruct>? transactionList,
) {
  // summarize transactionAmount field in transactionList if transactionCategory == category
  if (transactionList == null || account == null || type == null) {
    return null;
  }

  double totalAmount = 0.0;

  for (final transaction in transactionList) {
    if (transaction.transactionAccount == account &&
        transaction.transactionType == type) {
      totalAmount += transaction.transactionAmount;
    }
  }

  return totalAmount;
}

double? getTotalAmount(
  List<TransactionStruct>? transactionList,
  String? type,
) {
  // summarize transactionAmount field in transactionList if transactionCategory == category
  if (transactionList == null || type == null) {
    return null;
  }

  double totalAmount = 0.0;

  for (final transaction in transactionList) {
    if (transaction.transactionType == type) {
      totalAmount += transaction.transactionAmount;
    }
  }

  return totalAmount;
}

double? maxProgress(double? progressInput) {
  if (progressInput == null) {
    return null;
  }

  if (progressInput > 1.0) {
    return 1.0;
  } else {
    return progressInput;
  }
}

double? getTotalUsedBudget(
  List<BudgetStruct>? budgetList,
  double? totalUsedBudget,
) {
  if (budgetList == null || totalUsedBudget == null) {
    return 0;
  }

  double totalAmount = 0.0;

  for (final budget in budgetList) {
    totalAmount += budget.budgetUsedAmount;
  }

  totalUsedBudget = totalAmount;

  return totalUsedBudget;
}

List<TransactionStruct>? sortFilterTransaction(
  List<TransactionStruct>? transactionList,
  DateTime? selectedDate,
) {
  // filter transactionList element by selectedDate and sort by transactionDate
  if (transactionList == null || selectedDate == null) {
    return transactionList;
  }

  final filteredList = transactionList.where((transaction) {
    return transaction.transactionDate?.year == selectedDate.year &&
        transaction.transactionDate?.month == selectedDate.month &&
        transaction.transactionDate?.day == selectedDate.day;
  }).toList();

  filteredList.sort((a, b) {
    final aDate = a.transactionDate;
    final bDate = b.transactionDate;
    return bDate!.compareTo(aDate!);
  });

  return filteredList;
}

List<CategoryStruct>? expenseOrIncome(
  bool type,
  List<CategoryStruct>? expenseList,
  List<CategoryStruct>? incomeList,
) {
  // return expenseList if false and incomeList otherwise
  if (type) {
    return incomeList;
  } else {
    return expenseList;
  }
}

double? getCategoryAmount(
  List<TransactionStruct>? transactionList,
  DateTime currentDate,
  String? categoryName,
) {
  // summarize transactionAmount field in transactionList if transactionCategory == category
  if (transactionList == null || categoryName == null) {
    return null;
  }

  double totalAmount = 0.0;

  for (final transaction in transactionList) {
    if (transaction.transactionCategory == categoryName &&
        transaction.transactionDate!.month == currentDate.month &&
        transaction.transactionDate!.year == currentDate.year) {
      totalAmount += transaction.transactionAmount;
    }
  }

  return totalAmount;
}

DateTime? newDate(
  DateTime? currentDate,
  bool? next,
) {
  // go to previous month if next is false and go to next month if next is true
  if (currentDate == null || next == null) {
    return null;
  }
  final int increment = next ? 1 : -1;
  final int newMonth = currentDate.month + increment;
  final int newYear = newMonth > 12
      ? currentDate.year + 1
      : newMonth < 1
          ? currentDate.year - 1
          : currentDate.year;
  final int finalMonth = ((newMonth - 1) % 12) + 1;
  return DateTime(
      newYear,
      finalMonth,
      currentDate.day,
      currentDate.hour,
      currentDate.minute,
      currentDate.second,
      currentDate.millisecond,
      currentDate.microsecond);
}
