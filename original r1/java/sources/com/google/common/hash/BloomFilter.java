package com.google.common.hash;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.hash.BloomFilterStrategies;
import com.google.common.math.DoubleMath;
import com.google.common.math.LongMath;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import javax.annotation.CheckForNull;
import tech.rabbit.r1launcher.BuildConfig;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class BloomFilter<T> implements Predicate<T>, Serializable {
    private final BloomFilterStrategies.LockFreeBitArray bits;
    private final Funnel<? super T> funnel;
    private final int numHashFunctions;
    private final Strategy strategy;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface Strategy extends Serializable {
        <T> boolean mightContain(@ParametricNullness T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.LockFreeBitArray lockFreeBitArray);

        int ordinal();

        <T> boolean put(@ParametricNullness T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.LockFreeBitArray lockFreeBitArray);
    }

    private BloomFilter(BloomFilterStrategies.LockFreeBitArray lockFreeBitArray, int i, Funnel<? super T> funnel, Strategy strategy) {
        Preconditions.checkArgument(i > 0, "numHashFunctions (%s) must be > 0", i);
        Preconditions.checkArgument(i <= 255, "numHashFunctions (%s) must be <= 255", i);
        this.bits = (BloomFilterStrategies.LockFreeBitArray) Preconditions.checkNotNull(lockFreeBitArray);
        this.numHashFunctions = i;
        this.funnel = (Funnel) Preconditions.checkNotNull(funnel);
        this.strategy = (Strategy) Preconditions.checkNotNull(strategy);
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.copy(), this.numHashFunctions, this.funnel, this.strategy);
    }

    public boolean mightContain(@ParametricNullness T t) {
        return this.strategy.mightContain(t, this.funnel, this.numHashFunctions, this.bits);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(@ParametricNullness T t) {
        return mightContain(t);
    }

    public boolean put(@ParametricNullness T t) {
        return this.strategy.put(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public double expectedFpp() {
        return Math.pow(this.bits.bitCount() / bitSize(), this.numHashFunctions);
    }

    public long approximateElementCount() {
        double bitSize = this.bits.bitSize();
        return DoubleMath.roundToLong(((-Math.log1p(-(this.bits.bitCount() / bitSize))) * bitSize) / this.numHashFunctions, RoundingMode.HALF_UP);
    }

    long bitSize() {
        return this.bits.bitSize();
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        Preconditions.checkArgument(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i = this.numHashFunctions;
        int i2 = bloomFilter.numHashFunctions;
        Preconditions.checkArgument(i == i2, "BloomFilters must have the same number of hash functions (%s != %s)", i, i2);
        Preconditions.checkArgument(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", bitSize(), bloomFilter.bitSize());
        Preconditions.checkArgument(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        Preconditions.checkArgument(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.putAll(bloomFilter.bits);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        return this.numHashFunctions == bloomFilter.numHashFunctions && this.funnel.equals(bloomFilter.funnel) && this.bits.equals(bloomFilter.bits) && this.strategy.equals(bloomFilter.strategy);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i, double d) {
        return create(funnel, i, d);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d) {
        return create(funnel, j, d, BloomFilterStrategies.MURMUR128_MITZ_64);
    }

    static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d, Strategy strategy) {
        Preconditions.checkNotNull(funnel);
        Preconditions.checkArgument(j >= 0, "Expected insertions (%s) must be >= 0", j);
        Preconditions.checkArgument(d > BuildConfig.SENTRY_SAMPLE_RATE, "False positive probability (%s) must be > 0.0", Double.valueOf(d));
        Preconditions.checkArgument(d < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d));
        Preconditions.checkNotNull(strategy);
        if (j == 0) {
            j = 1;
        }
        long optimalNumOfBits = optimalNumOfBits(j, d);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.LockFreeBitArray(optimalNumOfBits), optimalNumOfHashFunctions(j, optimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(new StringBuilder(57).append("Could not create BloomFilter of ").append(optimalNumOfBits).append(" bits").toString(), e);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i) {
        return create(funnel, i);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j) {
        return create(funnel, j, 0.03d);
    }

    static int optimalNumOfHashFunctions(long j, long j2) {
        return Math.max(1, (int) Math.round((j2 / j) * Math.log(2.0d)));
    }

    static long optimalNumOfBits(long j, double d) {
        if (d == BuildConfig.SENTRY_SAMPLE_RATE) {
            d = Double.MIN_VALUE;
        }
        return (long) (((-j) * Math.log(d)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    private Object writeReplace() {
        return new SerialForm(this);
    }

    /* loaded from: classes3.dex */
    private static class SerialForm<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] data;
        final Funnel<? super T> funnel;
        final int numHashFunctions;
        final Strategy strategy;

        SerialForm(BloomFilter<T> bloomFilter) {
            this.data = BloomFilterStrategies.LockFreeBitArray.toPlainArray(((BloomFilter) bloomFilter).bits.data);
            this.numHashFunctions = ((BloomFilter) bloomFilter).numHashFunctions;
            this.funnel = ((BloomFilter) bloomFilter).funnel;
            this.strategy = ((BloomFilter) bloomFilter).strategy;
        }

        Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.LockFreeBitArray(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.checkedCast(this.strategy.ordinal()));
        dataOutputStream.writeByte(UnsignedBytes.checkedCast(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.data.length());
        for (int i = 0; i < this.bits.data.length(); i++) {
            dataOutputStream.writeLong(this.bits.data.get(i));
        }
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i;
        int i2;
        Preconditions.checkNotNull(inputStream, "InputStream");
        Preconditions.checkNotNull(funnel, "Funnel");
        int i3 = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte readByte = dataInputStream.readByte();
            try {
                i2 = UnsignedBytes.toInt(dataInputStream.readByte());
                try {
                    i3 = dataInputStream.readInt();
                    BloomFilterStrategies bloomFilterStrategies = BloomFilterStrategies.values()[readByte];
                    BloomFilterStrategies.LockFreeBitArray lockFreeBitArray = new BloomFilterStrategies.LockFreeBitArray(LongMath.checkedMultiply(i3, 64L));
                    for (int i4 = 0; i4 < i3; i4++) {
                        lockFreeBitArray.putData(i4, dataInputStream.readLong());
                    }
                    return new BloomFilter<>(lockFreeBitArray, i2, funnel, bloomFilterStrategies);
                } catch (RuntimeException e) {
                    e = e;
                    int i5 = i3;
                    i3 = readByte;
                    i = i5;
                    throw new IOException(new StringBuilder(134).append("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ").append(i3).append(" numHashFunctions: ").append(i2).append(" dataLength: ").append(i).toString(), e);
                }
            } catch (RuntimeException e2) {
                e = e2;
                i2 = -1;
                i3 = readByte;
                i = -1;
            }
        } catch (RuntimeException e3) {
            e = e3;
            i = -1;
            i2 = -1;
        }
    }
}
