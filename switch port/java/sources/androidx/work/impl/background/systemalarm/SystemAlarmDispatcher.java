package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class SystemAlarmDispatcher implements ExecutionListener {
    private static final int DEFAULT_START_ID = 0;
    private static final String KEY_START_ID = "KEY_START_ID";
    private static final String PROCESS_COMMAND_TAG = "ProcessCommand";
    static final String TAG = Logger.tagWithPrefix("SystemAlarmDispatcher");
    final CommandHandler mCommandHandler;
    private CommandsCompletedListener mCompletedListener;
    final Context mContext;
    Intent mCurrentIntent;
    final List<Intent> mIntents;
    private final Processor mProcessor;
    private StartStopTokens mStartStopTokens;
    final TaskExecutor mTaskExecutor;
    private final WorkLauncher mWorkLauncher;
    private final WorkManagerImpl mWorkManager;
    private final WorkTimer mWorkTimer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface CommandsCompletedListener {
        void onAllCommandsCompleted();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Processor getProcessor() {
        return this.mProcessor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TaskExecutor getTaskExecutor() {
        return this.mTaskExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WorkManagerImpl getWorkManager() {
        return this.mWorkManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WorkTimer getWorkTimer() {
        return this.mWorkTimer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WorkLauncher getWorkerLauncher() {
        return this.mWorkLauncher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SystemAlarmDispatcher(Context context) {
        this(context, null, null, null);
    }

    SystemAlarmDispatcher(Context context, Processor processor, WorkManagerImpl workManager, WorkLauncher launcher) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mStartStopTokens = new StartStopTokens();
        workManager = workManager == null ? WorkManagerImpl.getInstance(context) : workManager;
        this.mWorkManager = workManager;
        this.mCommandHandler = new CommandHandler(applicationContext, workManager.getConfiguration().getClock(), this.mStartStopTokens);
        this.mWorkTimer = new WorkTimer(workManager.getConfiguration().getRunnableScheduler());
        processor = processor == null ? workManager.getProcessor() : processor;
        this.mProcessor = processor;
        TaskExecutor workTaskExecutor = workManager.getWorkTaskExecutor();
        this.mTaskExecutor = workTaskExecutor;
        this.mWorkLauncher = launcher == null ? new WorkLauncherImpl(processor, workTaskExecutor) : launcher;
        processor.addExecutionListener(this);
        this.mIntents = new ArrayList();
        this.mCurrentIntent = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDestroy() {
        Logger.get().debug(TAG, "Destroying SystemAlarmDispatcher");
        this.mProcessor.removeExecutionListener(this);
        this.mCompletedListener = null;
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(WorkGenerationalId id, boolean needsReschedule) {
        this.mTaskExecutor.getMainThreadExecutor().execute(new AddRunnable(this, CommandHandler.createExecutionCompletedIntent(this.mContext, id, needsReschedule), 0));
    }

    public boolean add(final Intent intent, final int startId) {
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Adding command " + intent + " (" + startId + ")");
        assertMainThread();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            Logger.get().warning(str, "Unknown command. Ignoring");
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && hasIntentWithAction("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        }
        intent.putExtra(KEY_START_ID, startId);
        synchronized (this.mIntents) {
            boolean z = !this.mIntents.isEmpty();
            this.mIntents.add(intent);
            if (!z) {
                processCommand();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCompletedListener(CommandsCompletedListener listener) {
        if (this.mCompletedListener != null) {
            Logger.get().error(TAG, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            this.mCompletedListener = listener;
        }
    }

    void dequeueAndCheckForCompletion() {
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Checking if commands are complete.");
        assertMainThread();
        synchronized (this.mIntents) {
            if (this.mCurrentIntent != null) {
                Logger.get().debug(str, "Removing command " + this.mCurrentIntent);
                if (!this.mIntents.remove(0).equals(this.mCurrentIntent)) {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
                this.mCurrentIntent = null;
            }
            SerialExecutor serialTaskExecutor = this.mTaskExecutor.getSerialTaskExecutor();
            if (!this.mCommandHandler.hasPendingCommands() && this.mIntents.isEmpty() && !serialTaskExecutor.hasPendingTasks()) {
                Logger.get().debug(str, "No more commands & intents.");
                CommandsCompletedListener commandsCompletedListener = this.mCompletedListener;
                if (commandsCompletedListener != null) {
                    commandsCompletedListener.onAllCommandsCompleted();
                }
            } else if (!this.mIntents.isEmpty()) {
                processCommand();
            }
        }
    }

    private void processCommand() {
        assertMainThread();
        PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(this.mContext, PROCESS_COMMAND_TAG);
        try {
            newWakeLock.acquire();
            this.mWorkManager.getWorkTaskExecutor().executeOnTaskThread(new Runnable() { // from class: androidx.work.impl.background.systemalarm.SystemAlarmDispatcher.1
                @Override // java.lang.Runnable
                public void run() {
                    Executor mainThreadExecutor;
                    DequeueAndCheckForCompletion dequeueAndCheckForCompletion;
                    synchronized (SystemAlarmDispatcher.this.mIntents) {
                        SystemAlarmDispatcher systemAlarmDispatcher = SystemAlarmDispatcher.this;
                        systemAlarmDispatcher.mCurrentIntent = systemAlarmDispatcher.mIntents.get(0);
                    }
                    if (SystemAlarmDispatcher.this.mCurrentIntent != null) {
                        String action = SystemAlarmDispatcher.this.mCurrentIntent.getAction();
                        int intExtra = SystemAlarmDispatcher.this.mCurrentIntent.getIntExtra(SystemAlarmDispatcher.KEY_START_ID, 0);
                        Logger.get().debug(SystemAlarmDispatcher.TAG, "Processing command " + SystemAlarmDispatcher.this.mCurrentIntent + ", " + intExtra);
                        PowerManager.WakeLock newWakeLock2 = WakeLocks.newWakeLock(SystemAlarmDispatcher.this.mContext, action + " (" + intExtra + ")");
                        try {
                            Logger.get().debug(SystemAlarmDispatcher.TAG, "Acquiring operation wake lock (" + action + ") " + newWakeLock2);
                            newWakeLock2.acquire();
                            SystemAlarmDispatcher.this.mCommandHandler.onHandleIntent(SystemAlarmDispatcher.this.mCurrentIntent, intExtra, SystemAlarmDispatcher.this);
                            Logger.get().debug(SystemAlarmDispatcher.TAG, "Releasing operation wake lock (" + action + ") " + newWakeLock2);
                            newWakeLock2.release();
                            mainThreadExecutor = SystemAlarmDispatcher.this.mTaskExecutor.getMainThreadExecutor();
                            dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this);
                        } catch (Throwable th) {
                            try {
                                Logger.get().error(SystemAlarmDispatcher.TAG, "Unexpected error in onHandleIntent", th);
                                Logger.get().debug(SystemAlarmDispatcher.TAG, "Releasing operation wake lock (" + action + ") " + newWakeLock2);
                                newWakeLock2.release();
                                mainThreadExecutor = SystemAlarmDispatcher.this.mTaskExecutor.getMainThreadExecutor();
                                dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this);
                            } catch (Throwable th2) {
                                Logger.get().debug(SystemAlarmDispatcher.TAG, "Releasing operation wake lock (" + action + ") " + newWakeLock2);
                                newWakeLock2.release();
                                SystemAlarmDispatcher.this.mTaskExecutor.getMainThreadExecutor().execute(new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this));
                                throw th2;
                            }
                        }
                        mainThreadExecutor.execute(dequeueAndCheckForCompletion);
                    }
                }
            });
        } finally {
            newWakeLock.release();
        }
    }

    private boolean hasIntentWithAction(String action) {
        assertMainThread();
        synchronized (this.mIntents) {
            Iterator<Intent> it = this.mIntents.iterator();
            while (it.hasNext()) {
                if (action.equals(it.next().getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    private void assertMainThread() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    /* loaded from: classes2.dex */
    static class DequeueAndCheckForCompletion implements Runnable {
        private final SystemAlarmDispatcher mDispatcher;

        DequeueAndCheckForCompletion(SystemAlarmDispatcher dispatcher) {
            this.mDispatcher = dispatcher;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mDispatcher.dequeueAndCheckForCompletion();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class AddRunnable implements Runnable {
        private final SystemAlarmDispatcher mDispatcher;
        private final Intent mIntent;
        private final int mStartId;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AddRunnable(SystemAlarmDispatcher dispatcher, Intent intent, int startId) {
            this.mDispatcher = dispatcher;
            this.mIntent = intent;
            this.mStartId = startId;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mDispatcher.add(this.mIntent, this.mStartId);
        }
    }
}
