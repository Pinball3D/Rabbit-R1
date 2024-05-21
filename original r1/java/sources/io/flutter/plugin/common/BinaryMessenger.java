package io.flutter.plugin.common;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public interface BinaryMessenger {

    /* loaded from: classes3.dex */
    public interface BinaryMessageHandler {
        void onMessage(ByteBuffer byteBuffer, BinaryReply binaryReply);
    }

    /* loaded from: classes3.dex */
    public interface BinaryReply {
        void reply(ByteBuffer byteBuffer);
    }

    /* loaded from: classes3.dex */
    public interface TaskQueue {
    }

    /* loaded from: classes3.dex */
    public static class TaskQueueOptions {
        private boolean isSerial = true;

        public boolean getIsSerial() {
            return this.isSerial;
        }

        public TaskQueueOptions setIsSerial(boolean z) {
            this.isSerial = z;
            return this;
        }
    }

    void send(String str, ByteBuffer byteBuffer);

    void send(String str, ByteBuffer byteBuffer, BinaryReply binaryReply);

    void setMessageHandler(String str, BinaryMessageHandler binaryMessageHandler);

    default TaskQueue makeBackgroundTaskQueue() {
        return makeBackgroundTaskQueue(new TaskQueueOptions());
    }

    default TaskQueue makeBackgroundTaskQueue(TaskQueueOptions taskQueueOptions) {
        throw new UnsupportedOperationException("makeBackgroundTaskQueue not implemented.");
    }

    default void setMessageHandler(String str, BinaryMessageHandler binaryMessageHandler, TaskQueue taskQueue) {
        if (taskQueue != null) {
            throw new UnsupportedOperationException("setMessageHandler called with nonnull taskQueue is not supported.");
        }
        setMessageHandler(str, binaryMessageHandler);
    }

    default void enableBufferingIncomingMessages() {
        throw new UnsupportedOperationException("enableBufferingIncomingMessages not implemented.");
    }

    default void disableBufferingIncomingMessages() {
        throw new UnsupportedOperationException("disableBufferingIncomingMessages not implemented.");
    }
}
