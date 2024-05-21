package androidx.compose.ui.graphics.vector;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FastFloatParser.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/graphics/vector/FloatResult;", "", "value", "", "isValid", "", "(FZ)V", "()Z", "setValid", "(Z)V", "getValue", "()F", "setValue", "(F)V", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FloatResult {
    private boolean isValid;
    private float value;

    public FloatResult() {
        this(0.0f, false, 3, null);
    }

    public final float getValue() {
        return this.value;
    }

    /* renamed from: isValid, reason: from getter */
    public final boolean getIsValid() {
        return this.isValid;
    }

    public final void setValid(boolean z) {
        this.isValid = z;
    }

    public final void setValue(float f) {
        this.value = f;
    }

    public FloatResult(float f, boolean z) {
        this.value = f;
        this.isValid = z;
    }

    public /* synthetic */ FloatResult(float f, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Float.NaN : f, (i & 2) != 0 ? false : z);
    }
}
