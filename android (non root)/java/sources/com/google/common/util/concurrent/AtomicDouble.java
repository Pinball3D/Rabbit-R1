package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;
import tech.rabbit.r1launcher.BuildConfig;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class AtomicDouble extends Number implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLong value;

    public AtomicDouble(double d) {
        this.value = new AtomicLong(Double.doubleToRawLongBits(d));
    }

    public AtomicDouble() {
        this(BuildConfig.SENTRY_SAMPLE_RATE);
    }

    public final double get() {
        return Double.longBitsToDouble(this.value.get());
    }

    public final void set(double d) {
        this.value.set(Double.doubleToRawLongBits(d));
    }

    public final void lazySet(double d) {
        this.value.lazySet(Double.doubleToRawLongBits(d));
    }

    public final double getAndSet(double d) {
        return Double.longBitsToDouble(this.value.getAndSet(Double.doubleToRawLongBits(d)));
    }

    public final boolean compareAndSet(double d, double d2) {
        return this.value.compareAndSet(Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSet(double d, double d2) {
        return this.value.weakCompareAndSet(Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final double getAndAdd(double d) {
        long j;
        double longBitsToDouble;
        do {
            j = this.value.get();
            longBitsToDouble = Double.longBitsToDouble(j);
        } while (!this.value.compareAndSet(j, Double.doubleToRawLongBits(longBitsToDouble + d)));
        return longBitsToDouble;
    }

    public final double addAndGet(double d) {
        long j;
        double longBitsToDouble;
        do {
            j = this.value.get();
            longBitsToDouble = Double.longBitsToDouble(j) + d;
        } while (!this.value.compareAndSet(j, Double.doubleToRawLongBits(longBitsToDouble)));
        return longBitsToDouble;
    }

    public String toString() {
        return Double.toString(get());
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.value = new AtomicLong();
        set(objectInputStream.readDouble());
    }
}
