package kotlinx.coroutines;

import io.sentry.SentryEvent;
import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: JobSupport.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0003R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "parent", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "handlesException", "", "getHandlesException$kotlinx_coroutines_core", "()Z", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", "complete", "completeExceptionally", SentryEvent.JsonKeys.EXCEPTION, "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public class JobImpl extends JobSupport implements CompletableJob {
    private final boolean handlesException;

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: getHandlesException$kotlinx_coroutines_core, reason: from getter */
    public boolean getHandlesException() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    public JobImpl(Job job) {
        super(true);
        initParentJob(job);
        this.handlesException = handlesException();
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean complete() {
        return makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean completeExceptionally(Throwable exception) {
        return makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(exception, false, 2, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        r3 = r3.getParentHandle$kotlinx_coroutines_core();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        if ((r3 instanceof kotlinx.coroutines.ChildHandleNode) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        r3 = (kotlinx.coroutines.ChildHandleNode) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        if (r3 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        r3 = r3.getJob();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r3 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002a, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x001d, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
    
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r3.getHandlesException() == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean handlesException() {
        /*
            r3 = this;
            kotlinx.coroutines.ChildHandle r3 = r3.getParentHandle$kotlinx_coroutines_core()
            boolean r0 = r3 instanceof kotlinx.coroutines.ChildHandleNode
            r1 = 0
            if (r0 == 0) goto Lc
            kotlinx.coroutines.ChildHandleNode r3 = (kotlinx.coroutines.ChildHandleNode) r3
            goto Ld
        Lc:
            r3 = r1
        Ld:
            r0 = 0
            if (r3 == 0) goto L33
            kotlinx.coroutines.JobSupport r3 = r3.getJob()
            if (r3 != 0) goto L17
            goto L33
        L17:
            boolean r2 = r3.getHandlesException()
            if (r2 == 0) goto L1f
            r3 = 1
            return r3
        L1f:
            kotlinx.coroutines.ChildHandle r3 = r3.getParentHandle$kotlinx_coroutines_core()
            boolean r2 = r3 instanceof kotlinx.coroutines.ChildHandleNode
            if (r2 == 0) goto L2a
            kotlinx.coroutines.ChildHandleNode r3 = (kotlinx.coroutines.ChildHandleNode) r3
            goto L2b
        L2a:
            r3 = r1
        L2b:
            if (r3 == 0) goto L33
            kotlinx.coroutines.JobSupport r3 = r3.getJob()
            if (r3 != 0) goto L17
        L33:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobImpl.handlesException():boolean");
    }
}
