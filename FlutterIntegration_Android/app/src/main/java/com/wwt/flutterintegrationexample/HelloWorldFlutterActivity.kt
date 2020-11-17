package com.wwt.flutterintegrationexample


import android.content.Context
import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache

class HelloWorldFlutterActivity : FlutterActivity() {
    private val isInGerman: Boolean
        get() = intent.getBooleanExtra(IN_GERMAN_KEY, false)

    override fun provideFlutterEngine(context: Context): FlutterEngine? {
        val engineId: String = if (isInGerman) "hello_world_german" else "hello_world"
        return FlutterEngineCache.getInstance().get(engineId)
    }

    companion object {
        internal const val IN_GERMAN_KEY = "IN_GERMAN_KEY"
        fun intentFor(context: Context, isInGerman: Boolean = false): Intent {
            return Intent(context, HelloWorldFlutterActivity::class.java).apply {
                putExtra(IN_GERMAN_KEY, isInGerman)
            }
        }
    }
}