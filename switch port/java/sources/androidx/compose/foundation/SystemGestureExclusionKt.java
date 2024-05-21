package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SystemGestureExclusion.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010\u0000\u001a\u00020\u00012\u0016\b\b\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003H\u0083\b\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0001\u001a\u001e\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0007"}, d2 = {"excludeFromSystemGestureQ", "Landroidx/compose/ui/Modifier;", "exclusion", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "Landroidx/compose/ui/geometry/Rect;", "systemGestureExclusion", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SystemGestureExclusionKt {
    private static final Modifier excludeFromSystemGestureQ(Function1<? super LayoutCoordinates, Rect> function1) {
        return new ExcludeFromSystemGestureElement(function1);
    }

    public static final Modifier systemGestureExclusion(Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return modifier.then(new ExcludeFromSystemGestureElement(null));
    }

    public static final Modifier systemGestureExclusion(Modifier modifier, Function1<? super LayoutCoordinates, Rect> exclusion) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(exclusion, "exclusion");
        return modifier.then(new ExcludeFromSystemGestureElement(exclusion));
    }
}
