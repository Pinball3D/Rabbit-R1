package androidx.lifecycle;

import androidx.compose.runtime.ComposerKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: PausingDispatcher.kt */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", i = {0}, l = {ComposerKt.providerValuesKey}, m = "invokeSuspend", n = {"controller"}, s = {"L$0"})
/* loaded from: classes2.dex */
public final class PausingDispatcherKt$whenStateAtLeast$2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
    final /* synthetic */ Function2<CoroutineScope, Continuation<? super T>, Object> $block;
    final /* synthetic */ Lifecycle.State $minState;
    final /* synthetic */ Lifecycle $this_whenStateAtLeast;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super PausingDispatcherKt$whenStateAtLeast$2> continuation) {
        super(2, continuation);
        this.$this_whenStateAtLeast = lifecycle;
        this.$minState = state;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.$this_whenStateAtLeast, this.$minState, this.$block, continuation);
        pausingDispatcherKt$whenStateAtLeast$2.L$0 = obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        LifecycleController lifecycleController;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Job job = (Job) ((CoroutineScope) this.L$0).getCoroutineContext().get(Job.INSTANCE);
            if (job == null) {
                throw new IllegalStateException("when[State] methods should have a parent job".toString());
            }
            PausingDispatcher pausingDispatcher = new PausingDispatcher();
            LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, pausingDispatcher.dispatchQueue, job);
            try {
                this.L$0 = lifecycleController2;
                this.label = 1;
                obj = BuildersKt.withContext(pausingDispatcher, this.$block, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                lifecycleController = lifecycleController2;
            } catch (Throwable th) {
                th = th;
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                throw th;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lifecycleController = (LifecycleController) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th2) {
                th = th2;
                lifecycleController.finish();
                throw th;
            }
        }
        lifecycleController.finish();
        return obj;
    }
}
