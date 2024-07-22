function goToPage(page) {
  window.location.href = page;
}

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
  var cell5 = newRow.insertCell(4);
  cell1.innerHTML = '<span onclick="renameEntry(this)">' + name + '</span>';
  cell2.innerHTML = date;
  cell3.innerHTML = credit;
  cell4.innerHTML = debit;
  cell5.innerHTML = '<button onclick="deleteRow(this)">Delete</button>';
}

function renameEntry(span) {
  var newName = prompt('Enter new name for this entry:');
  if (newName) {
    span.textContent = newName;
  }
}

function deleteRow(button) {
  var row = button.parentNode.parentNode;
  row.parentNode.removeChild(row);
}
