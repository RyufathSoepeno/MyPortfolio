package com.example.webview

import android.os.Bundle
import android.webkit.WebView
import androidx.activity.ComponentActivity

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        webViewSetup()
    }
    private fun webViewSetup() {
        val myWebView: WebView = findViewById(R.id.myWebView)
        myWebView.loadUrl("https://www.google.com")
    }
}
