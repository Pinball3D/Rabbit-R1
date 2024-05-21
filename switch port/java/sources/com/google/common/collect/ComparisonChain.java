package com.google.common.collect;

import com.google.common.primitives.Booleans;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ComparisonChain {
    private static final ComparisonChain ACTIVE = new ComparisonChain() { // from class: com.google.common.collect.ComparisonChain.1
        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return 0;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(Comparable<?> comparable, Comparable<?> comparable2) {
            return classify(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(@ParametricNullness T t, @ParametricNullness T t2, Comparator<T> comparator) {
            return classify(comparator.compare(t, t2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return classify(Ints.compare(i, i2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return classify(Longs.compare(j, j2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(float f, float f2) {
            return classify(Float.compare(f, f2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(double d, double d2) {
            return classify(Double.compare(d, d2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return classify(Booleans.compare(z2, z));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return classify(Booleans.compare(z, z2));
        }

        ComparisonChain classify(int i) {
            if (i < 0) {
                return ComparisonChain.LESS;
            }
            return i > 0 ? ComparisonChain.GREATER : ComparisonChain.ACTIVE;
        }
    };
    private static final ComparisonChain LESS = new InactiveComparisonChain(-1);
    private static final ComparisonChain GREATER = new InactiveComparisonChain(1);

    public static ComparisonChain start() {
        return ACTIVE;
    }

    public abstract ComparisonChain compare(double d, double d2);

    public abstract ComparisonChain compare(float f, float f2);

    public abstract ComparisonChain compare(int i, int i2);

    public abstract ComparisonChain compare(long j, long j2);

    public abstract ComparisonChain compare(Comparable<?> comparable, Comparable<?> comparable2);

    public abstract <T> ComparisonChain compare(@ParametricNullness T t, @ParametricNullness T t2, Comparator<T> comparator);

    public abstract ComparisonChain compareFalseFirst(boolean z, boolean z2);

    public abstract ComparisonChain compareTrueFirst(boolean z, boolean z2);

    public abstract int result();

    private ComparisonChain() {
    }

    /* loaded from: classes3.dex */
    private static final class InactiveComparisonChain extends ComparisonChain {
        final int result;

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(double d, double d2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(float f, float f2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(Comparable<?> comparable, Comparable<?> comparable2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(@ParametricNullness T t, @ParametricNullness T t2, Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return this.result;
        }

        InactiveComparisonChain(int i) {
            super();
            this.result = i;
        }
    }

    @Deprecated
    public final ComparisonChain compare(Boolean bool, Boolean bool2) {
        return compareFalseFirst(bool.booleanValue(), bool2.booleanValue());
    }
}
