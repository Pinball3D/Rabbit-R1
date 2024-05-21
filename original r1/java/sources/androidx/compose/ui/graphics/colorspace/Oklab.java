package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.flutter.embedding.android.KeyboardMap;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: Oklab.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J%\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J%\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u0019J@\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0001H\u0010ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b!\u0010\"R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\t\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006$"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Oklab;", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "name", "", "id", "", "(Ljava/lang/String;I)V", "isWideGamut", "", "()Z", "fromXyz", "", "v", "getMaxValue", "", "component", "getMinValue", "toXy", "", "v0", "v1", "v2", "toXy$ui_graphics_release", "toXyz", "toZ", "toZ$ui_graphics_release", "xyzaToColor", "Landroidx/compose/ui/graphics/Color;", ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y, "z", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "colorSpace", "xyzaToColor-JlNiLsg$ui_graphics_release", "(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J", "Companion", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Oklab extends ColorSpace {
    private static final float[] InverseM1;
    private static final float[] InverseM2;
    private static final float[] M1;
    private static final float[] M2;

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMaxValue(int component) {
        return component == 0 ? 1.0f : 0.5f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMinValue(int component) {
        return component == 0 ? 0.0f : -0.5f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    /* renamed from: isWideGamut */
    public boolean getIsWideGamut() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Oklab(String name, int i) {
        super(name, ColorModel.INSTANCE.m3045getLabxdoWZVw(), i, null);
        Intrinsics.checkNotNullParameter(name, "name");
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float[] toXyz(float[] v) {
        Intrinsics.checkNotNullParameter(v, "v");
        v[0] = RangesKt.coerceIn(v[0], 0.0f, 1.0f);
        v[1] = RangesKt.coerceIn(v[1], -0.5f, 0.5f);
        v[2] = RangesKt.coerceIn(v[2], -0.5f, 0.5f);
        ColorSpaceKt.mul3x3Float3(InverseM2, v);
        float f = v[0];
        v[0] = f * f * f;
        float f2 = v[1];
        v[1] = f2 * f2 * f2;
        float f3 = v[2];
        v[2] = f3 * f3 * f3;
        ColorSpaceKt.mul3x3Float3(InverseM1, v);
        return v;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public long toXy$ui_graphics_release(float v0, float v1, float v2) {
        float coerceIn = RangesKt.coerceIn(v0, 0.0f, 1.0f);
        float coerceIn2 = RangesKt.coerceIn(v1, -0.5f, 0.5f);
        float coerceIn3 = RangesKt.coerceIn(v2, -0.5f, 0.5f);
        float[] fArr = InverseM2;
        float mul3x3Float3_0 = ColorSpaceKt.mul3x3Float3_0(fArr, coerceIn, coerceIn2, coerceIn3);
        float mul3x3Float3_1 = ColorSpaceKt.mul3x3Float3_1(fArr, coerceIn, coerceIn2, coerceIn3);
        float mul3x3Float3_2 = ColorSpaceKt.mul3x3Float3_2(fArr, coerceIn, coerceIn2, coerceIn3);
        float f = mul3x3Float3_0 * mul3x3Float3_0 * mul3x3Float3_0;
        float f2 = mul3x3Float3_1 * mul3x3Float3_1 * mul3x3Float3_1;
        float f3 = mul3x3Float3_2 * mul3x3Float3_2 * mul3x3Float3_2;
        float[] fArr2 = InverseM1;
        float mul3x3Float3_02 = ColorSpaceKt.mul3x3Float3_0(fArr2, f, f2, f3);
        float mul3x3Float3_12 = ColorSpaceKt.mul3x3Float3_1(fArr2, f, f2, f3);
        return (Float.floatToIntBits(mul3x3Float3_02) << 32) | (KeyboardMap.kValueMask & Float.floatToIntBits(mul3x3Float3_12));
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float toZ$ui_graphics_release(float v0, float v1, float v2) {
        float coerceIn = RangesKt.coerceIn(v0, 0.0f, 1.0f);
        float coerceIn2 = RangesKt.coerceIn(v1, -0.5f, 0.5f);
        float coerceIn3 = RangesKt.coerceIn(v2, -0.5f, 0.5f);
        float[] fArr = InverseM2;
        float mul3x3Float3_0 = ColorSpaceKt.mul3x3Float3_0(fArr, coerceIn, coerceIn2, coerceIn3);
        float mul3x3Float3_1 = ColorSpaceKt.mul3x3Float3_1(fArr, coerceIn, coerceIn2, coerceIn3);
        float mul3x3Float3_2 = ColorSpaceKt.mul3x3Float3_2(fArr, coerceIn, coerceIn2, coerceIn3);
        float f = mul3x3Float3_2 * mul3x3Float3_2 * mul3x3Float3_2;
        return ColorSpaceKt.mul3x3Float3_2(InverseM1, mul3x3Float3_0 * mul3x3Float3_0 * mul3x3Float3_0, mul3x3Float3_1 * mul3x3Float3_1 * mul3x3Float3_1, f);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    /* renamed from: xyzaToColor-JlNiLsg$ui_graphics_release */
    public long mo3049xyzaToColorJlNiLsg$ui_graphics_release(float x, float y, float z, float a, ColorSpace colorSpace) {
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        float[] fArr = M1;
        float mul3x3Float3_0 = ColorSpaceKt.mul3x3Float3_0(fArr, x, y, z);
        float mul3x3Float3_1 = ColorSpaceKt.mul3x3Float3_1(fArr, x, y, z);
        float mul3x3Float3_2 = ColorSpaceKt.mul3x3Float3_2(fArr, x, y, z);
        double d = 0.33333334f;
        float signum = Math.signum(mul3x3Float3_0) * ((float) Math.pow(Math.abs(mul3x3Float3_0), d));
        float signum2 = Math.signum(mul3x3Float3_1) * ((float) Math.pow(Math.abs(mul3x3Float3_1), d));
        float signum3 = Math.signum(mul3x3Float3_2) * ((float) Math.pow(Math.abs(mul3x3Float3_2), d));
        float[] fArr2 = M2;
        return ColorKt.Color(ColorSpaceKt.mul3x3Float3_0(fArr2, signum, signum2, signum3), ColorSpaceKt.mul3x3Float3_1(fArr2, signum, signum2, signum3), ColorSpaceKt.mul3x3Float3_2(fArr2, signum, signum2, signum3), a, colorSpace);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float[] fromXyz(float[] v) {
        Intrinsics.checkNotNullParameter(v, "v");
        ColorSpaceKt.mul3x3Float3(M1, v);
        double d = 0.33333334f;
        v[0] = Math.signum(v[0]) * ((float) Math.pow(Math.abs(v[0]), d));
        v[1] = Math.signum(v[1]) * ((float) Math.pow(Math.abs(v[1]), d));
        v[2] = Math.signum(v[2]) * ((float) Math.pow(Math.abs(v[2]), d));
        ColorSpaceKt.mul3x3Float3(M2, v);
        return v;
    }

    static {
        float[] mul3x3 = ColorSpaceKt.mul3x3(new float[]{0.818933f, 0.032984544f, 0.0482003f, 0.36186674f, 0.9293119f, 0.26436627f, -0.12885971f, 0.03614564f, 0.6338517f}, ColorSpaceKt.chromaticAdaptation(Adaptation.INSTANCE.getBradford().getTransform(), Illuminant.INSTANCE.getD50().toXyz$ui_graphics_release(), Illuminant.INSTANCE.getD65().toXyz$ui_graphics_release()));
        M1 = mul3x3;
        float[] fArr = {0.21045426f, 1.9779985f, 0.025904037f, 0.7936178f, -2.4285922f, 0.78277177f, -0.004072047f, 0.4505937f, -0.80867577f};
        M2 = fArr;
        InverseM1 = ColorSpaceKt.inverse3x3(mul3x3);
        InverseM2 = ColorSpaceKt.inverse3x3(fArr);
    }
}
