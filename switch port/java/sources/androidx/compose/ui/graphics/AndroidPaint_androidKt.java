package androidx.compose.ui.graphics;

import android.graphics.Paint;
import android.graphics.Shader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPaint.android.kt */
@Metadata(d1 = {"\u0000n\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\b\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0003\u001a\u0010\u0010\u0005\u001a\u00020\u0006*\u00060\u0003j\u0002`\u0007H\u0000\u001a\u0010\u0010\b\u001a\u00020\t*\u00060\u0003j\u0002`\u0007H\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00060\u0003j\u0002`\u0007H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\f\u001a\u0018\u0010\r\u001a\u00020\u000e*\u00060\u0003j\u0002`\u0007H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u0018\u0010\u0010\u001a\u00020\u0011*\u00060\u0003j\u0002`\u0007H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u0018\u0010\u0012\u001a\u00020\u0013*\u00060\u0003j\u0002`\u0007H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u0010\u0010\u0014\u001a\u00020\u0006*\u00060\u0003j\u0002`\u0007H\u0000\u001a\u0010\u0010\u0015\u001a\u00020\u0006*\u00060\u0003j\u0002`\u0007H\u0000\u001a\u0018\u0010\u0016\u001a\u00020\u0017*\u00060\u0003j\u0002`\u0007H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u0018\u0010\u0018\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u0006H\u0000\u001a\u0018\u0010\u001b\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\tH\u0000\u001a%\u0010\u001c\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001d\u001a\u00020\u001eH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a%\u0010!\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u000bH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\u001a\u0010$\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010%H\u0000\u001a%\u0010&\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u000eH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b'\u0010 \u001a\u001a\u0010(\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010)H\u0000\u001a \u0010*\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u000e\u0010\u001a\u001a\n\u0018\u00010+j\u0004\u0018\u0001`,H\u0000\u001a%\u0010-\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u0011H\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b.\u0010 \u001a%\u0010/\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u0013H\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010 \u001a\u0018\u00101\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u0006H\u0000\u001a\u0018\u00102\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u0006H\u0000\u001a%\u00103\u001a\u00020\u0019*\u00060\u0003j\u0002`\u00072\u0006\u0010\u001a\u001a\u00020\u0017H\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010 *\n\u00105\"\u00020\u00032\u00020\u0003\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u00066"}, d2 = {"Paint", "Landroidx/compose/ui/graphics/Paint;", "makeNativePaint", "Landroid/graphics/Paint;", "asComposePaint", "getNativeAlpha", "", "Landroidx/compose/ui/graphics/NativePaint;", "getNativeAntiAlias", "", "getNativeColor", "Landroidx/compose/ui/graphics/Color;", "(Landroid/graphics/Paint;)J", "getNativeFilterQuality", "Landroidx/compose/ui/graphics/FilterQuality;", "(Landroid/graphics/Paint;)I", "getNativeStrokeCap", "Landroidx/compose/ui/graphics/StrokeCap;", "getNativeStrokeJoin", "Landroidx/compose/ui/graphics/StrokeJoin;", "getNativeStrokeMiterLimit", "getNativeStrokeWidth", "getNativeStyle", "Landroidx/compose/ui/graphics/PaintingStyle;", "setNativeAlpha", "", "value", "setNativeAntiAlias", "setNativeBlendMode", "mode", "Landroidx/compose/ui/graphics/BlendMode;", "setNativeBlendMode-GB0RdKg", "(Landroid/graphics/Paint;I)V", "setNativeColor", "setNativeColor-4WTKRHQ", "(Landroid/graphics/Paint;J)V", "setNativeColorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "setNativeFilterQuality", "setNativeFilterQuality-50PEsBU", "setNativePathEffect", "Landroidx/compose/ui/graphics/PathEffect;", "setNativeShader", "Landroid/graphics/Shader;", "Landroidx/compose/ui/graphics/Shader;", "setNativeStrokeCap", "setNativeStrokeCap-CSYIeUk", "setNativeStrokeJoin", "setNativeStrokeJoin-kLtJ_vA", "setNativeStrokeMiterLimit", "setNativeStrokeWidth", "setNativeStyle", "setNativeStyle--5YerkU", "NativePaint", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidPaint_androidKt {

    /* compiled from: AndroidPaint.android.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[Paint.Style.values().length];
            try {
                iArr[Paint.Style.STROKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Paint.Cap.values().length];
            try {
                iArr2[Paint.Cap.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Paint.Cap.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Paint.Cap.SQUARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Paint.Join.values().length];
            try {
                iArr3[Paint.Join.MITER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[Paint.Join.BEVEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[Paint.Join.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public static final Paint Paint() {
        return new AndroidPaint();
    }

    public static final Paint asComposePaint(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return new AndroidPaint(paint);
    }

    public static final android.graphics.Paint makeNativePaint() {
        return new android.graphics.Paint(7);
    }

    /* renamed from: setNativeBlendMode-GB0RdKg, reason: not valid java name */
    public static final void m2525setNativeBlendModeGB0RdKg(android.graphics.Paint setNativeBlendMode, int i) {
        Intrinsics.checkNotNullParameter(setNativeBlendMode, "$this$setNativeBlendMode");
        WrapperVerificationHelperMethods.INSTANCE.m3035setBlendModeGB0RdKg(setNativeBlendMode, i);
    }

    public static final void setNativeColorFilter(android.graphics.Paint paint, ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setColorFilter(colorFilter != null ? AndroidColorFilter_androidKt.asAndroidColorFilter(colorFilter) : null);
    }

    public static final float getNativeAlpha(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.getAlpha() / 255.0f;
    }

    public static final void setNativeAlpha(android.graphics.Paint paint, float f) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setAlpha((int) Math.rint(f * 255.0f));
    }

    public static final boolean getNativeAntiAlias(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.isAntiAlias();
    }

    public static final void setNativeAntiAlias(android.graphics.Paint paint, boolean z) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setAntiAlias(z);
    }

    public static final long getNativeColor(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return ColorKt.Color(paint.getColor());
    }

    /* renamed from: setNativeColor-4WTKRHQ, reason: not valid java name */
    public static final void m2526setNativeColor4WTKRHQ(android.graphics.Paint setNativeColor, long j) {
        Intrinsics.checkNotNullParameter(setNativeColor, "$this$setNativeColor");
        setNativeColor.setColor(ColorKt.m2693toArgb8_81llA(j));
    }

    /* renamed from: setNativeStyle--5YerkU, reason: not valid java name */
    public static final void m2530setNativeStyle5YerkU(android.graphics.Paint setNativeStyle, int i) {
        Intrinsics.checkNotNullParameter(setNativeStyle, "$this$setNativeStyle");
        setNativeStyle.setStyle(PaintingStyle.m2896equalsimpl0(i, PaintingStyle.INSTANCE.m2901getStrokeTiuSbCo()) ? Paint.Style.STROKE : Paint.Style.FILL);
    }

    public static final int getNativeStyle(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Paint.Style style = paint.getStyle();
        if (style != null && WhenMappings.$EnumSwitchMapping$0[style.ordinal()] == 1) {
            return PaintingStyle.INSTANCE.m2901getStrokeTiuSbCo();
        }
        return PaintingStyle.INSTANCE.m2900getFillTiuSbCo();
    }

    public static final float getNativeStrokeWidth(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.getStrokeWidth();
    }

    public static final void setNativeStrokeWidth(android.graphics.Paint paint, float f) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setStrokeWidth(f);
    }

    public static final int getNativeStrokeCap(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Paint.Cap strokeCap = paint.getStrokeCap();
        int i = strokeCap == null ? -1 : WhenMappings.$EnumSwitchMapping$1[strokeCap.ordinal()];
        if (i == 1) {
            return StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        }
        if (i == 2) {
            return StrokeCap.INSTANCE.m2986getRoundKaPHkGw();
        }
        if (i == 3) {
            return StrokeCap.INSTANCE.m2987getSquareKaPHkGw();
        }
        return StrokeCap.INSTANCE.m2985getButtKaPHkGw();
    }

    /* renamed from: setNativeStrokeCap-CSYIeUk, reason: not valid java name */
    public static final void m2528setNativeStrokeCapCSYIeUk(android.graphics.Paint setNativeStrokeCap, int i) {
        Paint.Cap cap;
        Intrinsics.checkNotNullParameter(setNativeStrokeCap, "$this$setNativeStrokeCap");
        if (StrokeCap.m2981equalsimpl0(i, StrokeCap.INSTANCE.m2987getSquareKaPHkGw())) {
            cap = Paint.Cap.SQUARE;
        } else if (StrokeCap.m2981equalsimpl0(i, StrokeCap.INSTANCE.m2986getRoundKaPHkGw())) {
            cap = Paint.Cap.ROUND;
        } else {
            cap = StrokeCap.m2981equalsimpl0(i, StrokeCap.INSTANCE.m2985getButtKaPHkGw()) ? Paint.Cap.BUTT : Paint.Cap.BUTT;
        }
        setNativeStrokeCap.setStrokeCap(cap);
    }

    public static final int getNativeStrokeJoin(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Paint.Join strokeJoin = paint.getStrokeJoin();
        int i = strokeJoin == null ? -1 : WhenMappings.$EnumSwitchMapping$2[strokeJoin.ordinal()];
        if (i == 1) {
            return StrokeJoin.INSTANCE.m2996getMiterLxFBmk8();
        }
        if (i == 2) {
            return StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        }
        if (i == 3) {
            return StrokeJoin.INSTANCE.m2997getRoundLxFBmk8();
        }
        return StrokeJoin.INSTANCE.m2996getMiterLxFBmk8();
    }

    /* renamed from: setNativeStrokeJoin-kLtJ_vA, reason: not valid java name */
    public static final void m2529setNativeStrokeJoinkLtJ_vA(android.graphics.Paint setNativeStrokeJoin, int i) {
        Paint.Join join;
        Intrinsics.checkNotNullParameter(setNativeStrokeJoin, "$this$setNativeStrokeJoin");
        if (StrokeJoin.m2991equalsimpl0(i, StrokeJoin.INSTANCE.m2996getMiterLxFBmk8())) {
            join = Paint.Join.MITER;
        } else if (StrokeJoin.m2991equalsimpl0(i, StrokeJoin.INSTANCE.m2995getBevelLxFBmk8())) {
            join = Paint.Join.BEVEL;
        } else {
            join = StrokeJoin.m2991equalsimpl0(i, StrokeJoin.INSTANCE.m2997getRoundLxFBmk8()) ? Paint.Join.ROUND : Paint.Join.MITER;
        }
        setNativeStrokeJoin.setStrokeJoin(join);
    }

    public static final float getNativeStrokeMiterLimit(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.getStrokeMiter();
    }

    public static final void setNativeStrokeMiterLimit(android.graphics.Paint paint, float f) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setStrokeMiter(f);
    }

    public static final int getNativeFilterQuality(android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        if (!paint.isFilterBitmap()) {
            return FilterQuality.INSTANCE.m2737getNonefv9h1I();
        }
        return FilterQuality.INSTANCE.m2735getLowfv9h1I();
    }

    /* renamed from: setNativeFilterQuality-50PEsBU, reason: not valid java name */
    public static final void m2527setNativeFilterQuality50PEsBU(android.graphics.Paint setNativeFilterQuality, int i) {
        Intrinsics.checkNotNullParameter(setNativeFilterQuality, "$this$setNativeFilterQuality");
        setNativeFilterQuality.setFilterBitmap(!FilterQuality.m2730equalsimpl0(i, FilterQuality.INSTANCE.m2737getNonefv9h1I()));
    }

    public static final void setNativeShader(android.graphics.Paint paint, Shader shader) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setShader(shader);
    }

    public static final void setNativePathEffect(android.graphics.Paint paint, PathEffect pathEffect) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        AndroidPathEffect androidPathEffect = (AndroidPathEffect) pathEffect;
        paint.setPathEffect(androidPathEffect != null ? androidPathEffect.getNativePathEffect() : null);
    }
}
