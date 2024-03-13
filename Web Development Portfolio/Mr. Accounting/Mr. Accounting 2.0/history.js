document.addEventListener("DOMContentLoaded", function() {
  updateHistoryTable();
});

function updateHistoryTable() {
  var historyTable = document.getElementById('historyTable').getElementsByTagName('tbody')[0];
  historyTable.innerHTML = '';
  accountingHistories.forEach(function(history) {
    var row = historyTable.insertRow();
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
    var cell5 = row.insertCell(4);
    cell1.innerHTML = history.action;
    cell2.innerHTML = history.name || '-';
    cell3.innerHTML = history.date || '-';
    cell4.innerHTML = history.credit || '-';
    cell5.innerHTML = history.debit || '-';
  });
}
