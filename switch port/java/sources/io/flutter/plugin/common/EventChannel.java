package io.flutter.plugin.common;

import io.flutter.Log;
import io.flutter.plugin.common.BinaryMessenger;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class EventChannel {
    private static final String TAG = "EventChannel#";
    private final MethodCodec codec;
    private final BinaryMessenger messenger;
    private final String name;
    private final BinaryMessenger.TaskQueue taskQueue;

    /* loaded from: classes3.dex */
    public interface EventSink {
        void endOfStream();

        void error(String str, String str2, Object obj);

        void success(Object obj);
    }

    /* loaded from: classes3.dex */
    public interface StreamHandler {
        void onCancel(Object obj);

        void onListen(Object obj, EventSink eventSink);
    }

    public EventChannel(BinaryMessenger binaryMessenger, String str) {
        this(binaryMessenger, str, StandardMethodCodec.INSTANCE);
    }

    public EventChannel(BinaryMessenger binaryMessenger, String str, MethodCodec methodCodec) {
        this(binaryMessenger, str, methodCodec, null);
    }

    public EventChannel(BinaryMessenger binaryMessenger, String str, MethodCodec methodCodec, BinaryMessenger.TaskQueue taskQueue) {
        this.messenger = binaryMessenger;
        this.name = str;
        this.codec = methodCodec;
        this.taskQueue = taskQueue;
    }

    public void setStreamHandler(StreamHandler streamHandler) {
        if (this.taskQueue != null) {
            this.messenger.setMessageHandler(this.name, streamHandler != null ? new IncomingStreamRequestHandler(streamHandler) : null, this.taskQueue);
        } else {
            this.messenger.setMessageHandler(this.name, streamHandler != null ? new IncomingStreamRequestHandler(streamHandler) : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class IncomingStreamRequestHandler implements BinaryMessenger.BinaryMessageHandler {
        private final AtomicReference<EventSink> activeSink = new AtomicReference<>(null);
        private final StreamHandler handler;

        IncomingStreamRequestHandler(StreamHandler streamHandler) {
            this.handler = streamHandler;
        }

        @Override // io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler
        public void onMessage(ByteBuffer byteBuffer, BinaryMessenger.BinaryReply binaryReply) {
            MethodCall decodeMethodCall = EventChannel.this.codec.decodeMethodCall(byteBuffer);
            if (decodeMethodCall.method.equals("listen")) {
                onListen(decodeMethodCall.arguments, binaryReply);
            } else if (decodeMethodCall.method.equals("cancel")) {
                onCancel(decodeMethodCall.arguments, binaryReply);
            } else {
                binaryReply.reply(null);
            }
        }

        private void onListen(Object obj, BinaryMessenger.BinaryReply binaryReply) {
            EventSinkImplementation eventSinkImplementation = new EventSinkImplementation();
            if (this.activeSink.getAndSet(eventSinkImplementation) != null) {
                try {
                    this.handler.onCancel(null);
                } catch (RuntimeException e) {
                    Log.e(EventChannel.TAG + EventChannel.this.name, "Failed to close existing event stream", e);
                }
            }
            try {
                this.handler.onListen(obj, eventSinkImplementation);
                binaryReply.reply(EventChannel.this.codec.encodeSuccessEnvelope(null));
            } catch (RuntimeException e2) {
                this.activeSink.set(null);
                Log.e(EventChannel.TAG + EventChannel.this.name, "Failed to open event stream", e2);
                binaryReply.reply(EventChannel.this.codec.encodeErrorEnvelope("error", e2.getMessage(), null));
            }
        }

        private void onCancel(Object obj, BinaryMessenger.BinaryReply binaryReply) {
            if (this.activeSink.getAndSet(null) == null) {
                binaryReply.reply(EventChannel.this.codec.encodeErrorEnvelope("error", "No active stream to cancel", null));
                return;
            }
            try {
                this.handler.onCancel(obj);
                binaryReply.reply(EventChannel.this.codec.encodeSuccessEnvelope(null));
            } catch (RuntimeException e) {
                Log.e(EventChannel.TAG + EventChannel.this.name, "Failed to close event stream", e);
                binaryReply.reply(EventChannel.this.codec.encodeErrorEnvelope("error", e.getMessage(), null));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public final class EventSinkImplementation implements EventSink {
            final AtomicBoolean hasEnded;

            private EventSinkImplementation() {
                this.hasEnded = new AtomicBoolean(false);
            }

            @Override // io.flutter.plugin.common.EventChannel.EventSink
            public void success(Object obj) {
                if (this.hasEnded.get() || IncomingStreamRequestHandler.this.activeSink.get() != this) {
                    return;
                }
                EventChannel.this.messenger.send(EventChannel.this.name, EventChannel.this.codec.encodeSuccessEnvelope(obj));
            }

            @Override // io.flutter.plugin.common.EventChannel.EventSink
            public void error(String str, String str2, Object obj) {
                if (this.hasEnded.get() || IncomingStreamRequestHandler.this.activeSink.get() != this) {
                    return;
                }
                EventChannel.this.messenger.send(EventChannel.this.name, EventChannel.this.codec.encodeErrorEnvelope(str, str2, obj));
            }

            @Override // io.flutter.plugin.common.EventChannel.EventSink
            public void endOfStream() {
                if (this.hasEnded.getAndSet(true) || IncomingStreamRequestHandler.this.activeSink.get() != this) {
                    return;
                }
                EventChannel.this.messenger.send(EventChannel.this.name, null);
            }
        }
    }
}
