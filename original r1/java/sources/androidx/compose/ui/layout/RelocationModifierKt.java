package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RelocationModifier.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\u0094\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u000126\u0010\u0002\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\u00040\u00032F\u0010\n\u001aB\b\u0001\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000bH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"onRelocationRequest", "Landroidx/compose/ui/Modifier;", "onProvideDestination", "Lkotlin/Function2;", "Landroidx/compose/ui/geometry/Rect;", "Lkotlin/ParameterName;", "name", "rect", "Landroidx/compose/ui/layout/LayoutCoordinates;", "layoutCoordinates", "onPerformRelocation", "Lkotlin/Function3;", "sourceRect", "destinationRect", "Lkotlin/coroutines/Continuation;", "", "", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RelocationModifierKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = "Please use BringIntoViewResponder instead.")
    public static final Modifier onRelocationRequest(Modifier modifier, Function2<? super Rect, ? super LayoutCoordinates, Rect> onProvideDestination, Function3<? super Rect, ? super Rect, ? super Continuation<? super Unit>, ? extends Object> onPerformRelocation) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onProvideDestination, "onProvideDestination");
        Intrinsics.checkNotNullParameter(onPerformRelocation, "onPerformRelocation");
        return modifier;
    }
}
