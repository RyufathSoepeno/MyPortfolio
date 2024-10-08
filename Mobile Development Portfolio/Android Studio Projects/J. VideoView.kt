package com.example.videoview

import android.net.Uri
import android.os.Bundle
import android.widget.VideoView
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            setContentView(R.layout.activity_main)
            val videoView = findViewById<VideoView>(R.id.videoView)
            val onlineUri = Uri.parse("https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p.mp4")
            videoView.setVideoURI(onlineUri)
            videoView.requestFocus()
            videoView.start()
        }
    }
}
