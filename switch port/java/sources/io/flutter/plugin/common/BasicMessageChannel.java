package io.flutter.plugin.common;

import io.flutter.Log;
import io.flutter.plugin.common.BinaryMessenger;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class BasicMessageChannel<T> {
    public static final String CHANNEL_BUFFERS_CHANNEL = "dev.flutter/channel-buffers";
    private static final String TAG = "BasicMessageChannel#";
    private final MessageCodec<T> codec;
    private final BinaryMessenger messenger;
    private final String name;
    private final BinaryMessenger.TaskQueue taskQueue;

    /* loaded from: classes3.dex */
    public interface MessageHandler<T> {
        void onMessage(T t, Reply<T> reply);
    }

    /* loaded from: classes3.dex */
    public interface Reply<T> {
        void reply(T t);
    }

    public BasicMessageChannel(BinaryMessenger binaryMessenger, String str, MessageCodec<T> messageCodec) {
        this(binaryMessenger, str, messageCodec, null);
    }

    public BasicMessageChannel(BinaryMessenger binaryMessenger, String str, MessageCodec<T> messageCodec, BinaryMessenger.TaskQueue taskQueue) {
        this.messenger = binaryMessenger;
        this.name = str;
        this.codec = messageCodec;
        this.taskQueue = taskQueue;
    }

    public void send(T t) {
        send(t, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void send(T t, Reply<T> reply) {
        BinaryMessenger binaryMessenger = this.messenger;
        String str = this.name;
        ByteBuffer encodeMessage = this.codec.encodeMessage(t);
        BinaryMessenger.BinaryReply binaryReply = null;
        Object[] objArr = 0;
        if (reply != null) {
            binaryReply = new IncomingReplyHandler(reply);
        }
        binaryMessenger.send(str, encodeMessage, binaryReply);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [io.flutter.plugin.common.BinaryMessenger] */
    /* JADX WARN: Type inference failed for: r1v0, types: [io.flutter.plugin.common.BasicMessageChannel$1] */
    /* JADX WARN: Type inference failed for: r1v1, types: [io.flutter.plugin.common.BinaryMessenger$BinaryMessageHandler] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public void setMessageHandler(MessageHandler<T> messageHandler) {
        if (this.taskQueue != null) {
            this.messenger.setMessageHandler(this.name, messageHandler != null ? new IncomingMessageHandler(messageHandler) : null, this.taskQueue);
        } else {
            this.messenger.setMessageHandler(this.name, messageHandler != null ? new IncomingMessageHandler(messageHandler) : 0);
        }
    }

    public void resizeChannelBuffer(int i) {
        resizeChannelBuffer(this.messenger, this.name, i);
    }

    public void setWarnsOnChannelOverflow(boolean z) {
        setWarnsOnChannelOverflow(this.messenger, this.name, z);
    }

    private static ByteBuffer packetFromEncodedMessage(ByteBuffer byteBuffer) {
        byteBuffer.flip();
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.get(bArr);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(remaining);
        allocateDirect.put(bArr);
        return allocateDirect;
    }

    public static void resizeChannelBuffer(BinaryMessenger binaryMessenger, String str, int i) {
        binaryMessenger.send(CHANNEL_BUFFERS_CHANNEL, packetFromEncodedMessage(StandardMethodCodec.INSTANCE.encodeMethodCall(new MethodCall("resize", Arrays.asList(str, Integer.valueOf(i))))));
    }

    public static void setWarnsOnChannelOverflow(BinaryMessenger binaryMessenger, String str, boolean z) {
        binaryMessenger.send(CHANNEL_BUFFERS_CHANNEL, packetFromEncodedMessage(StandardMethodCodec.INSTANCE.encodeMethodCall(new MethodCall("overflow", Arrays.asList(str, Boolean.valueOf(!z))))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class IncomingReplyHandler implements BinaryMessenger.BinaryReply {
        private final Reply<T> callback;

        private IncomingReplyHandler(Reply<T> reply) {
            this.callback = reply;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.flutter.plugin.common.BinaryMessenger.BinaryReply
        public void reply(ByteBuffer byteBuffer) {
            try {
                this.callback.reply(BasicMessageChannel.this.codec.decodeMessage(byteBuffer));
            } catch (RuntimeException e) {
                Log.e(BasicMessageChannel.TAG + BasicMessageChannel.this.name, "Failed to handle message reply", e);
            }
        }
    }

    /* loaded from: classes3.dex */
    private final class IncomingMessageHandler implements BinaryMessenger.BinaryMessageHandler {
        private final MessageHandler<T> handler;

        private IncomingMessageHandler(MessageHandler<T> messageHandler) {
            this.handler = messageHandler;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler
        public void onMessage(ByteBuffer byteBuffer, final BinaryMessenger.BinaryReply binaryReply) {
            try {
                this.handler.onMessage(BasicMessageChannel.this.codec.decodeMessage(byteBuffer), new Reply<T>() { // from class: io.flutter.plugin.common.BasicMessageChannel.IncomingMessageHandler.1
                    @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                    public void reply(T t) {
                        binaryReply.reply(BasicMessageChannel.this.codec.encodeMessage(t));
                    }
                });
            } catch (RuntimeException e) {
                Log.e(BasicMessageChannel.TAG + BasicMessageChannel.this.name, "Failed to handle message", e);
                binaryReply.reply(null);
            }
        }
    }
}
