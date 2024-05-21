package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.ui.MotionDurationScale;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowRecomposer.android.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Landroidx/compose/ui/platform/MotionDurationScaleImpl;", "Landroidx/compose/ui/MotionDurationScale;", "()V", "<set-?>", "", "scaleFactor", "getScaleFactor", "()F", "setScaleFactor", "(F)V", "scaleFactor$delegate", "Landroidx/compose/runtime/MutableFloatState;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MotionDurationScaleImpl implements MotionDurationScale {

    /* renamed from: scaleFactor$delegate, reason: from kotlin metadata */
    private final MutableFloatState scaleFactor = PrimitiveSnapshotStateKt.mutableFloatStateOf(1.0f);

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) MotionDurationScale.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) MotionDurationScale.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return MotionDurationScale.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return MotionDurationScale.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // androidx.compose.ui.MotionDurationScale
    public float getScaleFactor() {
        return this.scaleFactor.getFloatValue();
    }

    public void setScaleFactor(float f) {
        this.scaleFactor.setFloatValue(f);
    }
}
