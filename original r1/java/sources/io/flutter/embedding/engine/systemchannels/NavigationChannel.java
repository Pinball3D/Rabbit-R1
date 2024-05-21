package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class NavigationChannel {
    private static final String TAG = "NavigationChannel";
    public final MethodChannel channel;
    private final MethodChannel.MethodCallHandler defaultHandler;

    public NavigationChannel(DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.NavigationChannel.1
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                result.success(null);
            }
        };
        this.defaultHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/navigation", JSONMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }

    public void setInitialRoute(String str) {
        Log.v(TAG, "Sending message to set initial route to '" + str + "'");
        this.channel.invokeMethod("setInitialRoute", str);
    }

    public void pushRoute(String str) {
        Log.v(TAG, "Sending message to push route '" + str + "'");
        this.channel.invokeMethod("pushRoute", str);
    }

    public void pushRouteInformation(String str) {
        Log.v(TAG, "Sending message to push route information '" + str + "'");
        HashMap hashMap = new HashMap();
        hashMap.put("location", str);
        this.channel.invokeMethod("pushRouteInformation", hashMap);
    }

    public void popRoute() {
        Log.v(TAG, "Sending message to pop route.");
        this.channel.invokeMethod("popRoute", null);
    }

    public void setMethodCallHandler(MethodChannel.MethodCallHandler methodCallHandler) {
        this.channel.setMethodCallHandler(methodCallHandler);
    }
}
