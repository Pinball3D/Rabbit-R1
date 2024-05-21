package androidx.work;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class DelegatingWorkerFactory extends WorkerFactory {
    private static final String TAG = Logger.tagWithPrefix("DelegatingWkrFctry");
    private final List<WorkerFactory> mFactories = new CopyOnWriteArrayList();

    List<WorkerFactory> getFactories() {
        return this.mFactories;
    }

    public final void addFactory(WorkerFactory workerFactory) {
        this.mFactories.add(workerFactory);
    }

    @Override // androidx.work.WorkerFactory
    public final ListenableWorker createWorker(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Iterator<WorkerFactory> it = this.mFactories.iterator();
        while (it.hasNext()) {
            try {
                ListenableWorker createWorker = it.next().createWorker(appContext, workerClassName, workerParameters);
                if (createWorker != null) {
                    return createWorker;
                }
            } catch (Throwable th) {
                Logger.get().error(TAG, "Unable to instantiate a ListenableWorker (" + workerClassName + ")", th);
                throw th;
            }
        }
        return null;
    }
}
