package io.flutter.embedding.android;

import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import io.flutter.Log;
import io.flutter.embedding.engine.systemchannels.KeyEventChannel;
import io.flutter.embedding.engine.systemchannels.KeyboardChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.editing.InputConnectionAdaptor;
import java.util.HashSet;
import java.util.Map;

/* loaded from: classes3.dex */
public class KeyboardManager implements InputConnectionAdaptor.KeyboardDelegate, KeyboardChannel.KeyboardMethodHandler {
    private static final String TAG = "KeyboardManager";
    private final HashSet<KeyEvent> redispatchedEvents = new HashSet<>();
    protected final Responder[] responders;
    private final ViewDelegate viewDelegate;

    /* loaded from: classes3.dex */
    public interface Responder {

        /* loaded from: classes3.dex */
        public interface OnKeyEventHandledCallback {
            void onKeyEventHandled(boolean z);
        }

        void handleEvent(KeyEvent keyEvent, OnKeyEventHandledCallback onKeyEventHandledCallback);
    }

    /* loaded from: classes3.dex */
    public interface ViewDelegate {
        BinaryMessenger getBinaryMessenger();

        boolean onTextInputKeyEvent(KeyEvent keyEvent);

        void redispatch(KeyEvent keyEvent);
    }

    /* loaded from: classes3.dex */
    public static class CharacterCombiner {
        private int combiningCharacter = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Character applyCombiningCharacterToBaseCharacter(int i) {
            char c = (char) i;
            if ((Integer.MIN_VALUE & i) != 0) {
                int i2 = i & Integer.MAX_VALUE;
                int i3 = this.combiningCharacter;
                if (i3 != 0) {
                    this.combiningCharacter = KeyCharacterMap.getDeadChar(i3, i2);
                } else {
                    this.combiningCharacter = i2;
                }
            } else {
                int i4 = this.combiningCharacter;
                if (i4 != 0) {
                    int deadChar = KeyCharacterMap.getDeadChar(i4, i);
                    if (deadChar > 0) {
                        c = (char) deadChar;
                    }
                    this.combiningCharacter = 0;
                }
            }
            return Character.valueOf(c);
        }
    }

    public KeyboardManager(ViewDelegate viewDelegate) {
        this.viewDelegate = viewDelegate;
        this.responders = new Responder[]{new KeyEmbedderResponder(viewDelegate.getBinaryMessenger()), new KeyChannelResponder(new KeyEventChannel(viewDelegate.getBinaryMessenger()))};
        new KeyboardChannel(viewDelegate.getBinaryMessenger()).setKeyboardMethodHandler(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class PerEventCallbackBuilder {
        boolean isEventHandled = false;
        final KeyEvent keyEvent;
        int unrepliedCount;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class Callback implements Responder.OnKeyEventHandledCallback {
            boolean isCalled;

            private Callback() {
                this.isCalled = false;
            }

            @Override // io.flutter.embedding.android.KeyboardManager.Responder.OnKeyEventHandledCallback
            public void onKeyEventHandled(boolean z) {
                if (this.isCalled) {
                    throw new IllegalStateException("The onKeyEventHandledCallback should be called exactly once.");
                }
                this.isCalled = true;
                PerEventCallbackBuilder.this.unrepliedCount--;
                PerEventCallbackBuilder perEventCallbackBuilder = PerEventCallbackBuilder.this;
                perEventCallbackBuilder.isEventHandled = z | perEventCallbackBuilder.isEventHandled;
                if (PerEventCallbackBuilder.this.unrepliedCount != 0 || PerEventCallbackBuilder.this.isEventHandled) {
                    return;
                }
                KeyboardManager.this.onUnhandled(PerEventCallbackBuilder.this.keyEvent);
            }
        }

        PerEventCallbackBuilder(KeyEvent keyEvent) {
            this.unrepliedCount = KeyboardManager.this.responders.length;
            this.keyEvent = keyEvent;
        }

        public Responder.OnKeyEventHandledCallback buildCallback() {
            return new Callback();
        }
    }

    @Override // io.flutter.plugin.editing.InputConnectionAdaptor.KeyboardDelegate
    public boolean handleEvent(KeyEvent keyEvent) {
        if (this.redispatchedEvents.remove(keyEvent)) {
            return false;
        }
        if (this.responders.length > 0) {
            PerEventCallbackBuilder perEventCallbackBuilder = new PerEventCallbackBuilder(keyEvent);
            for (Responder responder : this.responders) {
                responder.handleEvent(keyEvent, perEventCallbackBuilder.buildCallback());
            }
            return true;
        }
        onUnhandled(keyEvent);
        return true;
    }

    public void destroy() {
        int size = this.redispatchedEvents.size();
        if (size > 0) {
            Log.w(TAG, "A KeyboardManager was destroyed with " + String.valueOf(size) + " unhandled redispatch event(s).");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUnhandled(KeyEvent keyEvent) {
        ViewDelegate viewDelegate = this.viewDelegate;
        if (viewDelegate == null || viewDelegate.onTextInputKeyEvent(keyEvent)) {
            return;
        }
        this.redispatchedEvents.add(keyEvent);
        this.viewDelegate.redispatch(keyEvent);
        if (this.redispatchedEvents.remove(keyEvent)) {
            Log.w(TAG, "A redispatched key event was consumed before reaching KeyboardManager");
        }
    }

    @Override // io.flutter.embedding.engine.systemchannels.KeyboardChannel.KeyboardMethodHandler
    public Map<Long, Long> getKeyboardState() {
        return ((KeyEmbedderResponder) this.responders[0]).getPressedState();
    }
}
