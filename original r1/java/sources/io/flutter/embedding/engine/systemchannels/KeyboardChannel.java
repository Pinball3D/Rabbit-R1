package io.flutter.embedding.engine.systemchannels;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class KeyboardChannel {
    public final MethodChannel channel;
    private KeyboardMethodHandler keyboardMethodHandler;
    public final MethodChannel.MethodCallHandler parsingMethodHandler;

    /* loaded from: classes3.dex */
    public interface KeyboardMethodHandler {
        Map<Long, Long> getKeyboardState();
    }

    public void setKeyboardMethodHandler(KeyboardMethodHandler keyboardMethodHandler) {
        this.keyboardMethodHandler = keyboardMethodHandler;
    }

    public KeyboardChannel(BinaryMessenger binaryMessenger) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.KeyboardChannel.1
            Map<Long, Long> pressedState = new HashMap();

            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if (KeyboardChannel.this.keyboardMethodHandler == null) {
                    result.success(this.pressedState);
                    return;
                }
                String str = methodCall.method;
                str.hashCode();
                if (str.equals("getKeyboardState")) {
                    try {
                        this.pressedState = KeyboardChannel.this.keyboardMethodHandler.getKeyboardState();
                    } catch (IllegalStateException e) {
                        result.error("error", e.getMessage(), null);
                    }
                    result.success(this.pressedState);
                    return;
                }
                result.notImplemented();
            }
        };
        this.parsingMethodHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "flutter/keyboard", StandardMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }
}
