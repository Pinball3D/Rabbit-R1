package androidx.compose.foundation;

import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidOverscroll.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B&\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\t¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\f\u0010\u0013\u001a\u00020\b*\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/DrawOverscrollModifier;", "Landroidx/compose/ui/draw/DrawModifier;", "Landroidx/compose/ui/platform/InspectorValueInfo;", "overscrollEffect", "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "inspectorInfo", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;)V", "equals", "", "other", "", "hashCode", "", "toString", "", "draw", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class DrawOverscrollModifier extends InspectorValueInfo implements DrawModifier {
    private final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawOverscrollModifier(AndroidEdgeEffectOverscrollEffect overscrollEffect, Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(overscrollEffect, "overscrollEffect");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.overscrollEffect = overscrollEffect;
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        contentDrawScope.drawContent();
        this.overscrollEffect.drawOverscroll(contentDrawScope);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof DrawOverscrollModifier) {
            return Intrinsics.areEqual(this.overscrollEffect, ((DrawOverscrollModifier) other).overscrollEffect);
        }
        return false;
    }

    public int hashCode() {
        return this.overscrollEffect.hashCode();
    }

    public String toString() {
        return "DrawOverscrollModifier(overscrollEffect=" + this.overscrollEffect + ')';
    }
}
