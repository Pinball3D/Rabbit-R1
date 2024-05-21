package com.google.common.math;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.LazyInit;
import javax.annotation.CheckForNull;
import tech.rabbit.r1launcher.BuildConfig;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class LinearTransformation {
    public abstract LinearTransformation inverse();

    public abstract boolean isHorizontal();

    public abstract boolean isVertical();

    public abstract double slope();

    public abstract double transform(double d);

    public static LinearTransformationBuilder mapping(double d, double d2) {
        Preconditions.checkArgument(DoubleUtils.isFinite(d) && DoubleUtils.isFinite(d2));
        return new LinearTransformationBuilder(d, d2);
    }

    /* loaded from: classes3.dex */
    public static final class LinearTransformationBuilder {
        private final double x1;
        private final double y1;

        private LinearTransformationBuilder(double d, double d2) {
            this.x1 = d;
            this.y1 = d2;
        }

        public LinearTransformation and(double d, double d2) {
            Preconditions.checkArgument(DoubleUtils.isFinite(d) && DoubleUtils.isFinite(d2));
            double d3 = this.x1;
            if (d == d3) {
                Preconditions.checkArgument(d2 != this.y1);
                return new VerticalLinearTransformation(this.x1);
            }
            return withSlope((d2 - this.y1) / (d - d3));
        }

        public LinearTransformation withSlope(double d) {
            Preconditions.checkArgument(!Double.isNaN(d));
            if (DoubleUtils.isFinite(d)) {
                return new RegularLinearTransformation(d, this.y1 - (this.x1 * d));
            }
            return new VerticalLinearTransformation(this.x1);
        }
    }

    public static LinearTransformation vertical(double d) {
        Preconditions.checkArgument(DoubleUtils.isFinite(d));
        return new VerticalLinearTransformation(d);
    }

    public static LinearTransformation horizontal(double d) {
        Preconditions.checkArgument(DoubleUtils.isFinite(d));
        return new RegularLinearTransformation(BuildConfig.SENTRY_SAMPLE_RATE, d);
    }

    public static LinearTransformation forNaN() {
        return NaNLinearTransformation.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class RegularLinearTransformation extends LinearTransformation {

        @CheckForNull
        @LazyInit
        LinearTransformation inverse;
        final double slope;
        final double yIntercept;

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return this.slope == BuildConfig.SENTRY_SAMPLE_RATE;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            return this.slope;
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            return (d * this.slope) + this.yIntercept;
        }

        RegularLinearTransformation(double d, double d2) {
            this.slope = d;
            this.yIntercept = d2;
            this.inverse = null;
        }

        RegularLinearTransformation(double d, double d2, LinearTransformation linearTransformation) {
            this.slope = d;
            this.yIntercept = d2;
            this.inverse = linearTransformation;
        }

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            LinearTransformation linearTransformation = this.inverse;
            if (linearTransformation != null) {
                return linearTransformation;
            }
            LinearTransformation createInverse = createInverse();
            this.inverse = createInverse;
            return createInverse;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.slope), Double.valueOf(this.yIntercept));
        }

        private LinearTransformation createInverse() {
            double d = this.slope;
            if (d != BuildConfig.SENTRY_SAMPLE_RATE) {
                return new RegularLinearTransformation(1.0d / d, (this.yIntercept * (-1.0d)) / d, this);
            }
            return new VerticalLinearTransformation(this.yIntercept, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class VerticalLinearTransformation extends LinearTransformation {

        @CheckForNull
        @LazyInit
        LinearTransformation inverse;
        final double x;

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return true;
        }

        VerticalLinearTransformation(double d) {
            this.x = d;
            this.inverse = null;
        }

        VerticalLinearTransformation(double d, LinearTransformation linearTransformation) {
            this.x = d;
            this.inverse = linearTransformation;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            LinearTransformation linearTransformation = this.inverse;
            if (linearTransformation != null) {
                return linearTransformation;
            }
            LinearTransformation createInverse = createInverse();
            this.inverse = createInverse;
            return createInverse;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.x));
        }

        private LinearTransformation createInverse() {
            return new RegularLinearTransformation(BuildConfig.SENTRY_SAMPLE_RATE, this.x, this);
        }
    }

    /* loaded from: classes3.dex */
    private static final class NaNLinearTransformation extends LinearTransformation {
        static final NaNLinearTransformation INSTANCE = new NaNLinearTransformation();

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            return this;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            return Double.NaN;
        }

        public String toString() {
            return "NaN";
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            return Double.NaN;
        }

        private NaNLinearTransformation() {
        }
    }
}
