package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SnapshotContextElement.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotContextElement;", "Lkotlin/coroutines/CoroutineContext$Element;", "Key", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SnapshotContextElement extends CoroutineContext.Element {

    /* renamed from: Key, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    /* compiled from: SnapshotContextElement.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static <R> R fold(SnapshotContextElement snapshotContextElement, R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) CoroutineContext.Element.DefaultImpls.fold(snapshotContextElement, r, operation);
        }

        public static <E extends CoroutineContext.Element> E get(SnapshotContextElement snapshotContextElement, CoroutineContext.Key<E> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return (E) CoroutineContext.Element.DefaultImpls.get(snapshotContextElement, key);
        }

        public static CoroutineContext minusKey(SnapshotContextElement snapshotContextElement, CoroutineContext.Key<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return CoroutineContext.Element.DefaultImpls.minusKey(snapshotContextElement, key);
        }

        public static CoroutineContext plus(SnapshotContextElement snapshotContextElement, CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return CoroutineContext.Element.DefaultImpls.plus(snapshotContextElement, context);
        }
    }

    /* compiled from: SnapshotContextElement.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotContextElement$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Landroidx/compose/runtime/snapshots/SnapshotContextElement;", "()V", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* renamed from: androidx.compose.runtime.snapshots.SnapshotContextElement$Key, reason: from kotlin metadata */
    /* loaded from: classes.dex */
    public static final class Companion implements CoroutineContext.Key<SnapshotContextElement> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
