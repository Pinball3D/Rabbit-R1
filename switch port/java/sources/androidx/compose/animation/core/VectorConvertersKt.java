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
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: VectorConverters.kt */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001aJ\u0010*\u001a\u000e\u0012\u0004\u0012\u0002H+\u0012\u0004\u0012\u0002H,0\u0001\"\u0004\b\u0000\u0010+\"\b\b\u0001\u0010,*\u00020-2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u0002H+\u0012\u0004\u0012\u0002H,0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u0002H+0/\u001a \u00101\u001a\u00020\b2\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\b2\u0006\u00104\u001a\u00020\bH\u0000\"\u001d\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001d\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"$\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00178Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\"!\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0001*\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001b\"$\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u001c8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001d\"$\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u001e8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001f\"$\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020 8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0018\u0010!\"$\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\"8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0018\u0010#\"$\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00030\u0001*\u00020$8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0018\u0010%\"!\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020&8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010'\"!\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\u0001*\u00020(8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010)\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"DpOffsetToVector", "Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/DpOffset;", "Landroidx/compose/animation/core/AnimationVector2D;", "DpToVector", "Landroidx/compose/ui/unit/Dp;", "Landroidx/compose/animation/core/AnimationVector1D;", "FloatToVector", "", "IntOffsetToVector", "Landroidx/compose/ui/unit/IntOffset;", "IntSizeToVector", "Landroidx/compose/ui/unit/IntSize;", "IntToVector", "", "OffsetToVector", "Landroidx/compose/ui/geometry/Offset;", "RectToVector", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/animation/core/AnimationVector4D;", "SizeToVector", "Landroidx/compose/ui/geometry/Size;", "VectorConverter", "Landroidx/compose/ui/geometry/Offset$Companion;", "getVectorConverter", "(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/geometry/Rect$Companion;", "(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/geometry/Size$Companion;", "(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/Dp$Companion;", "(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/DpOffset$Companion;", "(Landroidx/compose/ui/unit/DpOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/IntOffset$Companion;", "(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/IntSize$Companion;", "(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Lkotlin/Float$Companion;", "(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;", "Lkotlin/Int$Companion;", "(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;", "TwoWayConverter", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "convertToVector", "Lkotlin/Function1;", "convertFromVector", "lerp", "start", "stop", "fraction", "animation-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorConvertersKt {
    private static final TwoWayConverter<Float, AnimationVector1D> FloatToVector = TwoWayConverter(new Function1<Float, AnimationVector1D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$1
        public final AnimationVector1D invoke(float f) {
            return new AnimationVector1D(f);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector1D invoke(Float f) {
            return invoke(f.floatValue());
        }
    }, new Function1<AnimationVector1D, Float>() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Float invoke(AnimationVector1D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Float.valueOf(it.getValue());
        }
    });
    private static final TwoWayConverter<Integer, AnimationVector1D> IntToVector = TwoWayConverter(new Function1<Integer, AnimationVector1D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$1
        public final AnimationVector1D invoke(int i) {
            return new AnimationVector1D(i);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector1D invoke(Integer num) {
            return invoke(num.intValue());
        }
    }, new Function1<AnimationVector1D, Integer>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Integer invoke(AnimationVector1D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf((int) it.getValue());
        }
    });
    private static final TwoWayConverter<Dp, AnimationVector1D> DpToVector = TwoWayConverter(new Function1<Dp, AnimationVector1D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector1D invoke(Dp dp) {
            return m140invoke0680j_4(dp.m4897unboximpl());
        }

        /* renamed from: invoke-0680j_4, reason: not valid java name */
        public final AnimationVector1D m140invoke0680j_4(float f) {
            return new AnimationVector1D(f);
        }
    }, new Function1<AnimationVector1D, Dp>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Dp invoke(AnimationVector1D animationVector1D) {
            return Dp.m4881boximpl(m141invokeu2uoSUM(animationVector1D));
        }

        /* renamed from: invoke-u2uoSUM, reason: not valid java name */
        public final float m141invokeu2uoSUM(AnimationVector1D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Dp.m4883constructorimpl(it.getValue());
        }
    });
    private static final TwoWayConverter<DpOffset, AnimationVector2D> DpOffsetToVector = TwoWayConverter(new Function1<DpOffset, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(DpOffset dpOffset) {
            return m138invokejoFl9I(dpOffset.getPackedValue());
        }

        /* renamed from: invoke-jo-Fl9I, reason: not valid java name */
        public final AnimationVector2D m138invokejoFl9I(long j) {
            return new AnimationVector2D(DpOffset.m4944getXD9Ej5fM(j), DpOffset.m4946getYD9Ej5fM(j));
        }
    }, new Function1<AnimationVector2D, DpOffset>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ DpOffset invoke(AnimationVector2D animationVector2D) {
            return DpOffset.m4938boximpl(m139invokegVRvYmI(animationVector2D));
        }

        /* renamed from: invoke-gVRvYmI, reason: not valid java name */
        public final long m139invokegVRvYmI(AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return DpKt.m4904DpOffsetYgX7TsA(Dp.m4883constructorimpl(it.getV1()), Dp.m4883constructorimpl(it.getV2()));
        }
    });
    private static final TwoWayConverter<Size, AnimationVector2D> SizeToVector = TwoWayConverter(new Function1<Size, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(Size size) {
            return m148invokeuvyYCjk(size.getPackedValue());
        }

        /* renamed from: invoke-uvyYCjk, reason: not valid java name */
        public final AnimationVector2D m148invokeuvyYCjk(long j) {
            return new AnimationVector2D(Size.m2469getWidthimpl(j), Size.m2466getHeightimpl(j));
        }
    }, new Function1<AnimationVector2D, Size>() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Size invoke(AnimationVector2D animationVector2D) {
            return Size.m2457boximpl(m149invoke7Ah8Wj8(animationVector2D));
        }

        /* renamed from: invoke-7Ah8Wj8, reason: not valid java name */
        public final long m149invoke7Ah8Wj8(AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return SizeKt.Size(it.getV1(), it.getV2());
        }
    });
    private static final TwoWayConverter<Offset, AnimationVector2D> OffsetToVector = TwoWayConverter(new Function1<Offset, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(Offset offset) {
            return m146invokek4lQ0M(offset.getPackedValue());
        }

        /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
        public final AnimationVector2D m146invokek4lQ0M(long j) {
            return new AnimationVector2D(Offset.m2400getXimpl(j), Offset.m2401getYimpl(j));
        }
    }, new Function1<AnimationVector2D, Offset>() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Offset invoke(AnimationVector2D animationVector2D) {
            return Offset.m2389boximpl(m147invoketuRUvjQ(animationVector2D));
        }

        /* renamed from: invoke-tuRUvjQ, reason: not valid java name */
        public final long m147invoketuRUvjQ(AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return OffsetKt.Offset(it.getV1(), it.getV2());
        }
    });
    private static final TwoWayConverter<IntOffset, AnimationVector2D> IntOffsetToVector = TwoWayConverter(new Function1<IntOffset, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(IntOffset intOffset) {
            return m142invokegyyYBs(intOffset.getPackedValue());
        }

        /* renamed from: invoke--gyyYBs, reason: not valid java name */
        public final AnimationVector2D m142invokegyyYBs(long j) {
            return new AnimationVector2D(IntOffset.m5001getXimpl(j), IntOffset.m5002getYimpl(j));
        }
    }, new Function1<AnimationVector2D, IntOffset>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ IntOffset invoke(AnimationVector2D animationVector2D) {
            return IntOffset.m4992boximpl(m143invokeBjo55l4(animationVector2D));
        }

        /* renamed from: invoke-Bjo55l4, reason: not valid java name */
        public final long m143invokeBjo55l4(AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return IntOffsetKt.IntOffset(MathKt.roundToInt(it.getV1()), MathKt.roundToInt(it.getV2()));
        }
    });
    private static final TwoWayConverter<IntSize, AnimationVector2D> IntSizeToVector = TwoWayConverter(new Function1<IntSize, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(IntSize intSize) {
            return m144invokeozmzZPI(intSize.getPackedValue());
        }

        /* renamed from: invoke-ozmzZPI, reason: not valid java name */
        public final AnimationVector2D m144invokeozmzZPI(long j) {
            return new AnimationVector2D(IntSize.m5043getWidthimpl(j), IntSize.m5042getHeightimpl(j));
        }
    }, new Function1<AnimationVector2D, IntSize>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ IntSize invoke(AnimationVector2D animationVector2D) {
            return IntSize.m5035boximpl(m145invokeYEO4UFw(animationVector2D));
        }

        /* renamed from: invoke-YEO4UFw, reason: not valid java name */
        public final long m145invokeYEO4UFw(AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return IntSizeKt.IntSize(MathKt.roundToInt(it.getV1()), MathKt.roundToInt(it.getV2()));
        }
    });
    private static final TwoWayConverter<Rect, AnimationVector4D> RectToVector = TwoWayConverter(new Function1<Rect, AnimationVector4D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$1
        @Override // kotlin.jvm.functions.Function1
        public final AnimationVector4D invoke(Rect it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new AnimationVector4D(it.getLeft(), it.getTop(), it.getRight(), it.getBottom());
        }
    }, new Function1<AnimationVector4D, Rect>() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Rect invoke(AnimationVector4D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new Rect(it.getV1(), it.getV2(), it.getV3(), it.getV4());
        }
    });

    public static final TwoWayConverter<Offset, AnimationVector2D> getVectorConverter(Offset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return OffsetToVector;
    }

    public static final TwoWayConverter<Rect, AnimationVector4D> getVectorConverter(Rect.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return RectToVector;
    }

    public static final TwoWayConverter<Size, AnimationVector2D> getVectorConverter(Size.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return SizeToVector;
    }

    public static final TwoWayConverter<Dp, AnimationVector1D> getVectorConverter(Dp.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return DpToVector;
    }

    public static final TwoWayConverter<DpOffset, AnimationVector2D> getVectorConverter(DpOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return DpOffsetToVector;
    }

    public static final TwoWayConverter<IntOffset, AnimationVector2D> getVectorConverter(IntOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntOffsetToVector;
    }

    public static final TwoWayConverter<IntSize, AnimationVector2D> getVectorConverter(IntSize.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntSizeToVector;
    }

    public static final TwoWayConverter<Float, AnimationVector1D> getVectorConverter(FloatCompanionObject floatCompanionObject) {
        Intrinsics.checkNotNullParameter(floatCompanionObject, "<this>");
        return FloatToVector;
    }

    public static final TwoWayConverter<Integer, AnimationVector1D> getVectorConverter(IntCompanionObject intCompanionObject) {
        Intrinsics.checkNotNullParameter(intCompanionObject, "<this>");
        return IntToVector;
    }

    public static final float lerp(float f, float f2, float f3) {
        return (f * (1 - f3)) + (f2 * f3);
    }

    public static final <T, V extends AnimationVector> TwoWayConverter<T, V> TwoWayConverter(Function1<? super T, ? extends V> convertToVector, Function1<? super V, ? extends T> convertFromVector) {
        Intrinsics.checkNotNullParameter(convertToVector, "convertToVector");
        Intrinsics.checkNotNullParameter(convertFromVector, "convertFromVector");
        return new TwoWayConverterImpl(convertToVector, convertFromVector);
    }
}
