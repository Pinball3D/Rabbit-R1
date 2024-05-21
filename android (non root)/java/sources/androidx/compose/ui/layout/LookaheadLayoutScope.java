package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: LookaheadScope.kt */
@Deprecated(message = "LookaheadLayoutScope has been renamed to LookaheadScope", replaceWith = @ReplaceWith(expression = "LookaheadScope", imports = {}))
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bg\u0018\u00002\u00020\u0001JD\u0010\u0002\u001a\u00020\u0003*\u00020\u000326\u0010\u0002\u001a2\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0004H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/LookaheadLayoutScope;", "", "onPlaced", "Landroidx/compose/ui/Modifier;", "Lkotlin/Function2;", "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;", "Lkotlin/ParameterName;", "name", "lookaheadScopeCoordinates", "layoutCoordinates", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LookaheadLayoutScope {
    @Deprecated(message = "onPlaced in LookaheadLayoutScope has been deprecated. It's replaced with reading LookaheadLayoutCoordinates directly during placement in IntermediateMeasureScope. See example below.")
    Modifier onPlaced(Modifier modifier, Function2<? super LookaheadLayoutCoordinates, ? super LookaheadLayoutCoordinates, Unit> function2);
}
