// MainActivity.kt
package com.example.tilepuzzle

import android.app.Activity
import android.os.Bundle
import android.os.Handler
import android.view.View
import android.widget.Button
import android.widget.TextView
import kotlin.random.Random

class MainActivity : Activity() {

    private lateinit var tiles: List<Button>
    private lateinit var instructionsText: TextView
    private val aiSequence = mutableListOf<Int>()
    private var userSequence = mutableListOf<Int>()
    private var currentRound = 1
    private var currentIndex = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        instructionsText = findViewById(R.id.instructionsText)
        tiles = listOf(
            findViewById(R.id.tile_0),
            findViewById(R.id.tile_1),
            findViewById(R.id.tile_2),
            findViewById(R.id.tile_3),
            findViewById(R.id.tile_4),
            findViewById(R.id.tile_5),
            findViewById(R.id.tile_6),
            findViewById(R.id.tile_7),
            findViewById(R.id.tile_8)
        )

        // Set click listeners for each tile
        tiles.forEachIndexed { index, button ->
            button.setOnClickListener {
                checkUserInput(index)
            }
        }

        startNewRound()
    }

    private fun startNewRound() {
        userSequence.clear()
        aiSequence.add(Random.nextInt(9))  // Add a random tile to the AI's sequence
        showAiSequence()
    }

    private fun showAiSequence() {
        instructionsText.text = "Watch carefully!"
        currentIndex = 0
        Handler().postDelayed({
            displayNextTile()
        }, 500)
    }

    private fun displayNextTile() {
        if (currentIndex < aiSequence.size) {
            val tileIndex = aiSequence[currentIndex]
            tiles[tileIndex].isPressed = true
            Handler().postDelayed({
                tiles[tileIndex].isPressed = false
                currentIndex++
                displayNextTile()
            }, 500)
        } else {
            instructionsText.text = "Now, your turn!"
        }
    }

    private fun checkUserInput(tileIndex: Int) {
        userSequence.add(tileIndex)

        if (userSequence[userSequence.size - 1] != aiSequence[userSequence.size - 1]) {
            instructionsText.text = getString(R.string.wrong)
            aiSequence.clear()
            currentRound = 1
            Handler().postDelayed({ startNewRound() }, 1000)
        } else if (userSequence.size == aiSequence.size) {
            instructionsText.text = getString(R.string.correct)
            currentRound++
            Handler().postDelayed({ startNewRound() }, 1000)
        }
    }
}
