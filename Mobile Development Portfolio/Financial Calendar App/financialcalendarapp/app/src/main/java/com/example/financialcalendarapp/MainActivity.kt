package com.example.financialcalendarapp

import android.app.Activity
import android.app.DatePickerDialog
import android.app.TimePickerDialog
import android.os.Bundle
import android.widget.*
import com.example.financialcalendarapp.ui.theme.Transaction
import java.util.*

class MainActivity : Activity() {

    private lateinit var transactionListView: ListView
    private lateinit var amountInput: EditText
    private lateinit var descriptionInput: EditText
    private lateinit var addTransactionButton: Button
    private lateinit var dateButton: Button
    private lateinit var timeButton: Button
    private lateinit var calendarView: CalendarView
    private val transactionList = mutableListOf<Transaction>()
    private lateinit var transactionAdapter: ArrayAdapter<String>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Initialize views
        transactionListView = findViewById(R.id.transactionListView)
        amountInput = findViewById(R.id.amountInput)
        descriptionInput = findViewById(R.id.descriptionInput)
        addTransactionButton = findViewById(R.id.addTransactionButton)
        dateButton = findViewById(R.id.dateButton)
        timeButton = findViewById(R.id.timeButton)
        calendarView = findViewById(R.id.calendarView)

        // Adapter to display transactions
        transactionAdapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, mutableListOf<String>())
        transactionListView.adapter = transactionAdapter

        // Show date picker and time picker
        dateButton.setOnClickListener { showDatePicker() }
        timeButton.setOnClickListener { showTimePicker() }

        // Add new transaction button
        addTransactionButton.setOnClickListener {
            val amount = amountInput.text.toString().toDoubleOrNull() ?: 0.0
            val description = descriptionInput.text.toString()
            val transaction = Transaction(amount, description, Calendar.getInstance().time)
            transactionList.add(transaction)
            transactionAdapter.add("${transaction.description} - $${transaction.amount} - ${transaction.date}")
            transactionAdapter.notifyDataSetChanged()
        }

        // Initialize calendar with transactions
        calendarView.setOnDateChangeListener { _, year, month, dayOfMonth ->
            // Load transactions for selected date (optional logic)
        }
    }

    private fun showDatePicker() {
        val calendar = Calendar.getInstance()
        val datePicker = DatePickerDialog(
            this,
            { _, year, month, dayOfMonth -> /* Handle date change */ },
            calendar.get(Calendar.YEAR),
            calendar.get(Calendar.MONTH),
            calendar.get(Calendar.DAY_OF_MONTH)
        )
        datePicker.show()
    }

    private fun showTimePicker() {
        val calendar = Calendar.getInstance()
        val timePicker = TimePickerDialog(
            this,
            { _, hour, minute -> /* Handle time change */ },
            calendar.get(Calendar.HOUR_OF_DAY),
            calendar.get(Calendar.MINUTE),
            true
        )
        timePicker.show()
    }
}