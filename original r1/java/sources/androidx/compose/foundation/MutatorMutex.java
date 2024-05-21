package androidx.compose.foundation;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* compiled from: MutatorMutex.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J?\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\u001c\u0010\r\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000eH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010JX\u0010\u0011\u001a\u0002H\n\"\u0004\b\u0000\u0010\u0012\"\u0004\b\u0001\u0010\n2\u0006\u0010\u0013\u001a\u0002H\u00122\b\b\u0002\u0010\u000b\u001a\u00020\f2'\u0010\r\u001a#\b\u0001\u0012\u0004\u0012\u0002H\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0014¢\u0006\u0002\b\u0015H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0002R\"\u0010\u0003\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Landroidx/compose/foundation/MutatorMutex;", "", "()V", "currentMutator", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroidx/compose/foundation/MutatorMutex$Mutator;", "Landroidx/compose/foundation/AtomicReference;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "mutate", "R", SentryThread.JsonKeys.PRIORITY, "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "mutateWith", ExifInterface.GPS_DIRECTION_TRUE, "receiver", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryMutateOrCancel", "", "mutator", "Mutator", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutatorMutex {
    public static final int $stable = 0;
    private final AtomicReference<Mutator> currentMutator = new AtomicReference<>(null);
    private final Mutex mutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MutatorMutex.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/MutatorMutex$Mutator;", "", SentryThread.JsonKeys.PRIORITY, "Landroidx/compose/foundation/MutatePriority;", "job", "Lkotlinx/coroutines/Job;", "(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V", "getJob", "()Lkotlinx/coroutines/Job;", "getPriority", "()Landroidx/compose/foundation/MutatePriority;", "canInterrupt", "", "other", "cancel", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Mutator {
        private final Job job;
        private final MutatePriority priority;

        public final Job getJob() {
            return this.job;
        }

        public final MutatePriority getPriority() {
            return this.priority;
        }

        public Mutator(MutatePriority priority, Job job) {
            Intrinsics.checkNotNullParameter(priority, "priority");
            Intrinsics.checkNotNullParameter(job, "job");
            this.priority = priority;
            this.job = job;
        }

        public final boolean canInterrupt(Mutator other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return this.priority.compareTo(other.priority) >= 0;
        }

        public final void cancel() {
            this.job.cancel((CancellationException) new MutationInterruptedException());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryMutateOrCancel(Mutator mutator) {
        Mutator mutator2;
        do {
            mutator2 = this.currentMutator.get();
            if (mutator2 != null && !mutator.canInterrupt(mutator2)) {
                throw new CancellationException("Current mutation had a higher priority");
            }
        } while (!this.currentMutator.compareAndSet(mutator2, mutator));
        if (mutator2 != null) {
            mutator2.cancel();
        }
    }

    public static /* synthetic */ Object mutate$default(MutatorMutex mutatorMutex, MutatePriority mutatePriority, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.mutate(mutatePriority, function1, continuation);
    }

    public final <R> Object mutate(MutatePriority mutatePriority, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        return CoroutineScopeKt.coroutineScope(new MutatorMutex$mutate$2(mutatePriority, this, function1, null), continuation);
    }

    public static /* synthetic */ Object mutateWith$default(MutatorMutex mutatorMutex, Object obj, MutatePriority mutatePriority, Function2 function2, Continuation continuation, int i, Object obj2) {
        if ((i & 2) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.mutateWith(obj, mutatePriority, function2, continuation);
    }

    public final <T, R> Object mutateWith(T t, MutatePriority mutatePriority, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        return CoroutineScopeKt.coroutineScope(new MutatorMutex$mutateWith$2(mutatePriority, this, function2, t, null), continuation);
    }
}
