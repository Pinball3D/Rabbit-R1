package com.google.zxing.pdf417.decoder.ec;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class ModulusPoly {
    private final int[] coefficients;
    private final ModulusGF field;

    int[] getCoefficients() {
        return this.coefficients;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.field = modulusGF;
        int length = iArr.length;
        int i = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.coefficients = iArr;
            return;
        }
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.coefficients = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.coefficients = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDegree() {
        return this.coefficients.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isZero() {
        return this.coefficients[0] == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCoefficient(int i) {
        return this.coefficients[(r1.length - 1) - i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int evaluateAt(int i) {
        if (i == 0) {
            return getCoefficient(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int i3 : this.coefficients) {
                i2 = this.field.add(i2, i3);
            }
            return i2;
        }
        int[] iArr = this.coefficients;
        int i4 = iArr[0];
        int length = iArr.length;
        for (int i5 = 1; i5 < length; i5++) {
            ModulusGF modulusGF = this.field;
            i4 = modulusGF.add(modulusGF.multiply(i, i4), this.coefficients[i5]);
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly add(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (isZero()) {
            return modulusPoly;
        }
        if (modulusPoly.isZero()) {
            return this;
        }
        int[] iArr = this.coefficients;
        int[] iArr2 = modulusPoly.coefficients;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = this.field.add(iArr2[i - length], iArr[i]);
        }
        return new ModulusPoly(this.field, iArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly subtract(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            return modulusPoly.isZero() ? this : add(modulusPoly.negative());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly multiply(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (isZero() || modulusPoly.isZero()) {
            return this.field.getZero();
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        int[] iArr2 = modulusPoly.coefficients;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                ModulusGF modulusGF = this.field;
                iArr3[i4] = modulusGF.add(iArr3[i4], modulusGF.multiply(i2, iArr2[i3]));
            }
        }
        return new ModulusPoly(this.field, iArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly negative() {
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.field.subtract(0, this.coefficients[i]);
        }
        return new ModulusPoly(this.field, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly multiply(int i) {
        if (i == 0) {
            return this.field.getZero();
        }
        if (i == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.field.multiply(this.coefficients[i2], i);
        }
        return new ModulusPoly(this.field, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly multiplyByMonomial(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.field.getZero();
        }
        int length = this.coefficients.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
        }
        return new ModulusPoly(this.field, iArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(" - ");
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    sb.append(coefficient);
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }
}
