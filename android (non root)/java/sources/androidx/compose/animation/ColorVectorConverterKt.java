package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: ColorVectorConverter.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"8\u0010\u0000\u001a)\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"?\u0010\t\u001a)\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0001*\u00020\n8Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"ColorToVector", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "Lkotlin/ParameterName;", "name", "colorSpace", "Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/graphics/Color;", "Landroidx/compose/animation/core/AnimationVector4D;", "VectorConverter", "Landroidx/compose/ui/graphics/Color$Companion;", "getVectorConverter", "(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;", "animation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ColorVectorConverterKt {
    private static final Function1<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> ColorToVector = new Function1<ColorSpace, TwoWayConverter<Color, AnimationVector4D>>() { // from class: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1
        @Override // kotlin.jvm.functions.Function1
        public final TwoWayConverter<Color, AnimationVector4D> invoke(final ColorSpace colorSpace) {
            Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
            return VectorConvertersKt.TwoWayConverter(new Function1<Color, AnimationVector4D>() { // from class: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ AnimationVector4D invoke(Color color) {
                    return m50invoke8_81llA(color.m2649unboximpl());
                }

                /* renamed from: invoke-8_81llA, reason: not valid java name */
                public final AnimationVector4D m50invoke8_81llA(long j) {
                    long m2636convertvNxB06k = Color.m2636convertvNxB06k(j, ColorSpaces.INSTANCE.getOklab());
                    return new AnimationVector4D(Color.m2633component4impl(m2636convertvNxB06k), Color.m2630component1impl(m2636convertvNxB06k), Color.m2631component2impl(m2636convertvNxB06k), Color.m2632component3impl(m2636convertvNxB06k));
                }
            }, new Function1<AnimationVector4D, Color>() { // from class: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Color invoke(AnimationVector4D animationVector4D) {
                    return Color.m2629boximpl(m51invokevNxB06k(animationVector4D));
                }

                /* renamed from: invoke-vNxB06k, reason: not valid java name */
                public final long m51invokevNxB06k(AnimationVector4D vector) {
                    Intrinsics.checkNotNullParameter(vector, "vector");
                    return Color.m2636convertvNxB06k(ColorKt.Color(RangesKt.coerceIn(vector.getV2(), 0.0f, 1.0f), RangesKt.coerceIn(vector.getV3(), -0.5f, 0.5f), RangesKt.coerceIn(vector.getV4(), -0.5f, 0.5f), RangesKt.coerceIn(vector.getV1(), 0.0f, 1.0f), ColorSpaces.INSTANCE.getOklab()), ColorSpace.this);
                }
            });
        }
    };

    public static final Function1<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> getVectorConverter(Color.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return ColorToVector;
    }
}
