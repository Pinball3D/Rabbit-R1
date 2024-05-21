package androidx.compose.runtime;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* compiled from: Effects.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012'\u0010\u0004\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005¢\u0006\u0002\b\nø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\b\u0010\u0010\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\bH\u0016R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R4\u0010\u0004\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005¢\u0006\u0002\b\nX\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Landroidx/compose/runtime/LaunchedEffectImpl;", "Landroidx/compose/runtime/RememberObserver;", "parentCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "task", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V", "job", "Lkotlinx/coroutines/Job;", "scope", "Lkotlin/jvm/functions/Function2;", "onAbandoned", "onForgotten", "onRemembered", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LaunchedEffectImpl implements RememberObserver {
    private Job job;
    private final CoroutineScope scope;
    private final Function2<CoroutineScope, Continuation<? super Unit>, Object> task;

    /* JADX WARN: Multi-variable type inference failed */
    public LaunchedEffectImpl(CoroutineContext parentCoroutineContext, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> task) {
        Intrinsics.checkNotNullParameter(parentCoroutineContext, "parentCoroutineContext");
        Intrinsics.checkNotNullParameter(task, "task");
        this.task = task;
        this.scope = CoroutineScopeKt.CoroutineScope(parentCoroutineContext);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        Job launch$default;
        Job job = this.job;
        if (job != null) {
            JobKt__JobKt.cancel$default(job, "Old job was still running!", null, 2, null);
        }
        launch$default = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, this.task, 3, null);
        this.job = launch$default;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        Job job = this.job;
        if (job != null) {
            job.cancel((CancellationException) new LeftCompositionCancellationException());
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        Job job = this.job;
        if (job != null) {
            job.cancel((CancellationException) new LeftCompositionCancellationException());
        }
        this.job = null;
    }
}
