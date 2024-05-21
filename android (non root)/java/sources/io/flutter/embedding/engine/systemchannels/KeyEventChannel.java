package io.flutter.embedding.engine.systemchannels;

import android.view.KeyEvent;
import io.flutter.Log;
import io.flutter.embedding.engine.systemchannels.KeyEventChannel;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.JSONMessageCodec;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.TransactionInfo;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class KeyEventChannel {
    private static final String TAG = "KeyEventChannel";
    public final BasicMessageChannel<Object> channel;

    /* loaded from: classes3.dex */
    public interface EventResponseHandler {
        void onFrameworkResponse(boolean z);
    }

    public KeyEventChannel(BinaryMessenger binaryMessenger) {
        this.channel = new BasicMessageChannel<>(binaryMessenger, "flutter/keyevent", JSONMessageCodec.INSTANCE);
    }

    public void sendFlutterKeyEvent(FlutterKeyEvent flutterKeyEvent, boolean z, EventResponseHandler eventResponseHandler) {
        this.channel.send(encodeKeyEvent(flutterKeyEvent, z), createReplyHandler(eventResponseHandler));
    }

    private Map<String, Object> encodeKeyEvent(FlutterKeyEvent flutterKeyEvent, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", z ? "keyup" : "keydown");
        hashMap.put("keymap", "android");
        hashMap.put("flags", Integer.valueOf(flutterKeyEvent.event.getFlags()));
        hashMap.put("plainCodePoint", Integer.valueOf(flutterKeyEvent.event.getUnicodeChar(0)));
        hashMap.put("codePoint", Integer.valueOf(flutterKeyEvent.event.getUnicodeChar()));
        hashMap.put("keyCode", Integer.valueOf(flutterKeyEvent.event.getKeyCode()));
        hashMap.put("scanCode", Integer.valueOf(flutterKeyEvent.event.getScanCode()));
        hashMap.put("metaState", Integer.valueOf(flutterKeyEvent.event.getMetaState()));
        if (flutterKeyEvent.complexCharacter != null) {
            hashMap.put("character", flutterKeyEvent.complexCharacter.toString());
        }
        hashMap.put(TransactionInfo.JsonKeys.SOURCE, Integer.valueOf(flutterKeyEvent.event.getSource()));
        hashMap.put("deviceId", Integer.valueOf(flutterKeyEvent.event.getDeviceId()));
        hashMap.put("repeatCount", Integer.valueOf(flutterKeyEvent.event.getRepeatCount()));
        return hashMap;
    }

    private static BasicMessageChannel.Reply<Object> createReplyHandler(final EventResponseHandler eventResponseHandler) {
        return new BasicMessageChannel.Reply() { // from class: io.flutter.embedding.engine.systemchannels.KeyEventChannel$$ExternalSyntheticLambda0
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                KeyEventChannel.lambda$createReplyHandler$0(KeyEventChannel.EventResponseHandler.this, obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$createReplyHandler$0(EventResponseHandler eventResponseHandler, Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                z = ((JSONObject) obj).getBoolean(Mechanism.JsonKeys.HANDLED);
            } catch (JSONException e) {
                Log.e(TAG, "Unable to unpack JSON message: " + e);
            }
        }
        eventResponseHandler.onFrameworkResponse(z);
    }

    /* loaded from: classes3.dex */
    public static class FlutterKeyEvent {
        public final Character complexCharacter;
        public final KeyEvent event;

        public FlutterKeyEvent(KeyEvent keyEvent) {
            this(keyEvent, null);
        }

        public FlutterKeyEvent(KeyEvent keyEvent, Character ch) {
            this.event = keyEvent;
            this.complexCharacter = ch;
        }
    }
}
