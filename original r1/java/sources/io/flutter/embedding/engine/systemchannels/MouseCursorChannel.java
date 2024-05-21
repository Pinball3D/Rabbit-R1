package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class MouseCursorChannel {
    private static final String TAG = "MouseCursorChannel";
    public final MethodChannel channel;
    private MouseCursorMethodHandler mouseCursorMethodHandler;
    private final MethodChannel.MethodCallHandler parsingMethodCallHandler;

    /* loaded from: classes3.dex */
    public interface MouseCursorMethodHandler {
        void activateSystemCursor(String str);
    }

    public void setMethodHandler(MouseCursorMethodHandler mouseCursorMethodHandler) {
        this.mouseCursorMethodHandler = mouseCursorMethodHandler;
    }

    public MouseCursorChannel(DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.MouseCursorChannel.1
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if (MouseCursorChannel.this.mouseCursorMethodHandler == null) {
                    return;
                }
                String str = methodCall.method;
                Log.v(MouseCursorChannel.TAG, "Received '" + str + "' message.");
                try {
                    if (str.hashCode() == -1307105544 && str.equals("activateSystemCursor")) {
                        try {
                            MouseCursorChannel.this.mouseCursorMethodHandler.activateSystemCursor((String) ((HashMap) methodCall.arguments).get("kind"));
                            result.success(true);
                        } catch (Exception e) {
                            result.error("error", "Error when setting cursors: " + e.getMessage(), null);
                        }
                    }
                } catch (Exception e2) {
                    result.error("error", "Unhandled error: " + e2.getMessage(), null);
                }
            }
        };
        this.parsingMethodCallHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/mousecursor", StandardMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }

    public void synthesizeMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        this.parsingMethodCallHandler.onMethodCall(methodCall, result);
    }
}
