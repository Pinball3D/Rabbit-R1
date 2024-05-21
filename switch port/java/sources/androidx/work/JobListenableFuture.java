package androidx.work;

import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* compiled from: ListenableFuture.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J)\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b2\u000e\u0010\r\u001a\n \f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0096\u0001J\u0013\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\n \f*\u0004\u0018\u00018\u00008\u0000H\u0096\u0001¢\u0006\u0002\u0010\u0015J.\u0010\u0014\u001a\n \f*\u0004\u0018\u00018\u00008\u00002\u0006\u0010\n\u001a\u00020\u00162\u000e\u0010\r\u001a\n \f*\u0004\u0018\u00010\u00170\u0017H\u0096\u0003¢\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u0010H\u0096\u0001J\t\u0010\u001a\u001a\u00020\u0010H\u0096\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/work/JobListenableFuture;", "R", "Lcom/google/common/util/concurrent/ListenableFuture;", "job", "Lkotlinx/coroutines/Job;", "underlying", "Landroidx/work/impl/utils/futures/SettableFuture;", "(Lkotlinx/coroutines/Job;Landroidx/work/impl/utils/futures/SettableFuture;)V", "addListener", "", "p0", "Ljava/lang/Runnable;", "kotlin.jvm.PlatformType", "p1", "Ljava/util/concurrent/Executor;", "cancel", "", "complete", "result", "(Ljava/lang/Object;)V", "get", "()Ljava/lang/Object;", "", "Ljava/util/concurrent/TimeUnit;", "(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;", "isCancelled", "isDone", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class JobListenableFuture<R> implements ListenableFuture<R> {
    private final Job job;
    private final SettableFuture<R> underlying;

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable p0, Executor p1) {
        this.underlying.addListener(p0, p1);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean p0) {
        return this.underlying.cancel(p0);
    }

    @Override // java.util.concurrent.Future
    public R get() {
        return this.underlying.get();
    }

    @Override // java.util.concurrent.Future
    public R get(long p0, TimeUnit p1) {
        return this.underlying.get(p0, p1);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.underlying.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.underlying.isDone();
    }

    public JobListenableFuture(Job job, SettableFuture<R> underlying) {
        Intrinsics.checkNotNullParameter(job, "job");
        Intrinsics.checkNotNullParameter(underlying, "underlying");
        this.job = job;
        this.underlying = underlying;
        job.invokeOnCompletion(new Function1<Throwable, Unit>(this) { // from class: androidx.work.JobListenableFuture.1
            final /* synthetic */ JobListenableFuture<R> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (th == null) {
                    if (!((JobListenableFuture) this.this$0).underlying.isDone()) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                } else {
                    if (th instanceof CancellationException) {
                        ((JobListenableFuture) this.this$0).underlying.cancel(true);
                        return;
                    }
                    SettableFuture settableFuture = ((JobListenableFuture) this.this$0).underlying;
                    Throwable cause = th.getCause();
                    if (cause != null) {
                        th = cause;
                    }
                    settableFuture.setException(th);
                }
            }
        });
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ JobListenableFuture(kotlinx.coroutines.Job r1, androidx.work.impl.utils.futures.SettableFuture r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 2
            if (r3 == 0) goto Ld
            androidx.work.impl.utils.futures.SettableFuture r2 = androidx.work.impl.utils.futures.SettableFuture.create()
            java.lang.String r3 = "create()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
        Ld:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.JobListenableFuture.<init>(kotlinx.coroutines.Job, androidx.work.impl.utils.futures.SettableFuture, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final void complete(R result) {
        this.underlying.set(result);
    }
}
