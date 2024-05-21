package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* compiled from: Column.kt */
@LayoutScopeMarker
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\bg\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J \u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bH'J\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH'J\u001e\u0010\r\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/ColumnScope;", "", "align", "Landroidx/compose/ui/Modifier;", "alignment", "Landroidx/compose/ui/Alignment$Horizontal;", "alignBy", "alignmentLineBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Measured;", "", "alignmentLine", "Landroidx/compose/ui/layout/VerticalAlignmentLine;", "weight", "", "fill", "", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ColumnScope {
    Modifier align(Modifier modifier, Alignment.Horizontal horizontal);

    Modifier alignBy(Modifier modifier, VerticalAlignmentLine verticalAlignmentLine);

    Modifier alignBy(Modifier modifier, Function1<? super Measured, Integer> function1);

    Modifier weight(Modifier modifier, float f, boolean z);

    /* compiled from: Column.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ Modifier weight$default(ColumnScope columnScope, Modifier modifier, float f, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: weight");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return columnScope.weight(modifier, f, z);
    }
}
