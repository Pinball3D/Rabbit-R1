package androidx.compose.ui;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MotionDurationScale.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\bg\u0018\u0000 \n2\u00020\u0001:\u0001\nR\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/MotionDurationScale;", "Lkotlin/coroutines/CoroutineContext$Element;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "scaleFactor", "", "getScaleFactor", "()F", "Key", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface MotionDurationScale extends CoroutineContext.Element {

    /* renamed from: Key, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    float getScaleFactor();

    /* compiled from: MotionDurationScale.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static <R> R fold(MotionDurationScale motionDurationScale, R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) CoroutineContext.Element.DefaultImpls.fold(motionDurationScale, r, operation);
        }

        public static <E extends CoroutineContext.Element> E get(MotionDurationScale motionDurationScale, CoroutineContext.Key<E> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return (E) CoroutineContext.Element.DefaultImpls.get(motionDurationScale, key);
        }

        public static CoroutineContext minusKey(MotionDurationScale motionDurationScale, CoroutineContext.Key<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return CoroutineContext.Element.DefaultImpls.minusKey(motionDurationScale, key);
        }

        public static CoroutineContext plus(MotionDurationScale motionDurationScale, CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return CoroutineContext.Element.DefaultImpls.plus(motionDurationScale, context);
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    default CoroutineContext.Key<?> getKey() {
        return INSTANCE;
    }

    /* compiled from: MotionDurationScale.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/MotionDurationScale$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Landroidx/compose/ui/MotionDurationScale;", "()V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* renamed from: androidx.compose.ui.MotionDurationScale$Key, reason: from kotlin metadata */
    /* loaded from: classes.dex */
    public static final class Companion implements CoroutineContext.Key<MotionDurationScale> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
