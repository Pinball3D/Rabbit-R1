package androidx.compose.ui.graphics;

import android.graphics.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import androidx.compose.ui.graphics.colorspace.WhitePoint;
import java.util.function.DoubleUnaryOperator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidColorSpace.android.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0007J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;", "", "()V", "androidColorSpace", "Landroid/graphics/ColorSpace;", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "composeColorSpace", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ColorSpaceVerificationHelper {
    public static final ColorSpaceVerificationHelper INSTANCE = new ColorSpaceVerificationHelper();

    private ColorSpaceVerificationHelper() {
    }

    @JvmStatic
    public static final ColorSpace androidColorSpace(androidx.compose.ui.graphics.colorspace.ColorSpace colorSpace) {
        ColorSpace colorSpace2;
        ColorSpace.Rgb rgb;
        Intrinsics.checkNotNullParameter(colorSpace, "<this>");
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getSrgb())) {
            ColorSpace colorSpace3 = ColorSpace.get(ColorSpace.Named.SRGB);
            Intrinsics.checkNotNullExpressionValue(colorSpace3, "get(android.graphics.ColorSpace.Named.SRGB)");
            return colorSpace3;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getAces())) {
            ColorSpace colorSpace4 = ColorSpace.get(ColorSpace.Named.ACES);
            Intrinsics.checkNotNullExpressionValue(colorSpace4, "get(android.graphics.ColorSpace.Named.ACES)");
            return colorSpace4;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getAcescg())) {
            ColorSpace colorSpace5 = ColorSpace.get(ColorSpace.Named.ACESCG);
            Intrinsics.checkNotNullExpressionValue(colorSpace5, "get(android.graphics.ColorSpace.Named.ACESCG)");
            return colorSpace5;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getAdobeRgb())) {
            ColorSpace colorSpace6 = ColorSpace.get(ColorSpace.Named.ADOBE_RGB);
            Intrinsics.checkNotNullExpressionValue(colorSpace6, "get(android.graphics.ColorSpace.Named.ADOBE_RGB)");
            return colorSpace6;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getBt2020())) {
            ColorSpace colorSpace7 = ColorSpace.get(ColorSpace.Named.BT2020);
            Intrinsics.checkNotNullExpressionValue(colorSpace7, "get(android.graphics.ColorSpace.Named.BT2020)");
            return colorSpace7;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getBt709())) {
            ColorSpace colorSpace8 = ColorSpace.get(ColorSpace.Named.BT709);
            Intrinsics.checkNotNullExpressionValue(colorSpace8, "get(android.graphics.ColorSpace.Named.BT709)");
            return colorSpace8;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getCieLab())) {
            ColorSpace colorSpace9 = ColorSpace.get(ColorSpace.Named.CIE_LAB);
            Intrinsics.checkNotNullExpressionValue(colorSpace9, "get(android.graphics.ColorSpace.Named.CIE_LAB)");
            return colorSpace9;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getCieXyz())) {
            ColorSpace colorSpace10 = ColorSpace.get(ColorSpace.Named.CIE_XYZ);
            Intrinsics.checkNotNullExpressionValue(colorSpace10, "get(android.graphics.ColorSpace.Named.CIE_XYZ)");
            return colorSpace10;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getDciP3())) {
            ColorSpace colorSpace11 = ColorSpace.get(ColorSpace.Named.DCI_P3);
            Intrinsics.checkNotNullExpressionValue(colorSpace11, "get(android.graphics.ColorSpace.Named.DCI_P3)");
            return colorSpace11;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getDisplayP3())) {
            ColorSpace colorSpace12 = ColorSpace.get(ColorSpace.Named.DISPLAY_P3);
            Intrinsics.checkNotNullExpressionValue(colorSpace12, "get(android.graphics.ColorSpace.Named.DISPLAY_P3)");
            return colorSpace12;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getExtendedSrgb())) {
            ColorSpace colorSpace13 = ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB);
            Intrinsics.checkNotNullExpressionValue(colorSpace13, "get(android.graphics.Col…pace.Named.EXTENDED_SRGB)");
            return colorSpace13;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getLinearExtendedSrgb())) {
            ColorSpace colorSpace14 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            Intrinsics.checkNotNullExpressionValue(colorSpace14, "get(android.graphics.Col…med.LINEAR_EXTENDED_SRGB)");
            return colorSpace14;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getLinearSrgb())) {
            ColorSpace colorSpace15 = ColorSpace.get(ColorSpace.Named.LINEAR_SRGB);
            Intrinsics.checkNotNullExpressionValue(colorSpace15, "get(android.graphics.ColorSpace.Named.LINEAR_SRGB)");
            return colorSpace15;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getNtsc1953())) {
            ColorSpace colorSpace16 = ColorSpace.get(ColorSpace.Named.NTSC_1953);
            Intrinsics.checkNotNullExpressionValue(colorSpace16, "get(android.graphics.ColorSpace.Named.NTSC_1953)");
            return colorSpace16;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getProPhotoRgb())) {
            ColorSpace colorSpace17 = ColorSpace.get(ColorSpace.Named.PRO_PHOTO_RGB);
            Intrinsics.checkNotNullExpressionValue(colorSpace17, "get(android.graphics.Col…pace.Named.PRO_PHOTO_RGB)");
            return colorSpace17;
        }
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.INSTANCE.getSmpteC())) {
            ColorSpace colorSpace18 = ColorSpace.get(ColorSpace.Named.SMPTE_C);
            Intrinsics.checkNotNullExpressionValue(colorSpace18, "get(android.graphics.ColorSpace.Named.SMPTE_C)");
            return colorSpace18;
        }
        if (colorSpace instanceof Rgb) {
            Rgb rgb2 = (Rgb) colorSpace;
            float[] xyz$ui_graphics_release = rgb2.getWhitePoint().toXyz$ui_graphics_release();
            TransferParameters transferParameters = rgb2.getTransferParameters();
            ColorSpace.Rgb.TransferParameters transferParameters2 = transferParameters != null ? new ColorSpace.Rgb.TransferParameters(transferParameters.getA(), transferParameters.getB(), transferParameters.getC(), transferParameters.getD(), transferParameters.getE(), transferParameters.getF(), transferParameters.getGamma()) : null;
            if (transferParameters2 != null) {
                rgb = new ColorSpace.Rgb(colorSpace.getName(), rgb2.getPrimaries(), xyz$ui_graphics_release, transferParameters2);
            } else {
                String name = colorSpace.getName();
                float[] primaries = rgb2.getPrimaries();
                final Function1<Double, Double> oetf = rgb2.getOetf();
                DoubleUnaryOperator doubleUnaryOperator = new DoubleUnaryOperator() { // from class: androidx.compose.ui.graphics.ColorSpaceVerificationHelper$$ExternalSyntheticLambda0
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d) {
                        double androidColorSpace$lambda$0;
                        androidColorSpace$lambda$0 = ColorSpaceVerificationHelper.androidColorSpace$lambda$0(Function1.this, d);
                        return androidColorSpace$lambda$0;
                    }
                };
                final Function1<Double, Double> eotf = rgb2.getEotf();
                rgb = new ColorSpace.Rgb(name, primaries, xyz$ui_graphics_release, doubleUnaryOperator, new DoubleUnaryOperator() { // from class: androidx.compose.ui.graphics.ColorSpaceVerificationHelper$$ExternalSyntheticLambda1
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d) {
                        double androidColorSpace$lambda$1;
                        androidColorSpace$lambda$1 = ColorSpaceVerificationHelper.androidColorSpace$lambda$1(Function1.this, d);
                        return androidColorSpace$lambda$1;
                    }
                }, colorSpace.getMinValue(0), colorSpace.getMaxValue(0));
            }
            colorSpace2 = rgb;
        } else {
            colorSpace2 = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Intrinsics.checkNotNullExpressionValue(colorSpace2, "{\n                if (th…          }\n            }");
        return colorSpace2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double androidColorSpace$lambda$0(Function1 tmp0, double d) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(Double.valueOf(d))).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double androidColorSpace$lambda$1(Function1 tmp0, double d) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(Double.valueOf(d))).doubleValue();
    }

    @JvmStatic
    public static final androidx.compose.ui.graphics.colorspace.ColorSpace composeColorSpace(final ColorSpace colorSpace) {
        Rgb srgb;
        WhitePoint whitePoint;
        WhitePoint whitePoint2;
        TransferParameters transferParameters;
        Intrinsics.checkNotNullParameter(colorSpace, "<this>");
        int id = colorSpace.getId();
        if (id == ColorSpace.Named.SRGB.ordinal()) {
            return ColorSpaces.INSTANCE.getSrgb();
        }
        if (id == ColorSpace.Named.ACES.ordinal()) {
            return ColorSpaces.INSTANCE.getAces();
        }
        if (id == ColorSpace.Named.ACESCG.ordinal()) {
            return ColorSpaces.INSTANCE.getAcescg();
        }
        if (id == ColorSpace.Named.ADOBE_RGB.ordinal()) {
            return ColorSpaces.INSTANCE.getAdobeRgb();
        }
        if (id == ColorSpace.Named.BT2020.ordinal()) {
            return ColorSpaces.INSTANCE.getBt2020();
        }
        if (id == ColorSpace.Named.BT709.ordinal()) {
            return ColorSpaces.INSTANCE.getBt709();
        }
        if (id == ColorSpace.Named.CIE_LAB.ordinal()) {
            return ColorSpaces.INSTANCE.getCieLab();
        }
        if (id == ColorSpace.Named.CIE_XYZ.ordinal()) {
            return ColorSpaces.INSTANCE.getCieXyz();
        }
        if (id == ColorSpace.Named.DCI_P3.ordinal()) {
            return ColorSpaces.INSTANCE.getDciP3();
        }
        if (id == ColorSpace.Named.DISPLAY_P3.ordinal()) {
            return ColorSpaces.INSTANCE.getDisplayP3();
        }
        if (id == ColorSpace.Named.EXTENDED_SRGB.ordinal()) {
            return ColorSpaces.INSTANCE.getExtendedSrgb();
        }
        if (id == ColorSpace.Named.LINEAR_EXTENDED_SRGB.ordinal()) {
            return ColorSpaces.INSTANCE.getLinearExtendedSrgb();
        }
        if (id == ColorSpace.Named.LINEAR_SRGB.ordinal()) {
            return ColorSpaces.INSTANCE.getLinearSrgb();
        }
        if (id == ColorSpace.Named.NTSC_1953.ordinal()) {
            return ColorSpaces.INSTANCE.getNtsc1953();
        }
        if (id == ColorSpace.Named.PRO_PHOTO_RGB.ordinal()) {
            return ColorSpaces.INSTANCE.getProPhotoRgb();
        }
        if (id == ColorSpace.Named.SMPTE_C.ordinal()) {
            return ColorSpaces.INSTANCE.getSmpteC();
        }
        if (colorSpace instanceof ColorSpace.Rgb) {
            ColorSpace.Rgb rgb = (ColorSpace.Rgb) colorSpace;
            ColorSpace.Rgb.TransferParameters transferParameters2 = rgb.getTransferParameters();
            if (rgb.getWhitePoint().length == 3) {
                whitePoint = new WhitePoint(rgb.getWhitePoint()[0], rgb.getWhitePoint()[1], rgb.getWhitePoint()[2]);
            } else {
                whitePoint = new WhitePoint(rgb.getWhitePoint()[0], rgb.getWhitePoint()[1]);
            }
            WhitePoint whitePoint3 = whitePoint;
            if (transferParameters2 != null) {
                whitePoint2 = whitePoint3;
                transferParameters = new TransferParameters(transferParameters2.g, transferParameters2.a, transferParameters2.b, transferParameters2.c, transferParameters2.d, transferParameters2.e, transferParameters2.f);
            } else {
                whitePoint2 = whitePoint3;
                transferParameters = null;
            }
            String name = rgb.getName();
            Intrinsics.checkNotNullExpressionValue(name, "this.name");
            float[] primaries = rgb.getPrimaries();
            Intrinsics.checkNotNullExpressionValue(primaries, "this.primaries");
            srgb = new Rgb(name, primaries, whitePoint2, rgb.getTransform(), new DoubleFunction() { // from class: androidx.compose.ui.graphics.ColorSpaceVerificationHelper$$ExternalSyntheticLambda2
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double invoke(double d) {
                    double composeColorSpace$lambda$2;
                    composeColorSpace$lambda$2 = ColorSpaceVerificationHelper.composeColorSpace$lambda$2(colorSpace, d);
                    return composeColorSpace$lambda$2;
                }
            }, new DoubleFunction() { // from class: androidx.compose.ui.graphics.ColorSpaceVerificationHelper$$ExternalSyntheticLambda3
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double invoke(double d) {
                    double composeColorSpace$lambda$3;
                    composeColorSpace$lambda$3 = ColorSpaceVerificationHelper.composeColorSpace$lambda$3(colorSpace, d);
                    return composeColorSpace$lambda$3;
                }
            }, colorSpace.getMinValue(0), colorSpace.getMaxValue(0), transferParameters, rgb.getId());
        } else {
            srgb = ColorSpaces.INSTANCE.getSrgb();
        }
        return srgb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double composeColorSpace$lambda$2(ColorSpace this_composeColorSpace, double d) {
        Intrinsics.checkNotNullParameter(this_composeColorSpace, "$this_composeColorSpace");
        return ((ColorSpace.Rgb) this_composeColorSpace).getOetf().applyAsDouble(d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double composeColorSpace$lambda$3(ColorSpace this_composeColorSpace, double d) {
        Intrinsics.checkNotNullParameter(this_composeColorSpace, "$this_composeColorSpace");
        return ((ColorSpace.Rgb) this_composeColorSpace).getEotf().applyAsDouble(d);
    }
}
