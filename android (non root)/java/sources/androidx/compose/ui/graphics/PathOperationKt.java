package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.PathOperation;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PathOperation.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\"!\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"!\u0010\u0007\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006\"!\u0010\n\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006\"!\u0010\r\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"!\u0010\u0010\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"difference", "Landroidx/compose/ui/graphics/PathOperation;", "Landroidx/compose/ui/graphics/PathOperation$Companion;", "getDifference$annotations", "(Landroidx/compose/ui/graphics/PathOperation$Companion;)V", "getDifference", "(Landroidx/compose/ui/graphics/PathOperation$Companion;)I", "intersect", "getIntersect$annotations", "getIntersect", "reverseDifference", "getReverseDifference$annotations", "getReverseDifference", "union", "getUnion$annotations", "getUnion", "xor", "getXor$annotations", "getXor", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PathOperationKt {
    @Deprecated(message = "Use PathOperation.Difference instead", replaceWith = @ReplaceWith(expression = "PathOperation.Difference", imports = {"androidx.compose.ui.graphics.PathOperation.Difference"}))
    public static /* synthetic */ void getDifference$annotations(PathOperation.Companion companion) {
    }

    @Deprecated(message = "Use PathOperation.Intersect instead", replaceWith = @ReplaceWith(expression = "PathOperation.Intersect", imports = {"androidx.compose.ui.graphics.PathOperation.Intersect"}))
    public static /* synthetic */ void getIntersect$annotations(PathOperation.Companion companion) {
    }

    @Deprecated(message = "Use PathOperation.ReverseDifference instead", replaceWith = @ReplaceWith(expression = "PathOperation.ReverseDifference", imports = {"androidx.compose.ui.graphics.PathOperation.ReverseDifference"}))
    public static /* synthetic */ void getReverseDifference$annotations(PathOperation.Companion companion) {
    }

    @Deprecated(message = "Use PathOperation.Union instead", replaceWith = @ReplaceWith(expression = "PathOperation.Union", imports = {"androidx.compose.ui.graphics.PathOperation.Union"}))
    public static /* synthetic */ void getUnion$annotations(PathOperation.Companion companion) {
    }

    @Deprecated(message = "Use PathOperation.Xor instead", replaceWith = @ReplaceWith(expression = "PathOperation.Xor", imports = {"androidx.compose.ui.graphics.PathOperation.Xor"}))
    public static /* synthetic */ void getXor$annotations(PathOperation.Companion companion) {
    }

    public static final int getDifference(PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2924getDifferenceb3I0S0c();
    }

    public static final int getIntersect(PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2925getIntersectb3I0S0c();
    }

    public static final int getUnion(PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2927getUnionb3I0S0c();
    }

    public static final int getReverseDifference(PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2926getReverseDifferenceb3I0S0c();
    }

    public static final int getXor(PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2928getXorb3I0S0c();
    }
}
