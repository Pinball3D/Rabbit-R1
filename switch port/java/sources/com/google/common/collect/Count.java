package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class Count implements Serializable {
    private int value;

    public void add(int i) {
        this.value += i;
    }

    public int addAndGet(int i) {
        int i2 = this.value + i;
        this.value = i2;
        return i2;
    }

    public int get() {
        return this.value;
    }

    public int getAndSet(int i) {
        int i2 = this.value;
        this.value = i;
        return i2;
    }

    public int hashCode() {
        return this.value;
    }

    public void set(int i) {
        this.value = i;
    }

    Count(int i) {
        this.value = i;
    }

    public boolean equals(@CheckForNull Object obj) {
        return (obj instanceof Count) && ((Count) obj).value == this.value;
    }

    public String toString() {
        return Integer.toString(this.value);
    }
}
