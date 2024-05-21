package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class LongArray {
    private static final int DEFAULT_INITIAL_CAPACITY = 32;
    private int size;
    private long[] values;

    public int size() {
        return this.size;
    }

    public LongArray() {
        this(32);
    }

    public LongArray(int i) {
        this.values = new long[i];
    }

    public void add(long j) {
        int i = this.size;
        long[] jArr = this.values;
        if (i == jArr.length) {
            this.values = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.values;
        int i2 = this.size;
        this.size = i2 + 1;
        jArr2[i2] = j;
    }

    public long get(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.size);
        }
        return this.values[i];
    }

    public long[] toArray() {
        return Arrays.copyOf(this.values, this.size);
    }
}
