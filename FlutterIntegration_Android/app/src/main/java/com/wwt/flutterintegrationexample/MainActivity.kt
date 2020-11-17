package com.wwt.flutterintegrationexample

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.view.FlutterMain

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val helloWorldEngine = FlutterEngine(applicationContext)
        FlutterEngineCache.getInstance().put("hello_world", helloWorldEngine)
        val helloWorldGermanEngine = FlutterEngine(applicationContext)
        helloWorldGermanEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(
                FlutterMain.findAppBundlePath(), "german"))
        FlutterEngineCache.getInstance().put("hello_world_german", helloWorldGermanEngine)

        setContentView(R.layout.activity_main)

        val button: Button = findViewById(R.id.button)
        button.setOnClickListener { _ ->
            val intent = Intent(this, HelloWorldFlutterActivity::class.java)
            startActivity(intent)
        }

        val germanButton: Button = findViewById(R.id.button_german)
        germanButton.setOnClickListener { _ ->
            val intent = HelloWorldFlutterActivity.intentFor(this, true)
            startActivity(intent)
        }
    }
}