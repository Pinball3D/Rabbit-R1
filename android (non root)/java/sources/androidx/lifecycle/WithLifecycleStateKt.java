package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* compiled from: WithLifecycleState.kt */
@Metadata(d1 = {"\u0000,\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u001aA\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0081@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001a+\u0010\f\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\r\u001a+\u0010\f\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u000e2\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a+\u0010\u0010\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\r\u001a+\u0010\u0010\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u000e2\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a+\u0010\u0011\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\r\u001a+\u0010\u0011\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u000e2\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a3\u0010\u0012\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001a3\u0010\u0012\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00042\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u0014\u001a3\u0010\u0015\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\b\u0004\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\nH\u0081Hø\u0001\u0000¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"suspendWithStateAtLeastUnchecked", "R", "Landroidx/lifecycle/Lifecycle;", SentryThread.JsonKeys.STATE, "Landroidx/lifecycle/Lifecycle$State;", "dispatchNeeded", "", "lifecycleDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "block", "Lkotlin/Function0;", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withCreated", "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withResumed", "withStarted", "withStateAtLeast", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withStateAtLeastUnchecked", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WithLifecycleStateKt {
    public static final <R> Object withStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, Function0<? extends R> function0, Continuation<? super R> continuation) {
        if (state.compareTo(Lifecycle.State.CREATED) < 0) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
        }
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withStateAtLeast$$forInline(Lifecycle lifecycle, Lifecycle.State state, Function0<? extends R> function0, Continuation<? super R> continuation) {
        if (state.compareTo(Lifecycle.State.CREATED) < 0) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
        }
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withCreated(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withCreated$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withStarted(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withStarted$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withResumed(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withResumed$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withStateAtLeast(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) < 0) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
        }
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withStateAtLeast$$forInline(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) < 0) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
        }
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withCreated(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.CREATED;
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withCreated$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.CREATED;
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withStarted(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.STARTED;
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withStarted$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.STARTED;
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withResumed(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.RESUMED;
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withResumed$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.RESUMED;
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    public static final <R> Object withStateAtLeastUnchecked(Lifecycle lifecycle, Lifecycle.State state, Function0<? extends R> function0, Continuation<? super R> continuation) {
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        boolean isDispatchNeeded = immediate.isDispatchNeeded(continuation.get$context());
        if (!isDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, immediate, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    private static final <R> Object withStateAtLeastUnchecked$$forInline(Lifecycle lifecycle, Lifecycle.State state, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Dispatchers.getMain().getImmediate();
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.get$context();
        throw null;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1] */
    public static final <R> Object suspendWithStateAtLeastUnchecked(final Lifecycle lifecycle, final Lifecycle.State state, boolean z, final CoroutineDispatcher coroutineDispatcher, final Function0<? extends R> function0, Continuation<? super R> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final ?? r2 = new LifecycleEventObserver() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                Object m5698constructorimpl;
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event == Lifecycle.Event.INSTANCE.upTo(Lifecycle.State.this)) {
                    lifecycle.removeObserver(this);
                    Continuation continuation2 = cancellableContinuationImpl2;
                    Function0<R> function02 = function0;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        m5698constructorimpl = Result.m5698constructorimpl(function02.invoke());
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
                    }
                    continuation2.resumeWith(m5698constructorimpl);
                    return;
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    lifecycle.removeObserver(this);
                    Continuation continuation3 = cancellableContinuationImpl2;
                    Result.Companion companion3 = Result.INSTANCE;
                    continuation3.resumeWith(Result.m5698constructorimpl(ResultKt.createFailure(new LifecycleDestroyedException())));
                }
            }
        };
        if (z) {
            coroutineDispatcher.mo7257dispatch(EmptyCoroutineContext.INSTANCE, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    Lifecycle.this.addObserver(r2);
                }
            });
        } else {
            lifecycle.addObserver((LifecycleObserver) r2);
        }
        cancellableContinuationImpl2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (CoroutineDispatcher.this.isDispatchNeeded(EmptyCoroutineContext.INSTANCE)) {
                    CoroutineDispatcher coroutineDispatcher2 = CoroutineDispatcher.this;
                    EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                    final Lifecycle lifecycle2 = lifecycle;
                    final WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 = r2;
                    coroutineDispatcher2.mo7257dispatch(emptyCoroutineContext, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Lifecycle.this.removeObserver(withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1);
                        }
                    });
                    return;
                }
                lifecycle.removeObserver(r2);
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
