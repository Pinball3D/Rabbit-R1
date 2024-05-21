package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.view.AccessibilityBridge;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class AccessibilityChannel {
    private static final String TAG = "AccessibilityChannel";
    public final BasicMessageChannel<Object> channel;
    public final FlutterJNI flutterJNI;
    private AccessibilityMessageHandler handler;
    public final BasicMessageChannel.MessageHandler<Object> parsingMessageHandler;

    /* loaded from: classes3.dex */
    public interface AccessibilityMessageHandler extends FlutterJNI.AccessibilityDelegate {
        void announce(String str);

        void onFocus(int i);

        void onLongPress(int i);

        void onTap(int i);

        void onTooltip(String str);
    }

    public AccessibilityChannel(DartExecutor dartExecutor, FlutterJNI flutterJNI) {
        BasicMessageChannel.MessageHandler<Object> messageHandler = new BasicMessageChannel.MessageHandler<Object>() { // from class: io.flutter.embedding.engine.systemchannels.AccessibilityChannel.1
            @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
            public void onMessage(Object obj, BasicMessageChannel.Reply<Object> reply) {
                if (AccessibilityChannel.this.handler == null) {
                    reply.reply(null);
                    return;
                }
                HashMap hashMap = (HashMap) obj;
                String str = (String) hashMap.get("type");
                HashMap hashMap2 = (HashMap) hashMap.get("data");
                Log.v(AccessibilityChannel.TAG, "Received " + str + " message.");
                str.hashCode();
                char c = 65535;
                switch (str.hashCode()) {
                    case -1140076541:
                        if (str.equals("tooltip")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -649620375:
                        if (str.equals("announce")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 114595:
                        if (str.equals("tap")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 97604824:
                        if (str.equals("focus")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 114203431:
                        if (str.equals("longPress")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        String str2 = (String) hashMap2.get("message");
                        if (str2 != null) {
                            AccessibilityChannel.this.handler.onTooltip(str2);
                            break;
                        }
                        break;
                    case 1:
                        String str3 = (String) hashMap2.get("message");
                        if (str3 != null) {
                            AccessibilityChannel.this.handler.announce(str3);
                            break;
                        }
                        break;
                    case 2:
                        Integer num = (Integer) hashMap.get("nodeId");
                        if (num != null) {
                            AccessibilityChannel.this.handler.onTap(num.intValue());
                            break;
                        }
                        break;
                    case 3:
                        Integer num2 = (Integer) hashMap.get("nodeId");
                        if (num2 != null) {
                            AccessibilityChannel.this.handler.onFocus(num2.intValue());
                            break;
                        }
                        break;
                    case 4:
                        Integer num3 = (Integer) hashMap.get("nodeId");
                        if (num3 != null) {
                            AccessibilityChannel.this.handler.onLongPress(num3.intValue());
                            break;
                        }
                        break;
                }
                reply.reply(null);
            }
        };
        this.parsingMessageHandler = messageHandler;
        BasicMessageChannel<Object> basicMessageChannel = new BasicMessageChannel<>(dartExecutor, "flutter/accessibility", StandardMessageCodec.INSTANCE);
        this.channel = basicMessageChannel;
        basicMessageChannel.setMessageHandler(messageHandler);
        this.flutterJNI = flutterJNI;
    }

    public AccessibilityChannel(BasicMessageChannel<Object> basicMessageChannel, FlutterJNI flutterJNI) {
        this.parsingMessageHandler = new BasicMessageChannel.MessageHandler<Object>() { // from class: io.flutter.embedding.engine.systemchannels.AccessibilityChannel.1
            @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
            public void onMessage(Object obj, BasicMessageChannel.Reply<Object> reply) {
                if (AccessibilityChannel.this.handler == null) {
                    reply.reply(null);
                    return;
                }
                HashMap hashMap = (HashMap) obj;
                String str = (String) hashMap.get("type");
                HashMap hashMap2 = (HashMap) hashMap.get("data");
                Log.v(AccessibilityChannel.TAG, "Received " + str + " message.");
                str.hashCode();
                char c = 65535;
                switch (str.hashCode()) {
                    case -1140076541:
                        if (str.equals("tooltip")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -649620375:
                        if (str.equals("announce")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 114595:
                        if (str.equals("tap")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 97604824:
                        if (str.equals("focus")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 114203431:
                        if (str.equals("longPress")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        String str2 = (String) hashMap2.get("message");
                        if (str2 != null) {
                            AccessibilityChannel.this.handler.onTooltip(str2);
                            break;
                        }
                        break;
                    case 1:
                        String str3 = (String) hashMap2.get("message");
                        if (str3 != null) {
                            AccessibilityChannel.this.handler.announce(str3);
                            break;
                        }
                        break;
                    case 2:
                        Integer num = (Integer) hashMap.get("nodeId");
                        if (num != null) {
                            AccessibilityChannel.this.handler.onTap(num.intValue());
                            break;
                        }
                        break;
                    case 3:
                        Integer num2 = (Integer) hashMap.get("nodeId");
                        if (num2 != null) {
                            AccessibilityChannel.this.handler.onFocus(num2.intValue());
                            break;
                        }
                        break;
                    case 4:
                        Integer num3 = (Integer) hashMap.get("nodeId");
                        if (num3 != null) {
                            AccessibilityChannel.this.handler.onLongPress(num3.intValue());
                            break;
                        }
                        break;
                }
                reply.reply(null);
            }
        };
        this.channel = basicMessageChannel;
        this.flutterJNI = flutterJNI;
    }

    public void onAndroidAccessibilityEnabled() {
        this.flutterJNI.setSemanticsEnabled(true);
    }

    public void onAndroidAccessibilityDisabled() {
        this.flutterJNI.setSemanticsEnabled(false);
    }

    public void setAccessibilityFeatures(int i) {
        this.flutterJNI.setAccessibilityFeatures(i);
    }

    public void dispatchSemanticsAction(int i, AccessibilityBridge.Action action) {
        this.flutterJNI.dispatchSemanticsAction(i, action);
    }

    public void dispatchSemanticsAction(int i, AccessibilityBridge.Action action, Object obj) {
        this.flutterJNI.dispatchSemanticsAction(i, action, obj);
    }

    public void setAccessibilityMessageHandler(AccessibilityMessageHandler accessibilityMessageHandler) {
        this.handler = accessibilityMessageHandler;
        this.flutterJNI.setAccessibilityDelegate(accessibilityMessageHandler);
    }
}
