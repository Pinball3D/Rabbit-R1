package androidx.work;

import android.content.Context;

/* loaded from: classes2.dex */
public abstract class WorkerFactory {
    private static final String TAG = Logger.tagWithPrefix("WorkerFactory");

    public abstract ListenableWorker createWorker(Context appContext, String workerClassName, WorkerParameters workerParameters);

    public final ListenableWorker createWorkerWithDefaultFallback(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Class cls;
        ListenableWorker createWorker = createWorker(appContext, workerClassName, workerParameters);
        if (createWorker == null) {
            try {
                cls = Class.forName(workerClassName).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                Logger.get().error(TAG, "Invalid class: " + workerClassName, th);
                cls = null;
            }
            if (cls != null) {
                try {
                    createWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(appContext, workerParameters);
                } catch (Throwable th2) {
                    Logger.get().error(TAG, "Could not instantiate " + workerClassName, th2);
                }
            }
        }
        if (createWorker == null || !createWorker.isUsed()) {
            return createWorker;
        }
        throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + workerClassName + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
    }

    public static WorkerFactory getDefaultWorkerFactory() {
        return new WorkerFactory() { // from class: androidx.work.WorkerFactory.1
            @Override // androidx.work.WorkerFactory
            public ListenableWorker createWorker(Context appContext, String workerClassName, WorkerParameters workerParameters) {
                return null;
            }
        };
    }
}
