package androidx.compose.material3;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.material3.InternalMutatorMutex;
import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: InternalMutatorMutex.kt */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.InternalMutatorMutex$mutateWith$2", f = "InternalMutatorMutex.kt", i = {0, 0, 1, 1}, l = {177, 138}, m = "invokeSuspend", n = {"mutator", "$this$withLock_u24default$iv", "mutator", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes.dex */
public final class InternalMutatorMutex$mutateWith$2<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
    final /* synthetic */ Function2<T, Continuation<? super R>, Object> $block;
    final /* synthetic */ MutatePriority $priority;
    final /* synthetic */ T $receiver;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ InternalMutatorMutex this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InternalMutatorMutex$mutateWith$2(MutatePriority mutatePriority, InternalMutatorMutex internalMutatorMutex, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2, T t, Continuation<? super InternalMutatorMutex$mutateWith$2> continuation) {
        super(2, continuation);
        this.$priority = mutatePriority;
        this.this$0 = internalMutatorMutex;
        this.$block = function2;
        this.$receiver = t;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        InternalMutatorMutex$mutateWith$2 internalMutatorMutex$mutateWith$2 = new InternalMutatorMutex$mutateWith$2(this.$priority, this.this$0, this.$block, this.$receiver, continuation);
        internalMutatorMutex$mutateWith$2.L$0 = obj;
        return internalMutatorMutex$mutateWith$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
        return ((InternalMutatorMutex$mutateWith$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        InternalMutatorMutex.Mutator mutator;
        Mutex mutex;
        Function2 function2;
        InternalMutatorMutex internalMutatorMutex;
        Object obj2;
        InternalMutatorMutex internalMutatorMutex2;
        Throwable th;
        InternalMutatorMutex.Mutator mutator2;
        Mutex mutex2;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r1 = this.label;
        try {
            try {
                if (r1 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    MutatePriority mutatePriority = this.$priority;
                    CoroutineContext.Element element = coroutineScope.getCoroutineContext().get(Job.INSTANCE);
                    Intrinsics.checkNotNull(element);
                    mutator = new InternalMutatorMutex.Mutator(mutatePriority, (Job) element);
                    this.this$0.tryMutateOrCancel(mutator);
                    mutex = this.this$0.mutex;
                    function2 = this.$block;
                    Object obj3 = this.$receiver;
                    internalMutatorMutex = this.this$0;
                    this.L$0 = mutator;
                    this.L$1 = mutex;
                    this.L$2 = function2;
                    this.L$3 = obj3;
                    this.L$4 = internalMutatorMutex;
                    this.label = 1;
                    if (mutex.lock(null, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj2 = obj3;
                } else {
                    if (r1 != 1) {
                        if (r1 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        internalMutatorMutex2 = (InternalMutatorMutex) this.L$2;
                        mutex2 = (Mutex) this.L$1;
                        mutator2 = (InternalMutatorMutex.Mutator) this.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            atomicReference2 = internalMutatorMutex2.currentMutator;
                            atomicReference2.compareAndSet(mutator2, null);
                            mutex2.unlock(null);
                            return obj;
                        } catch (Throwable th2) {
                            th = th2;
                            atomicReference = internalMutatorMutex2.currentMutator;
                            atomicReference.compareAndSet(mutator2, null);
                            throw th;
                        }
                    }
                    InternalMutatorMutex internalMutatorMutex3 = (InternalMutatorMutex) this.L$4;
                    obj2 = this.L$3;
                    function2 = (Function2) this.L$2;
                    Mutex mutex3 = (Mutex) this.L$1;
                    InternalMutatorMutex.Mutator mutator3 = (InternalMutatorMutex.Mutator) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    mutex = mutex3;
                    internalMutatorMutex = internalMutatorMutex3;
                    mutator = mutator3;
                }
                this.L$0 = mutator;
                this.L$1 = mutex;
                this.L$2 = internalMutatorMutex;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 2;
                Object invoke = function2.invoke(obj2, this);
                if (invoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                internalMutatorMutex2 = internalMutatorMutex;
                Mutex mutex4 = mutex;
                obj = invoke;
                mutator2 = mutator;
                mutex2 = mutex4;
                atomicReference2 = internalMutatorMutex2.currentMutator;
                atomicReference2.compareAndSet(mutator2, null);
                mutex2.unlock(null);
                return obj;
            } catch (Throwable th3) {
                internalMutatorMutex2 = internalMutatorMutex;
                th = th3;
                mutator2 = mutator;
                atomicReference = internalMutatorMutex2.currentMutator;
                atomicReference.compareAndSet(mutator2, null);
                throw th;
            }
        } catch (Throwable th4) {
            r1.unlock(null);
            throw th4;
        }
    }
}
