package io.flutter.embedding.engine.dart;

import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.dart.DartMessenger;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.util.TraceSection;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class DartMessenger implements BinaryMessenger, PlatformMessageHandler {
    private static final String TAG = "DartMessenger";
    private Map<String, List<BufferedMessageInfo>> bufferedMessages;
    private WeakHashMap<BinaryMessenger.TaskQueue, DartMessengerTaskQueue> createdTaskQueues;
    private final AtomicBoolean enableBufferingIncomingMessages;
    private final FlutterJNI flutterJNI;
    private final Object handlersLock;
    private final Map<String, HandlerInfo> messageHandlers;
    private int nextReplyId;
    private final Map<Integer, BinaryMessenger.BinaryReply> pendingReplies;
    private final DartMessengerTaskQueue platformTaskQueue;
    private TaskQueueFactory taskQueueFactory;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface DartMessengerTaskQueue {
        void dispatch(Runnable runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface TaskQueueFactory {
        DartMessengerTaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions);
    }

    DartMessenger(FlutterJNI flutterJNI, TaskQueueFactory taskQueueFactory) {
        this.messageHandlers = new HashMap();
        this.bufferedMessages = new HashMap();
        this.handlersLock = new Object();
        this.enableBufferingIncomingMessages = new AtomicBoolean(false);
        this.pendingReplies = new HashMap();
        this.nextReplyId = 1;
        this.platformTaskQueue = new PlatformTaskQueue();
        this.createdTaskQueues = new WeakHashMap<>();
        this.flutterJNI = flutterJNI;
        this.taskQueueFactory = taskQueueFactory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DartMessenger(FlutterJNI flutterJNI) {
        this(flutterJNI, new DefaultTaskQueueFactory());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class TaskQueueToken implements BinaryMessenger.TaskQueue {
        private TaskQueueToken() {
        }
    }

    /* loaded from: classes3.dex */
    private static class DefaultTaskQueueFactory implements TaskQueueFactory {
        ExecutorService executorService = FlutterInjector.instance().executorService();

        DefaultTaskQueueFactory() {
        }

        @Override // io.flutter.embedding.engine.dart.DartMessenger.TaskQueueFactory
        public DartMessengerTaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions) {
            if (taskQueueOptions.getIsSerial()) {
                return new SerialTaskQueue(this.executorService);
            }
            return new ConcurrentTaskQueue(this.executorService);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class HandlerInfo {
        public final BinaryMessenger.BinaryMessageHandler handler;
        public final DartMessengerTaskQueue taskQueue;

        HandlerInfo(BinaryMessenger.BinaryMessageHandler binaryMessageHandler, DartMessengerTaskQueue dartMessengerTaskQueue) {
            this.handler = binaryMessageHandler;
            this.taskQueue = dartMessengerTaskQueue;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class BufferedMessageInfo {
        public final ByteBuffer message;
        long messageData;
        int replyId;

        BufferedMessageInfo(ByteBuffer byteBuffer, int i, long j) {
            this.message = byteBuffer;
            this.replyId = i;
            this.messageData = j;
        }
    }

    /* loaded from: classes3.dex */
    static class ConcurrentTaskQueue implements DartMessengerTaskQueue {
        private final ExecutorService executor;

        ConcurrentTaskQueue(ExecutorService executorService) {
            this.executor = executorService;
        }

        @Override // io.flutter.embedding.engine.dart.DartMessenger.DartMessengerTaskQueue
        public void dispatch(Runnable runnable) {
            this.executor.execute(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SerialTaskQueue implements DartMessengerTaskQueue {
        private final ExecutorService executor;
        private final ConcurrentLinkedQueue<Runnable> queue = new ConcurrentLinkedQueue<>();
        private final AtomicBoolean isRunning = new AtomicBoolean(false);

        SerialTaskQueue(ExecutorService executorService) {
            this.executor = executorService;
        }

        @Override // io.flutter.embedding.engine.dart.DartMessenger.DartMessengerTaskQueue
        public void dispatch(Runnable runnable) {
            this.queue.add(runnable);
            this.executor.execute(new Runnable() { // from class: io.flutter.embedding.engine.dart.DartMessenger$SerialTaskQueue$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DartMessenger.SerialTaskQueue.this.m5600xf9910f8();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: flush, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void m5601xf60083a7() {
            if (this.isRunning.compareAndSet(false, true)) {
                try {
                    Runnable poll = this.queue.poll();
                    if (poll != null) {
                        poll.run();
                    }
                } finally {
                    this.isRunning.set(false);
                    if (!this.queue.isEmpty()) {
                        this.executor.execute(new Runnable() { // from class: io.flutter.embedding.engine.dart.DartMessenger$SerialTaskQueue$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                DartMessenger.SerialTaskQueue.this.m5601xf60083a7();
                            }
                        });
                    }
                }
            }
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public BinaryMessenger.TaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions) {
        DartMessengerTaskQueue makeBackgroundTaskQueue = this.taskQueueFactory.makeBackgroundTaskQueue(taskQueueOptions);
        TaskQueueToken taskQueueToken = new TaskQueueToken();
        this.createdTaskQueues.put(taskQueueToken, makeBackgroundTaskQueue);
        return taskQueueToken;
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(String str, BinaryMessenger.BinaryMessageHandler binaryMessageHandler) {
        setMessageHandler(str, binaryMessageHandler, null);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(String str, BinaryMessenger.BinaryMessageHandler binaryMessageHandler, BinaryMessenger.TaskQueue taskQueue) {
        DartMessengerTaskQueue dartMessengerTaskQueue;
        if (binaryMessageHandler == null) {
            Log.v(TAG, "Removing handler for channel '" + str + "'");
            synchronized (this.handlersLock) {
                this.messageHandlers.remove(str);
            }
            return;
        }
        if (taskQueue != null) {
            dartMessengerTaskQueue = this.createdTaskQueues.get(taskQueue);
            if (dartMessengerTaskQueue == null) {
                throw new IllegalArgumentException("Unrecognized TaskQueue, use BinaryMessenger to create your TaskQueue (ex makeBackgroundTaskQueue).");
            }
        } else {
            dartMessengerTaskQueue = null;
        }
        Log.v(TAG, "Setting handler for channel '" + str + "'");
        synchronized (this.handlersLock) {
            this.messageHandlers.put(str, new HandlerInfo(binaryMessageHandler, dartMessengerTaskQueue));
            List<BufferedMessageInfo> remove = this.bufferedMessages.remove(str);
            if (remove == null) {
                return;
            }
            for (BufferedMessageInfo bufferedMessageInfo : remove) {
                dispatchMessageToQueue(str, this.messageHandlers.get(str), bufferedMessageInfo.message, bufferedMessageInfo.replyId, bufferedMessageInfo.messageData);
            }
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void enableBufferingIncomingMessages() {
        this.enableBufferingIncomingMessages.set(true);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void disableBufferingIncomingMessages() {
        Map<String, List<BufferedMessageInfo>> map;
        synchronized (this.handlersLock) {
            this.enableBufferingIncomingMessages.set(false);
            map = this.bufferedMessages;
            this.bufferedMessages = new HashMap();
        }
        for (Map.Entry<String, List<BufferedMessageInfo>> entry : map.entrySet()) {
            for (BufferedMessageInfo bufferedMessageInfo : entry.getValue()) {
                dispatchMessageToQueue(entry.getKey(), null, bufferedMessageInfo.message, bufferedMessageInfo.replyId, bufferedMessageInfo.messageData);
            }
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void send(String str, ByteBuffer byteBuffer) {
        Log.v(TAG, "Sending message over channel '" + str + "'");
        send(str, byteBuffer, null);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void send(String str, ByteBuffer byteBuffer, BinaryMessenger.BinaryReply binaryReply) {
        TraceSection scoped = TraceSection.scoped("DartMessenger#send on " + str);
        try {
            Log.v(TAG, "Sending message with callback over channel '" + str + "'");
            int i = this.nextReplyId;
            this.nextReplyId = i + 1;
            if (binaryReply != null) {
                this.pendingReplies.put(Integer.valueOf(i), binaryReply);
            }
            if (byteBuffer == null) {
                this.flutterJNI.dispatchEmptyPlatformMessage(str, i);
            } else {
                this.flutterJNI.dispatchPlatformMessage(str, byteBuffer, byteBuffer.position(), i);
            }
            if (scoped != null) {
                scoped.close();
            }
        } catch (Throwable th) {
            if (scoped != null) {
                try {
                    scoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void invokeHandler(HandlerInfo handlerInfo, ByteBuffer byteBuffer, int i) {
        if (handlerInfo != null) {
            try {
                Log.v(TAG, "Deferring to registered handler to process message.");
                handlerInfo.handler.onMessage(byteBuffer, new Reply(this.flutterJNI, i));
                return;
            } catch (Error e) {
                handleError(e);
                return;
            } catch (Exception e2) {
                Log.e(TAG, "Uncaught exception in binary message listener", e2);
                this.flutterJNI.invokePlatformMessageEmptyResponseCallback(i);
                return;
            }
        }
        Log.v(TAG, "No registered handler for message. Responding to Dart with empty reply message.");
        this.flutterJNI.invokePlatformMessageEmptyResponseCallback(i);
    }

    private void dispatchMessageToQueue(final String str, final HandlerInfo handlerInfo, final ByteBuffer byteBuffer, final int i, final long j) {
        DartMessengerTaskQueue dartMessengerTaskQueue = handlerInfo != null ? handlerInfo.taskQueue : null;
        TraceSection.beginAsyncSection("PlatformChannel ScheduleHandler on " + str, i);
        Runnable runnable = new Runnable() { // from class: io.flutter.embedding.engine.dart.DartMessenger$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DartMessenger.this.m5599x5c171975(str, i, handlerInfo, byteBuffer, j);
            }
        };
        if (dartMessengerTaskQueue == null) {
            dartMessengerTaskQueue = this.platformTaskQueue;
        }
        dartMessengerTaskQueue.dispatch(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$dispatchMessageToQueue$0$io-flutter-embedding-engine-dart-DartMessenger, reason: not valid java name */
    public /* synthetic */ void m5599x5c171975(String str, int i, HandlerInfo handlerInfo, ByteBuffer byteBuffer, long j) {
        TraceSection.endAsyncSection("PlatformChannel ScheduleHandler on " + str, i);
        try {
            TraceSection scoped = TraceSection.scoped("DartMessenger#handleMessageFromDart on " + str);
            try {
                invokeHandler(handlerInfo, byteBuffer, i);
                if (byteBuffer != null && byteBuffer.isDirect()) {
                    byteBuffer.limit(0);
                }
                if (scoped != null) {
                    scoped.close();
                }
            } finally {
            }
        } finally {
            this.flutterJNI.cleanupMessageData(j);
        }
    }

    @Override // io.flutter.embedding.engine.dart.PlatformMessageHandler
    public void handleMessageFromDart(String str, ByteBuffer byteBuffer, int i, long j) {
        HandlerInfo handlerInfo;
        boolean z;
        Log.v(TAG, "Received message from Dart over channel '" + str + "'");
        synchronized (this.handlersLock) {
            handlerInfo = this.messageHandlers.get(str);
            z = this.enableBufferingIncomingMessages.get() && handlerInfo == null;
            if (z) {
                if (!this.bufferedMessages.containsKey(str)) {
                    this.bufferedMessages.put(str, new LinkedList());
                }
                this.bufferedMessages.get(str).add(new BufferedMessageInfo(byteBuffer, i, j));
            }
        }
        if (z) {
            return;
        }
        dispatchMessageToQueue(str, handlerInfo, byteBuffer, i, j);
    }

    @Override // io.flutter.embedding.engine.dart.PlatformMessageHandler
    public void handlePlatformMessageResponse(int i, ByteBuffer byteBuffer) {
        Log.v(TAG, "Received message reply from Dart.");
        BinaryMessenger.BinaryReply remove = this.pendingReplies.remove(Integer.valueOf(i));
        if (remove != null) {
            try {
                Log.v(TAG, "Invoking registered callback for reply from Dart.");
                remove.reply(byteBuffer);
                if (byteBuffer == null || !byteBuffer.isDirect()) {
                    return;
                }
                byteBuffer.limit(0);
            } catch (Error e) {
                handleError(e);
            } catch (Exception e2) {
                Log.e(TAG, "Uncaught exception in binary message reply handler", e2);
            }
        }
    }

    public int getPendingChannelResponseCount() {
        return this.pendingReplies.size();
    }

    private static void handleError(Error error) {
        Thread currentThread = Thread.currentThread();
        if (currentThread.getUncaughtExceptionHandler() == null) {
            throw error;
        }
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, error);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Reply implements BinaryMessenger.BinaryReply {
        private final AtomicBoolean done = new AtomicBoolean(false);
        private final FlutterJNI flutterJNI;
        private final int replyId;

        Reply(FlutterJNI flutterJNI, int i) {
            this.flutterJNI = flutterJNI;
            this.replyId = i;
        }

        @Override // io.flutter.plugin.common.BinaryMessenger.BinaryReply
        public void reply(ByteBuffer byteBuffer) {
            if (this.done.getAndSet(true)) {
                throw new IllegalStateException("Reply already submitted");
            }
            if (byteBuffer == null) {
                this.flutterJNI.invokePlatformMessageEmptyResponseCallback(this.replyId);
            } else {
                this.flutterJNI.invokePlatformMessageResponseCallback(this.replyId, byteBuffer, byteBuffer.position());
            }
        }
    }
}
