package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: Runnable.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\tH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/core/util/ContinuationRunnable;", "Ljava/lang/Runnable;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "continuation", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/coroutines/Continuation;)V", "run", "toString", "", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ContinuationRunnable extends AtomicBoolean implements Runnable {
    private final Continuation<Unit> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationRunnable(Continuation<? super Unit> continuation) {
        super(false);
        this.continuation = continuation;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (compareAndSet(false, true)) {
            Continuation<Unit> continuation = this.continuation;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationRunnable(ran = " + get() + ')';
    }
}
