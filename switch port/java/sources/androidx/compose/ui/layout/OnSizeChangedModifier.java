package androidx.compose.ui.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OnRemeasuredModifier.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0002\u0010\nJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u001d\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0005H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018R \u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\r\u001a\u00020\u0005X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000e\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/layout/OnSizeChangedModifier;", "Landroidx/compose/ui/layout/OnRemeasuredModifier;", "Landroidx/compose/ui/platform/InspectorValueInfo;", "onSizeChanged", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/IntSize;", "", "inspectorInfo", "Landroidx/compose/ui/platform/InspectorInfo;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getOnSizeChanged", "()Lkotlin/jvm/functions/Function1;", "previousSize", "J", "equals", "", "other", "", "hashCode", "", "onRemeasured", "size", "onRemeasured-ozmzZPI", "(J)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class OnSizeChangedModifier extends InspectorValueInfo implements OnRemeasuredModifier {
    private final Function1<IntSize, Unit> onSizeChanged;
    private long previousSize;

    public final Function1<IntSize, Unit> getOnSizeChanged() {
        return this.onSizeChanged;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OnSizeChangedModifier(Function1<? super IntSize, Unit> onSizeChanged, Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(onSizeChanged, "onSizeChanged");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.onSizeChanged = onSizeChanged;
        this.previousSize = IntSizeKt.IntSize(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // androidx.compose.ui.layout.OnRemeasuredModifier
    /* renamed from: onRemeasured-ozmzZPI */
    public void mo260onRemeasuredozmzZPI(long size) {
        if (IntSize.m5041equalsimpl0(this.previousSize, size)) {
            return;
        }
        this.onSizeChanged.invoke(IntSize.m5035boximpl(size));
        this.previousSize = size;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof OnSizeChangedModifier) {
            return Intrinsics.areEqual(this.onSizeChanged, ((OnSizeChangedModifier) other).onSizeChanged);
        }
        return false;
    }

    public int hashCode() {
        return this.onSizeChanged.hashCode();
    }
}
