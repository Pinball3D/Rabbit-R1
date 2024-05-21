package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VisibilityThresholds.kt */
@Metadata(d1 = {"\u0000l\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"(\u0010\u0005\u001a\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t\"\u0018\u0010\n\u001a\u00020\u000b*\u00020\f8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\"\u0015\u0010\n\u001a\u00020\u0004*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u0010\"\u0018\u0010\n\u001a\u00020\u0011*\u00020\u00128Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\u0013\"\u0018\u0010\n\u001a\u00020\u0014*\u00020\u00158Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\u0016\"\u0018\u0010\n\u001a\u00020\u0017*\u00020\u00188Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\u0019\"\u0018\u0010\n\u001a\u00020\u001a*\u00020\u001b8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\u001c\"\u0018\u0010\n\u001a\u00020\u001d*\u00020\u001e8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\u001f\"\u0015\u0010\n\u001a\u00020 *\u00020!8F¢\u0006\u0006\u001a\u0004\b\r\u0010\"\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"DpVisibilityThreshold", "", "PxVisibilityThreshold", "rectVisibilityThreshold", "Landroidx/compose/ui/geometry/Rect;", "visibilityThresholdMap", "", "Landroidx/compose/animation/core/TwoWayConverter;", "getVisibilityThresholdMap", "()Ljava/util/Map;", "VisibilityThreshold", "Landroidx/compose/ui/geometry/Offset;", "Landroidx/compose/ui/geometry/Offset$Companion;", "getVisibilityThreshold", "(Landroidx/compose/ui/geometry/Offset$Companion;)J", "Landroidx/compose/ui/geometry/Rect$Companion;", "(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/geometry/Size;", "Landroidx/compose/ui/geometry/Size$Companion;", "(Landroidx/compose/ui/geometry/Size$Companion;)J", "Landroidx/compose/ui/unit/Dp;", "Landroidx/compose/ui/unit/Dp$Companion;", "(Landroidx/compose/ui/unit/Dp$Companion;)F", "Landroidx/compose/ui/unit/DpOffset;", "Landroidx/compose/ui/unit/DpOffset$Companion;", "(Landroidx/compose/ui/unit/DpOffset$Companion;)J", "Landroidx/compose/ui/unit/IntOffset;", "Landroidx/compose/ui/unit/IntOffset$Companion;", "(Landroidx/compose/ui/unit/IntOffset$Companion;)J", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/ui/unit/IntSize$Companion;", "(Landroidx/compose/ui/unit/IntSize$Companion;)J", "", "Lkotlin/Int$Companion;", "(Lkotlin/jvm/internal/IntCompanionObject;)I", "animation-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VisibilityThresholdsKt {
    private static final float DpVisibilityThreshold = 0.1f;
    private static final float PxVisibilityThreshold = 0.5f;
    private static final Rect rectVisibilityThreshold;
    private static final Map<TwoWayConverter<?, ?>, Float> visibilityThresholdMap;

    public static final int getVisibilityThreshold(IntCompanionObject intCompanionObject) {
        Intrinsics.checkNotNullParameter(intCompanionObject, "<this>");
        return 1;
    }

    public static final Rect getVisibilityThreshold(Rect.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return rectVisibilityThreshold;
    }

    public static final Map<TwoWayConverter<?, ?>, Float> getVisibilityThresholdMap() {
        return visibilityThresholdMap;
    }

    static {
        Float valueOf = Float.valueOf(0.5f);
        rectVisibilityThreshold = new Rect(0.5f, 0.5f, 0.5f, 0.5f);
        TwoWayConverter<Integer, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(IntCompanionObject.INSTANCE);
        Float valueOf2 = Float.valueOf(1.0f);
        TwoWayConverter<Dp, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(Dp.INSTANCE);
        Float valueOf3 = Float.valueOf(0.1f);
        visibilityThresholdMap = MapsKt.mapOf(TuplesKt.to(vectorConverter, valueOf2), TuplesKt.to(VectorConvertersKt.getVectorConverter(IntSize.INSTANCE), valueOf2), TuplesKt.to(VectorConvertersKt.getVectorConverter(IntOffset.INSTANCE), valueOf2), TuplesKt.to(VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), Float.valueOf(0.01f)), TuplesKt.to(VectorConvertersKt.getVectorConverter(Rect.INSTANCE), valueOf), TuplesKt.to(VectorConvertersKt.getVectorConverter(Size.INSTANCE), valueOf), TuplesKt.to(VectorConvertersKt.getVectorConverter(Offset.INSTANCE), valueOf), TuplesKt.to(vectorConverter2, valueOf3), TuplesKt.to(VectorConvertersKt.getVectorConverter(DpOffset.INSTANCE), valueOf3));
    }

    public static final long getVisibilityThreshold(IntOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntOffsetKt.IntOffset(1, 1);
    }

    public static final long getVisibilityThreshold(Offset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return OffsetKt.Offset(0.5f, 0.5f);
    }

    public static final long getVisibilityThreshold(DpOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return DpKt.m4904DpOffsetYgX7TsA(getVisibilityThreshold(Dp.INSTANCE), getVisibilityThreshold(Dp.INSTANCE));
    }

    public static final long getVisibilityThreshold(Size.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return SizeKt.Size(0.5f, 0.5f);
    }

    public static final long getVisibilityThreshold(IntSize.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntSizeKt.IntSize(1, 1);
    }

    public static final float getVisibilityThreshold(Dp.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return Dp.m4883constructorimpl(0.1f);
    }
}
