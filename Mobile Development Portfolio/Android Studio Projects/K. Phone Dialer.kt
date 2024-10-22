package com.example.phonedialer
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.widget.Button
import androidx.activity.ComponentActivity
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val calldialer = findViewById<Button>(R.id.openCallDialer)
        calldialer.setOnClickListener {
            val callintent = Intent(Intent.ACTION_DIAL)
            callintent.data = Uri.parse("tel:" + "+62123456789")
            startActivity(callintent)
        }
    }
}
