package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MonotonicFrameClock.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ:\u0010\u0006\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u00072!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u0002H\u00070\tH¦@ø\u0001\u0000¢\u0006\u0002\u0010\u000eR\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u0010À\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/MonotonicFrameClock;", "Lkotlin/coroutines/CoroutineContext$Element;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "withFrameNanos", "R", "onFrame", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "frameTimeNanos", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Key", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface MonotonicFrameClock extends CoroutineContext.Element {

    /* renamed from: Key, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    <R> Object withFrameNanos(Function1<? super Long, ? extends R> function1, Continuation<? super R> continuation);

    /* compiled from: MonotonicFrameClock.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static <R> R fold(MonotonicFrameClock monotonicFrameClock, R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) CoroutineContext.Element.DefaultImpls.fold(monotonicFrameClock, r, operation);
        }

        public static <E extends CoroutineContext.Element> E get(MonotonicFrameClock monotonicFrameClock, CoroutineContext.Key<E> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return (E) CoroutineContext.Element.DefaultImpls.get(monotonicFrameClock, key);
        }

        public static CoroutineContext minusKey(MonotonicFrameClock monotonicFrameClock, CoroutineContext.Key<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return CoroutineContext.Element.DefaultImpls.minusKey(monotonicFrameClock, key);
        }

        public static CoroutineContext plus(MonotonicFrameClock monotonicFrameClock, CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return CoroutineContext.Element.DefaultImpls.plus(monotonicFrameClock, context);
        }

        @Deprecated
        public static CoroutineContext.Key<?> getKey(MonotonicFrameClock monotonicFrameClock) {
            return MonotonicFrameClock.super.getKey();
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    default CoroutineContext.Key<?> getKey() {
        return INSTANCE;
    }

    /* compiled from: MonotonicFrameClock.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/MonotonicFrameClock$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Landroidx/compose/runtime/MonotonicFrameClock;", "()V", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* renamed from: androidx.compose.runtime.MonotonicFrameClock$Key, reason: from kotlin metadata */
    /* loaded from: classes.dex */
    public static final class Companion implements CoroutineContext.Key<MonotonicFrameClock> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
