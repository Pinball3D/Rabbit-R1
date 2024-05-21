package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class DiscreteDomain<C extends Comparable> {
    final boolean supportsFastOffset;

    public abstract long distance(C c, C c2);

    @CheckForNull
    public abstract C next(C c);

    @CheckForNull
    public abstract C previous(C c);

    public static DiscreteDomain<Integer> integers() {
        return IntegerDomain.INSTANCE;
    }

    /* loaded from: classes3.dex */
    private static final class IntegerDomain extends DiscreteDomain<Integer> implements Serializable {
        private static final IntegerDomain INSTANCE = new IntegerDomain();
        private static final long serialVersionUID = 0;

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }

        IntegerDomain() {
            super(true);
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Integer next(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Integer previous(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue - 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        public Integer offset(Integer num, long j) {
            CollectPreconditions.checkNonnegative(j, "distance");
            return Integer.valueOf(Ints.checkedCast(num.longValue() + j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer maxValue() {
            return Integer.MAX_VALUE;
        }
    }

    public static DiscreteDomain<Long> longs() {
        return LongDomain.INSTANCE;
    }

    /* loaded from: classes3.dex */
    private static final class LongDomain extends DiscreteDomain<Long> implements Serializable {
        private static final LongDomain INSTANCE = new LongDomain();
        private static final long serialVersionUID = 0;

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }

        LongDomain() {
            super(true);
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Long next(Long l) {
            long longValue = l.longValue();
            if (longValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(longValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Long previous(Long l) {
            long longValue = l.longValue();
            if (longValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(longValue - 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        public Long offset(Long l, long j) {
            CollectPreconditions.checkNonnegative(j, "distance");
            long longValue = l.longValue() + j;
            if (longValue < 0) {
                Preconditions.checkArgument(l.longValue() < 0, "overflow");
            }
            return Long.valueOf(longValue);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Long l, Long l2) {
            long longValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && longValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() >= l.longValue() || longValue <= 0) {
                return longValue;
            }
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long maxValue() {
            return Long.MAX_VALUE;
        }
    }

    public static DiscreteDomain<BigInteger> bigIntegers() {
        return BigIntegerDomain.INSTANCE;
    }

    /* loaded from: classes3.dex */
    private static final class BigIntegerDomain extends DiscreteDomain<BigInteger> implements Serializable {
        private static final long serialVersionUID = 0;
        private static final BigIntegerDomain INSTANCE = new BigIntegerDomain();
        private static final BigInteger MIN_LONG = BigInteger.valueOf(Long.MIN_VALUE);
        private static final BigInteger MAX_LONG = BigInteger.valueOf(Long.MAX_VALUE);

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }

        BigIntegerDomain() {
            super(true);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger offset(BigInteger bigInteger, long j) {
            CollectPreconditions.checkNonnegative(j, "distance");
            return bigInteger.add(BigInteger.valueOf(j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(MIN_LONG).min(MAX_LONG).longValue();
        }
    }

    protected DiscreteDomain() {
        this(false);
    }

    private DiscreteDomain(boolean z) {
        this.supportsFastOffset = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C offset(C c, long j) {
        CollectPreconditions.checkNonnegative(j, "distance");
        C c2 = c;
        for (long j2 = 0; j2 < j; j2++) {
            c2 = next(c2);
            if (c2 == null) {
                String valueOf = String.valueOf(c);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 51).append("overflowed computing offset(").append(valueOf).append(", ").append(j).append(")").toString());
            }
        }
        return c2;
    }

    public C minValue() {
        throw new NoSuchElementException();
    }

    public C maxValue() {
        throw new NoSuchElementException();
    }
}
