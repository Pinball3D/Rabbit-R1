package androidx.work.impl;

import android.text.TextUtils;
import androidx.lifecycle.LiveData;
import androidx.work.ArrayCreatingInputMerger;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.Operation;
import androidx.work.WorkContinuation;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.StatusRunnable;
import androidx.work.impl.workers.CombineContinuationsWorker;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class WorkContinuationImpl extends WorkContinuation {
    private static final String TAG = Logger.tagWithPrefix("WorkContinuationImpl");
    private final List<String> mAllIds;
    private boolean mEnqueued;
    private final ExistingWorkPolicy mExistingWorkPolicy;
    private final List<String> mIds;
    private final String mName;
    private Operation mOperation;
    private final List<WorkContinuationImpl> mParents;
    private final List<? extends WorkRequest> mWork;
    private final WorkManagerImpl mWorkManagerImpl;

    public List<String> getAllIds() {
        return this.mAllIds;
    }

    public ExistingWorkPolicy getExistingWorkPolicy() {
        return this.mExistingWorkPolicy;
    }

    public List<String> getIds() {
        return this.mIds;
    }

    public String getName() {
        return this.mName;
    }

    public List<WorkContinuationImpl> getParents() {
        return this.mParents;
    }

    public List<? extends WorkRequest> getWork() {
        return this.mWork;
    }

    public WorkManagerImpl getWorkManagerImpl() {
        return this.mWorkManagerImpl;
    }

    public boolean isEnqueued() {
        return this.mEnqueued;
    }

    public void markEnqueued() {
        this.mEnqueued = true;
    }

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, List<? extends WorkRequest> work) {
        this(workManagerImpl, null, ExistingWorkPolicy.KEEP, work, null);
    }

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, String name, ExistingWorkPolicy existingWorkPolicy, List<? extends WorkRequest> work) {
        this(workManagerImpl, name, existingWorkPolicy, work, null);
    }

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, String name, ExistingWorkPolicy existingWorkPolicy, List<? extends WorkRequest> work, List<WorkContinuationImpl> parents) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mName = name;
        this.mExistingWorkPolicy = existingWorkPolicy;
        this.mWork = work;
        this.mParents = parents;
        this.mIds = new ArrayList(work.size());
        this.mAllIds = new ArrayList();
        if (parents != null) {
            Iterator<WorkContinuationImpl> it = parents.iterator();
            while (it.hasNext()) {
                this.mAllIds.addAll(it.next().mAllIds);
            }
        }
        for (int i = 0; i < work.size(); i++) {
            if (existingWorkPolicy == ExistingWorkPolicy.REPLACE && work.get(i).getWorkSpec().getNextScheduleTimeOverride() != Long.MAX_VALUE) {
                throw new IllegalArgumentException("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
            }
            String stringId = work.get(i).getStringId();
            this.mIds.add(stringId);
            this.mAllIds.add(stringId);
        }
    }

    @Override // androidx.work.WorkContinuation
    public WorkContinuation then(List<OneTimeWorkRequest> work) {
        return work.isEmpty() ? this : new WorkContinuationImpl(this.mWorkManagerImpl, this.mName, ExistingWorkPolicy.KEEP, work, Collections.singletonList(this));
    }

    @Override // androidx.work.WorkContinuation
    public LiveData<List<WorkInfo>> getWorkInfosLiveData() {
        return this.mWorkManagerImpl.getWorkInfosById(this.mAllIds);
    }

    @Override // androidx.work.WorkContinuation
    public ListenableFuture<List<WorkInfo>> getWorkInfos() {
        StatusRunnable<List<WorkInfo>> forStringIds = StatusRunnable.forStringIds(this.mWorkManagerImpl, this.mAllIds);
        this.mWorkManagerImpl.getWorkTaskExecutor().executeOnTaskThread(forStringIds);
        return forStringIds.getFuture();
    }

    @Override // androidx.work.WorkContinuation
    public Operation enqueue() {
        if (!this.mEnqueued) {
            EnqueueRunnable enqueueRunnable = new EnqueueRunnable(this);
            this.mWorkManagerImpl.getWorkTaskExecutor().executeOnTaskThread(enqueueRunnable);
            this.mOperation = enqueueRunnable.getOperation();
        } else {
            Logger.get().warning(TAG, "Already enqueued work ids (" + TextUtils.join(", ", this.mIds) + ")");
        }
        return this.mOperation;
    }

    @Override // androidx.work.WorkContinuation
    protected WorkContinuation combineInternal(List<WorkContinuation> continuations) {
        OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(CombineContinuationsWorker.class).setInputMerger(ArrayCreatingInputMerger.class).build();
        ArrayList arrayList = new ArrayList(continuations.size());
        Iterator<WorkContinuation> it = continuations.iterator();
        while (it.hasNext()) {
            arrayList.add((WorkContinuationImpl) it.next());
        }
        return new WorkContinuationImpl(this.mWorkManagerImpl, null, ExistingWorkPolicy.KEEP, Collections.singletonList(build), arrayList);
    }

    public boolean hasCycles() {
        return hasCycles(this, new HashSet());
    }

    private static boolean hasCycles(WorkContinuationImpl continuation, Set<String> visited) {
        visited.addAll(continuation.getIds());
        Set<String> prerequisitesFor = prerequisitesFor(continuation);
        Iterator<String> it = visited.iterator();
        while (it.hasNext()) {
            if (prerequisitesFor.contains(it.next())) {
                return true;
            }
        }
        List<WorkContinuationImpl> parents = continuation.getParents();
        if (parents != null && !parents.isEmpty()) {
            Iterator<WorkContinuationImpl> it2 = parents.iterator();
            while (it2.hasNext()) {
                if (hasCycles(it2.next(), visited)) {
                    return true;
                }
            }
        }
        visited.removeAll(continuation.getIds());
        return false;
    }

    public static Set<String> prerequisitesFor(WorkContinuationImpl continuation) {
        HashSet hashSet = new HashSet();
        List<WorkContinuationImpl> parents = continuation.getParents();
        if (parents != null && !parents.isEmpty()) {
            Iterator<WorkContinuationImpl> it = parents.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().getIds());
            }
        }
        return hashSet;
    }
}
