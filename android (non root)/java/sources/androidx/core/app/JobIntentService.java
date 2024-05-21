package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

@Deprecated
/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {
    static final boolean DEBUG = false;
    static final String TAG = "JobIntentService";
    WorkEnqueuer mCompatWorkEnqueuer;
    CommandProcessor mCurProcessor;
    CompatJobEngine mJobImpl;
    static final Object sLock = new Object();
    static final HashMap<ComponentName, WorkEnqueuer> sClassWorkEnqueuer = new HashMap<>();
    boolean mInterruptIfStopped = false;
    boolean mStopped = false;
    boolean mDestroyed = false;
    final ArrayList<CompatWorkItem> mCompatQueue = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface CompatJobEngine {
        IBinder compatGetBinder();

        GenericWorkItem dequeueWork();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface GenericWorkItem {
        void complete();

        Intent getIntent();
    }

    public boolean isStopped() {
        return this.mStopped;
    }

    protected abstract void onHandleWork(Intent intent);

    public boolean onStopCurrentWork() {
        return true;
    }

    public void setInterruptIfStopped(boolean z) {
        this.mInterruptIfStopped = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class WorkEnqueuer {
        final ComponentName mComponentName;
        boolean mHasJobId;
        int mJobId;

        abstract void enqueueWork(Intent intent);

        public void serviceProcessingFinished() {
        }

        public void serviceProcessingStarted() {
        }

        public void serviceStartReceived() {
        }

        WorkEnqueuer(ComponentName componentName) {
            this.mComponentName = componentName;
        }

        void ensureJobId(int i) {
            if (this.mHasJobId) {
                if (this.mJobId != i) {
                    throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.mJobId);
                }
            } else {
                this.mHasJobId = true;
                this.mJobId = i;
            }
        }
    }

    /* loaded from: classes.dex */
    static final class CompatWorkEnqueuer extends WorkEnqueuer {
        private final Context mContext;
        private final PowerManager.WakeLock mLaunchWakeLock;
        boolean mLaunchingService;
        private final PowerManager.WakeLock mRunWakeLock;
        boolean mServiceProcessing;

        CompatWorkEnqueuer(Context context, ComponentName componentName) {
            super(componentName);
            this.mContext = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.mLaunchWakeLock = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.mRunWakeLock = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        void enqueueWork(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.mComponentName);
            if (this.mContext.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.mLaunchingService) {
                        this.mLaunchingService = true;
                        if (!this.mServiceProcessing) {
                            this.mLaunchWakeLock.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void serviceStartReceived() {
            synchronized (this) {
                this.mLaunchingService = false;
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void serviceProcessingStarted() {
            synchronized (this) {
                if (!this.mServiceProcessing) {
                    this.mServiceProcessing = true;
                    this.mRunWakeLock.acquire(600000L);
                    this.mLaunchWakeLock.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void serviceProcessingFinished() {
            synchronized (this) {
                if (this.mServiceProcessing) {
                    if (this.mLaunchingService) {
                        this.mLaunchWakeLock.acquire(60000L);
                    }
                    this.mServiceProcessing = false;
                    this.mRunWakeLock.release();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    static final class JobServiceEngineImpl extends JobServiceEngine implements CompatJobEngine {
        static final boolean DEBUG = false;
        static final String TAG = "JobServiceEngineImpl";
        final Object mLock;
        JobParameters mParams;
        final JobIntentService mService;

        /* loaded from: classes.dex */
        final class WrapperWorkItem implements GenericWorkItem {
            final JobWorkItem mJobWork;

            WrapperWorkItem(JobWorkItem jobWorkItem) {
                this.mJobWork = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            public Intent getIntent() {
                return this.mJobWork.getIntent();
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            public void complete() {
                synchronized (JobServiceEngineImpl.this.mLock) {
                    if (JobServiceEngineImpl.this.mParams != null) {
                        JobServiceEngineImpl.this.mParams.completeWork(this.mJobWork);
                    }
                }
            }
        }

        JobServiceEngineImpl(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.mLock = new Object();
            this.mService = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        public IBinder compatGetBinder() {
            return getBinder();
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.mParams = jobParameters;
            this.mService.ensureProcessorRunningLocked(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean doStopCurrentWork = this.mService.doStopCurrentWork();
            synchronized (this.mLock) {
                this.mParams = null;
            }
            return doStopCurrentWork;
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        public GenericWorkItem dequeueWork() {
            synchronized (this.mLock) {
                JobParameters jobParameters = this.mParams;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.mService.getClassLoader());
                return new WrapperWorkItem(dequeueWork);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class JobWorkEnqueuer extends WorkEnqueuer {
        private final JobInfo mJobInfo;
        private final JobScheduler mJobScheduler;

        JobWorkEnqueuer(Context context, ComponentName componentName, int i) {
            super(componentName);
            ensureJobId(i);
            this.mJobInfo = new JobInfo.Builder(i, this.mComponentName).setOverrideDeadline(0L).build();
            this.mJobScheduler = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        void enqueueWork(Intent intent) {
            this.mJobScheduler.enqueue(this.mJobInfo, new JobWorkItem(intent));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class CompatWorkItem implements GenericWorkItem {
        final Intent mIntent;
        final int mStartId;

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public Intent getIntent() {
            return this.mIntent;
        }

        CompatWorkItem(Intent intent, int i) {
            this.mIntent = intent;
            this.mStartId = i;
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public void complete() {
            JobIntentService.this.stopSelf(this.mStartId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class CommandProcessor extends AsyncTask<Void, Void, Void> {
        CommandProcessor() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            while (true) {
                GenericWorkItem dequeueWork = JobIntentService.this.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                JobIntentService.this.onHandleWork(dequeueWork.getIntent());
                dequeueWork.complete();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Void r1) {
            JobIntentService.this.processorFinished();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            JobIntentService.this.processorFinished();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mJobImpl = new JobServiceEngineImpl(this);
        this.mCompatWorkEnqueuer = null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.mCompatQueue == null) {
            return 2;
        }
        this.mCompatWorkEnqueuer.serviceStartReceived();
        synchronized (this.mCompatQueue) {
            ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new CompatWorkItem(intent, i2));
            ensureProcessorRunningLocked(true);
        }
        return 3;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        CompatJobEngine compatJobEngine = this.mJobImpl;
        if (compatJobEngine != null) {
            return compatJobEngine.compatGetBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mDestroyed = true;
                this.mCompatWorkEnqueuer.serviceProcessingFinished();
            }
        }
    }

    public static void enqueueWork(Context context, Class<?> cls, int i, Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i, intent);
    }

    public static void enqueueWork(Context context, ComponentName componentName, int i, Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (sLock) {
            WorkEnqueuer workEnqueuer = getWorkEnqueuer(context, componentName, true, i);
            workEnqueuer.ensureJobId(i);
            workEnqueuer.enqueueWork(intent);
        }
    }

    static WorkEnqueuer getWorkEnqueuer(Context context, ComponentName componentName, boolean z, int i) {
        HashMap<ComponentName, WorkEnqueuer> hashMap = sClassWorkEnqueuer;
        WorkEnqueuer workEnqueuer = hashMap.get(componentName);
        if (workEnqueuer != null) {
            return workEnqueuer;
        }
        if (!z) {
            throw new IllegalArgumentException("Can't be here without a job id");
        }
        JobWorkEnqueuer jobWorkEnqueuer = new JobWorkEnqueuer(context, componentName, i);
        hashMap.put(componentName, jobWorkEnqueuer);
        return jobWorkEnqueuer;
    }

    boolean doStopCurrentWork() {
        CommandProcessor commandProcessor = this.mCurProcessor;
        if (commandProcessor != null) {
            commandProcessor.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return onStopCurrentWork();
    }

    void ensureProcessorRunningLocked(boolean z) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new CommandProcessor();
            WorkEnqueuer workEnqueuer = this.mCompatWorkEnqueuer;
            if (workEnqueuer != null && z) {
                workEnqueuer.serviceProcessingStarted();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void processorFinished() {
        ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mCurProcessor = null;
                ArrayList<CompatWorkItem> arrayList2 = this.mCompatQueue;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    ensureProcessorRunningLocked(false);
                } else if (!this.mDestroyed) {
                    this.mCompatWorkEnqueuer.serviceProcessingFinished();
                }
            }
        }
    }

    GenericWorkItem dequeueWork() {
        CompatJobEngine compatJobEngine = this.mJobImpl;
        if (compatJobEngine != null) {
            return compatJobEngine.dequeueWork();
        }
        synchronized (this.mCompatQueue) {
            if (this.mCompatQueue.size() <= 0) {
                return null;
            }
            return this.mCompatQueue.remove(0);
        }
    }
}
