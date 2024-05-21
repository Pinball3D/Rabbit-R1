package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: SnapshotFloatState.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a#\u0010\u0004\u001a\u00020\u0003*\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\tH\u0086\n\u001a+\u0010\n\u001a\u00020\u000b*\u00020\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n¨\u0006\f"}, d2 = {"mutableFloatStateOf", "Landroidx/compose/runtime/MutableFloatState;", "value", "", "getValue", "Landroidx/compose/runtime/FloatState;", "thisObj", "", "property", "Lkotlin/reflect/KProperty;", "setValue", "", "runtime_release"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "androidx/compose/runtime/PrimitiveSnapshotStateKt")
/* loaded from: classes.dex */
final /* synthetic */ class PrimitiveSnapshotStateKt__SnapshotFloatStateKt {
    public static final MutableFloatState mutableFloatStateOf(float f) {
        return ActualAndroid_androidKt.createSnapshotMutableFloatState(f);
    }

    public static final float getValue(FloatState floatState, Object obj, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(floatState, "<this>");
        Intrinsics.checkNotNullParameter(property, "property");
        return floatState.getFloatValue();
    }

    public static final void setValue(MutableFloatState mutableFloatState, Object obj, KProperty<?> property, float f) {
        Intrinsics.checkNotNullParameter(mutableFloatState, "<this>");
        Intrinsics.checkNotNullParameter(property, "property");
        mutableFloatState.setFloatValue(f);
    }
}
