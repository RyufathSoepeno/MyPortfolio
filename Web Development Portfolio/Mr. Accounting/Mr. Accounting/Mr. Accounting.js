function addRow() {
  var name = document.getElementById('name').value;
  var date = document.getElementById('date').value;
  var credit = document.getElementById('credit').value;
  var debit = document.getElementById('debit').value;
  
  var table = document.getElementById('accountingTable').getElementsByTagName('tbody')[0];
  var newRow = table.insertRow(table.rows.length);
  var cell1 = newRow.insertCell(0);
  var cell2 = newRow.insertCell(1);
  var cell3 = newRow.insertCell(2);
  var cell4 = newRow.insertCell(3);
  cell1.innerHTML = name;
  cell2.innerHTML = date;
  cell3.innerHTML = credit;
  cell4.innerHTML = debit;
}
