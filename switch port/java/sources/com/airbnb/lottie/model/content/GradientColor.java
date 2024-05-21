package com.airbnb.lottie.model.content;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class GradientColor {
    private final int[] colors;
    private final float[] positions;

    public int[] getColors() {
        return this.colors;
    }

    public float[] getPositions() {
        return this.positions;
    }

    public GradientColor(float[] fArr, int[] iArr) {
        this.positions = fArr;
        this.colors = iArr;
    }

    public int getSize() {
        return this.colors.length;
    }

    public void lerp(GradientColor gradientColor, GradientColor gradientColor2, float f) {
        int[] iArr;
        if (gradientColor.equals(gradientColor2)) {
            copyFrom(gradientColor);
            return;
        }
        if (f <= 0.0f) {
            copyFrom(gradientColor);
            return;
        }
        if (f >= 1.0f) {
            copyFrom(gradientColor2);
            return;
        }
        if (gradientColor.colors.length != gradientColor2.colors.length) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + gradientColor.colors.length + " vs " + gradientColor2.colors.length + ")");
        }
        int i = 0;
        while (true) {
            iArr = gradientColor.colors;
            if (i >= iArr.length) {
                break;
            }
            this.positions[i] = MiscUtils.lerp(gradientColor.positions[i], gradientColor2.positions[i], f);
            this.colors[i] = GammaEvaluator.evaluate(f, gradientColor.colors[i], gradientColor2.colors[i]);
            i++;
        }
        int length = iArr.length;
        while (true) {
            float[] fArr = this.positions;
            if (length >= fArr.length) {
                return;
            }
            int[] iArr2 = gradientColor.colors;
            fArr[length] = fArr[iArr2.length - 1];
            int[] iArr3 = this.colors;
            iArr3[length] = iArr3[iArr2.length - 1];
            length++;
        }
    }

    public GradientColor copyWithPositions(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            iArr[i] = getColorForPosition(fArr[i]);
        }
        return new GradientColor(fArr, iArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GradientColor gradientColor = (GradientColor) obj;
        return Arrays.equals(this.positions, gradientColor.positions) && Arrays.equals(this.colors, gradientColor.colors);
    }

    public int hashCode() {
        return (Arrays.hashCode(this.positions) * 31) + Arrays.hashCode(this.colors);
    }

    private int getColorForPosition(float f) {
        int binarySearch = Arrays.binarySearch(this.positions, f);
        if (binarySearch >= 0) {
            return this.colors[binarySearch];
        }
        int i = -(binarySearch + 1);
        if (i == 0) {
            return this.colors[0];
        }
        int[] iArr = this.colors;
        if (i == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.positions;
        int i2 = i - 1;
        float f2 = fArr[i2];
        return GammaEvaluator.evaluate((f - f2) / (fArr[i] - f2), iArr[i2], iArr[i]);
    }

    private void copyFrom(GradientColor gradientColor) {
        int i = 0;
        while (true) {
            int[] iArr = gradientColor.colors;
            if (i >= iArr.length) {
                return;
            }
            this.positions[i] = gradientColor.positions[i];
            this.colors[i] = iArr[i];
            i++;
        }
    }
}
