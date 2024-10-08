package com.example.spinner

import android.os.Bundle
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Spinner
import androidx.activity.ComponentActivity
import android.view.View
import android.widget.*
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val bloodtype = resources.getStringArray(R.array.blood_type)
        val spinner = findViewById<Spinner>(R.id.spinner)
        if (spinner != null) {
            val adapter = ArrayAdapter(this,
                android.R.layout.simple_spinner_item, bloodtype)
            spinner.adapter = adapter
        }
        spinner.onItemSelectedListener = object :
            AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>,
                                        view: View, position: Int, id: Long) {
                Toast.makeText(this@MainActivity,
                    getString(R.string.selected_item) + " " +
                            "" + bloodtype[position], Toast.LENGTH_SHORT).show()
            }
            override fun onNothingSelected(parent: AdapterView<*>) {
                // write code to perform some action
            }
        }
    }
}
