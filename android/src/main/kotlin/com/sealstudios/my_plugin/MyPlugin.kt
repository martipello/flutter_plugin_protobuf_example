package com.sealstudios.my_plugin

import android.util.Log
import androidx.annotation.NonNull
import com.google.protobuf.Timestamp

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

/** MyPlugin */
class MyPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "my_plugin")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "sendExampleDataToAndroid" ->  sendExampleDataToAndroid(result, call)
      "sendExampleDataToAndroidForConversion" ->  sendExampleDataToAndroidForConversion(result, call)
      else -> {
        result.error("Method not found", null, null)
      }
    }
  }


  private fun sendExampleDataToAndroid(result: Result, call: MethodCall) {
    try {
      Log.d("MyPlugin", "sendExampleDataToAndroid")
      val data = Models.ExampleData.parseFrom(call.bytes)
      Log.d("MyPlugin", "sendExampleDataToAndroid ${data.displayName}")
      result.success(true)
    } catch (e: Exception) {
      Log.d("MyPlugin", "sendExampleDataToAndroid Serialization error")
      result.error("Serialization error", null, null)
    }
  }

  private fun sendExampleDataToAndroidForConversion(result: Result, call: MethodCall) {
    try {
      Log.d("MyPlugin", "sendExampleDataToAndroidForConversion")
      val data = Models.ExampleData.parseFrom(call.bytes)
      Log.d("MyPlugin", "sendExampleDataToAndroidForConversion ${data.displayName}")
      val successData = Models.ExampleData.newBuilder()
              .setDisplayName(data.displayName)
              .setEnum(Models.ExampleEnum.SUCCESS)
              .setIssueDate(Timestamp.getDefaultInstance()).build()
      result.success(successData.toByteArray())
    } catch (e: Exception) {
      Log.d("MyPlugin", "sendExampleDataToAndroidForConversion Serialization error")
      result.error("Serialization error", null, null)
    }
  }


  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}

val MethodCall.bytes: ByteArray get() = arguments as ByteArray
