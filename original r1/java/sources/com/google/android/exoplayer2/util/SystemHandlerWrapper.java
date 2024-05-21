package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.util.HandlerWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class SystemHandlerWrapper implements HandlerWrapper {
    private static final int MAX_POOL_SIZE = 50;
    private static final List<SystemMessage> messagePool = new ArrayList(50);
    private final Handler handler;

    public SystemHandlerWrapper(Handler handler) {
        this.handler = handler;
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public Looper getLooper() {
        return this.handler.getLooper();
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean hasMessages(int i) {
        return this.handler.hasMessages(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i, Object obj) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i, int i2, int i3) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i, i2, i3), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i, int i2, int i3, Object obj) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i, i2, i3, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendMessageAtFrontOfQueue(HandlerWrapper.Message message) {
        return ((SystemMessage) message).sendAtFrontOfQueue(this.handler);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessage(int i) {
        return this.handler.sendEmptyMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageDelayed(int i, int i2) {
        return this.handler.sendEmptyMessageDelayed(i, i2);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageAtTime(int i, long j) {
        return this.handler.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeMessages(int i) {
        this.handler.removeMessages(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeCallbacksAndMessages(Object obj) {
        this.handler.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean post(Runnable runnable) {
        return this.handler.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean postDelayed(Runnable runnable, long j) {
        return this.handler.postDelayed(runnable, j);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean postAtFrontOfQueue(Runnable runnable) {
        return this.handler.postAtFrontOfQueue(runnable);
    }

    private static SystemMessage obtainSystemMessage() {
        SystemMessage remove;
        List<SystemMessage> list = messagePool;
        synchronized (list) {
            if (list.isEmpty()) {
                remove = new SystemMessage();
            } else {
                remove = list.remove(list.size() - 1);
            }
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void recycleMessage(SystemMessage systemMessage) {
        List<SystemMessage> list = messagePool;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(systemMessage);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class SystemMessage implements HandlerWrapper.Message {
        private SystemHandlerWrapper handler;
        private Message message;

        public SystemMessage setMessage(Message message, SystemHandlerWrapper systemHandlerWrapper) {
            this.message = message;
            this.handler = systemHandlerWrapper;
            return this;
        }

        private SystemMessage() {
        }

        public boolean sendAtFrontOfQueue(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) Assertions.checkNotNull(this.message));
            recycle();
            return sendMessageAtFrontOfQueue;
        }

        @Override // com.google.android.exoplayer2.util.HandlerWrapper.Message
        public void sendToTarget() {
            ((Message) Assertions.checkNotNull(this.message)).sendToTarget();
            recycle();
        }

        @Override // com.google.android.exoplayer2.util.HandlerWrapper.Message
        public HandlerWrapper getTarget() {
            return (HandlerWrapper) Assertions.checkNotNull(this.handler);
        }

        private void recycle() {
            this.message = null;
            this.handler = null;
            SystemHandlerWrapper.recycleMessage(this);
        }
    }
}
