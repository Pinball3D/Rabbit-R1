package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.colorspace.Connector;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.okhttp.SentryOkHttpEventListener;
import io.sentry.protocol.Response;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.BuildConfig;

/* compiled from: ColorSpace.kt */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a8\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a8\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0000\u001a\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00102\b\u0010\u0004\u001a\u0004\u0018\u00010\u0010H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0011H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0000\u001a\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0000\u001a\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0000\u001a\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0000\u001a\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0000\u001a(\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0000\u001a(\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0000\u001a(\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0000\u001a8\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001aH\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a8\u0010#\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001aH\u0010#\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u001e\u0010$\u001a\u00020%*\u00020%2\u0006\u0010&\u001a\u00020\u00112\b\b\u0002\u0010'\u001a\u00020(H\u0007\u001a+\u0010)\u001a\u00020**\u00020%2\b\b\u0002\u0010+\u001a\u00020%2\b\b\u0002\u0010,\u001a\u00020-ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010/\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00060"}, d2 = {"absRcpResponse", "", ViewHierarchyNode.JsonKeys.X, CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "d", "g", "absResponse", "chromaticAdaptation", "", "matrix", "srcWhitePoint", "dstWhitePoint", "compare", "", "Landroidx/compose/ui/graphics/colorspace/TransferParameters;", "Landroidx/compose/ui/graphics/colorspace/WhitePoint;", "inverse3x3", "m", "mul3x3", "lhs", "rhs", "mul3x3Diag", "mul3x3Float3", "mul3x3Float3_0", "", "r0", "r1", "r2", "mul3x3Float3_1", "mul3x3Float3_2", "rcpResponse", "e", "f", Response.TYPE, "adapt", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "whitePoint", "adaptation", "Landroidx/compose/ui/graphics/colorspace/Adaptation;", SentryOkHttpEventListener.CONNECT_EVENT, "Landroidx/compose/ui/graphics/colorspace/Connector;", "destination", "intent", "Landroidx/compose/ui/graphics/colorspace/RenderIntent;", "connect-YBCOT_4", "(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)Landroidx/compose/ui/graphics/colorspace/Connector;", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ColorSpaceKt {
    public static final ColorSpace adapt(ColorSpace colorSpace, WhitePoint whitePoint) {
        Intrinsics.checkNotNullParameter(colorSpace, "<this>");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        return adapt$default(colorSpace, whitePoint, null, 2, null);
    }

    /* renamed from: connect-YBCOT_4$default */
    public static /* synthetic */ Connector m3051connectYBCOT_4$default(ColorSpace colorSpace, ColorSpace colorSpace2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            colorSpace2 = ColorSpaces.INSTANCE.getSrgb();
        }
        if ((i2 & 2) != 0) {
            i = RenderIntent.INSTANCE.m3065getPerceptualuksYyKA();
        }
        return m3050connectYBCOT_4(colorSpace, colorSpace2, i);
    }

    /* renamed from: connect-YBCOT_4 */
    public static final Connector m3050connectYBCOT_4(ColorSpace connect, ColorSpace destination, int i) {
        Intrinsics.checkNotNullParameter(connect, "$this$connect");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (connect == ColorSpaces.INSTANCE.getSrgb()) {
            if (destination == ColorSpaces.INSTANCE.getSrgb()) {
                return Connector.INSTANCE.getSrgbIdentity$ui_graphics_release();
            }
            if (destination == ColorSpaces.INSTANCE.getOklab() && RenderIntent.m3060equalsimpl0(i, RenderIntent.INSTANCE.m3065getPerceptualuksYyKA())) {
                return Connector.INSTANCE.getSrgbToOklabPerceptual$ui_graphics_release();
            }
        } else if (connect == ColorSpaces.INSTANCE.getOklab() && destination == ColorSpaces.INSTANCE.getSrgb() && RenderIntent.m3060equalsimpl0(i, RenderIntent.INSTANCE.m3065getPerceptualuksYyKA())) {
            return Connector.INSTANCE.getOklabToSrgbPerceptual$ui_graphics_release();
        }
        if (connect == destination) {
            return Connector.INSTANCE.identity$ui_graphics_release(connect);
        }
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (ColorModel.m3039equalsimpl0(connect.getModel(), ColorModel.INSTANCE.m3046getRgbxdoWZVw()) && ColorModel.m3039equalsimpl0(destination.getModel(), ColorModel.INSTANCE.m3046getRgbxdoWZVw())) {
            return new Connector.RgbConnector((Rgb) connect, (Rgb) destination, i, defaultConstructorMarker);
        }
        return new Connector(connect, destination, i, defaultConstructorMarker);
    }

    public static /* synthetic */ ColorSpace adapt$default(ColorSpace colorSpace, WhitePoint whitePoint, Adaptation adaptation, int i, Object obj) {
        if ((i & 2) != 0) {
            adaptation = Adaptation.INSTANCE.getBradford();
        }
        return adapt(colorSpace, whitePoint, adaptation);
    }

    public static final ColorSpace adapt(ColorSpace colorSpace, WhitePoint whitePoint, Adaptation adaptation) {
        Intrinsics.checkNotNullParameter(colorSpace, "<this>");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(adaptation, "adaptation");
        if (!ColorModel.m3039equalsimpl0(colorSpace.getModel(), ColorModel.INSTANCE.m3046getRgbxdoWZVw())) {
            return colorSpace;
        }
        Rgb rgb = (Rgb) colorSpace;
        if (compare(rgb.getWhitePoint(), whitePoint)) {
            return colorSpace;
        }
        return new Rgb(rgb, mul3x3(chromaticAdaptation(adaptation.getTransform(), rgb.getWhitePoint().toXyz$ui_graphics_release(), whitePoint.toXyz$ui_graphics_release()), rgb.getTransform()), whitePoint);
    }

    public static final double rcpResponse(double d, double d2, double d3, double d4, double d5, double d6) {
        return d >= d5 * d4 ? (Math.pow(d, 1.0d / d6) - d3) / d2 : d / d4;
    }

    public static final double response(double d, double d2, double d3, double d4, double d5, double d6) {
        return d >= d5 ? Math.pow((d2 * d) + d3, d6) : d * d4;
    }

    public static final double rcpResponse(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        return d >= d5 * d4 ? (Math.pow(d - d6, 1.0d / d8) - d3) / d2 : (d - d7) / d4;
    }

    public static final double response(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        return d >= d5 ? Math.pow((d2 * d) + d3, d8) + d6 : (d4 * d) + d7;
    }

    public static final double absRcpResponse(double d, double d2, double d3, double d4, double d5, double d6) {
        return Math.copySign(rcpResponse(d < BuildConfig.SENTRY_SAMPLE_RATE ? -d : d, d2, d3, d4, d5, d6), d);
    }

    public static final double absResponse(double d, double d2, double d3, double d4, double d5, double d6) {
        return Math.copySign(response(d < BuildConfig.SENTRY_SAMPLE_RATE ? -d : d, d2, d3, d4, d5, d6), d);
    }

    public static final boolean compare(TransferParameters a, TransferParameters transferParameters) {
        Intrinsics.checkNotNullParameter(a, "a");
        return transferParameters != null && Math.abs(a.getA() - transferParameters.getA()) < 0.001d && Math.abs(a.getB() - transferParameters.getB()) < 0.001d && Math.abs(a.getC() - transferParameters.getC()) < 0.001d && Math.abs(a.getD() - transferParameters.getD()) < 0.002d && Math.abs(a.getE() - transferParameters.getE()) < 0.001d && Math.abs(a.getF() - transferParameters.getF()) < 0.001d && Math.abs(a.getGamma() - transferParameters.getGamma()) < 0.001d;
    }

    public static final boolean compare(WhitePoint a, WhitePoint b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        if (a == b) {
            return true;
        }
        return Math.abs(a.getX() - b.getX()) < 0.001f && Math.abs(a.getY() - b.getY()) < 0.001f;
    }

    public static final boolean compare(float[] a, float[] b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        if (a == b) {
            return true;
        }
        int length = a.length;
        for (int i = 0; i < length; i++) {
            if (Float.compare(a[i], b[i]) != 0 && Math.abs(a[i] - b[i]) > 0.001f) {
                return false;
            }
        }
        return true;
    }

    public static final float[] inverse3x3(float[] m) {
        Intrinsics.checkNotNullParameter(m, "m");
        float f = m[0];
        float f2 = m[3];
        float f3 = m[6];
        float f4 = m[1];
        float f5 = m[4];
        float f6 = m[7];
        float f7 = m[2];
        float f8 = m[5];
        float f9 = m[8];
        float f10 = (f5 * f9) - (f6 * f8);
        float f11 = (f6 * f7) - (f4 * f9);
        float f12 = (f4 * f8) - (f5 * f7);
        float f13 = (f * f10) + (f2 * f11) + (f3 * f12);
        float[] fArr = new float[m.length];
        fArr[0] = f10 / f13;
        fArr[1] = f11 / f13;
        fArr[2] = f12 / f13;
        fArr[3] = ((f3 * f8) - (f2 * f9)) / f13;
        fArr[4] = ((f9 * f) - (f3 * f7)) / f13;
        fArr[5] = ((f7 * f2) - (f8 * f)) / f13;
        fArr[6] = ((f2 * f6) - (f3 * f5)) / f13;
        fArr[7] = ((f3 * f4) - (f6 * f)) / f13;
        fArr[8] = ((f * f5) - (f2 * f4)) / f13;
        return fArr;
    }

    public static final float[] mul3x3(float[] lhs, float[] rhs) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        float f = lhs[0] * rhs[0];
        float f2 = lhs[3];
        float f3 = rhs[1];
        float f4 = lhs[6];
        float f5 = rhs[2];
        float f6 = lhs[1];
        float f7 = rhs[0];
        float f8 = lhs[4];
        float f9 = lhs[7];
        float f10 = lhs[2] * f7;
        float f11 = lhs[5];
        float f12 = f10 + (rhs[1] * f11);
        float f13 = lhs[8];
        float f14 = lhs[0];
        float f15 = rhs[3] * f14;
        float f16 = rhs[4];
        float f17 = f15 + (f2 * f16);
        float f18 = rhs[5];
        float f19 = lhs[1];
        float f20 = rhs[3];
        float f21 = lhs[2];
        float f22 = f14 * rhs[6];
        float f23 = lhs[3];
        float f24 = rhs[7];
        float f25 = f22 + (f23 * f24);
        float f26 = rhs[8];
        float f27 = rhs[6];
        return new float[]{f + (f2 * f3) + (f4 * f5), (f6 * f7) + (f3 * f8) + (f9 * f5), f12 + (f5 * f13), f17 + (f4 * f18), (f19 * f20) + (f8 * f16) + (f9 * f18), (f20 * f21) + (f11 * rhs[4]) + (f18 * f13), f25 + (f4 * f26), (f19 * f27) + (lhs[4] * f24) + (f9 * f26), (f21 * f27) + (lhs[5] * rhs[7]) + (f13 * f26)};
    }

    public static final float[] mul3x3Float3(float[] lhs, float[] rhs) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        float f = rhs[0];
        float f2 = rhs[1];
        float f3 = rhs[2];
        rhs[0] = (lhs[0] * f) + (lhs[3] * f2) + (lhs[6] * f3);
        rhs[1] = (lhs[1] * f) + (lhs[4] * f2) + (lhs[7] * f3);
        rhs[2] = (lhs[2] * f) + (lhs[5] * f2) + (lhs[8] * f3);
        return rhs;
    }

    public static final float mul3x3Float3_0(float[] lhs, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        return (lhs[0] * f) + (lhs[3] * f2) + (lhs[6] * f3);
    }

    public static final float mul3x3Float3_1(float[] lhs, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        return (lhs[1] * f) + (lhs[4] * f2) + (lhs[7] * f3);
    }

    public static final float mul3x3Float3_2(float[] lhs, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        return (lhs[2] * f) + (lhs[5] * f2) + (lhs[8] * f3);
    }

    public static final float[] mul3x3Diag(float[] lhs, float[] rhs) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        float f = lhs[0];
        float f2 = lhs[1];
        float f3 = lhs[2];
        return new float[]{lhs[0] * rhs[0], lhs[1] * rhs[1], lhs[2] * rhs[2], rhs[3] * f, rhs[4] * f2, rhs[5] * f3, f * rhs[6], f2 * rhs[7], f3 * rhs[8]};
    }

    public static final float[] chromaticAdaptation(float[] matrix, float[] srcWhitePoint, float[] dstWhitePoint) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(srcWhitePoint, "srcWhitePoint");
        Intrinsics.checkNotNullParameter(dstWhitePoint, "dstWhitePoint");
        float[] mul3x3Float3 = mul3x3Float3(matrix, srcWhitePoint);
        float[] mul3x3Float32 = mul3x3Float3(matrix, dstWhitePoint);
        return mul3x3(inverse3x3(matrix), mul3x3Diag(new float[]{mul3x3Float32[0] / mul3x3Float3[0], mul3x3Float32[1] / mul3x3Float3[1], mul3x3Float32[2] / mul3x3Float3[2]}, matrix));
    }
}
