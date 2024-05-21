package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.math.BigDecimal;

/* loaded from: classes3.dex */
public final class LazilyParsedNumber extends Number {
    private final String value;

    public String toString() {
        return this.value;
    }

    public LazilyParsedNumber(String str) {
        this.value = str;
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.value);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.value);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.value).intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.value);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.value).longValue();
        }
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.value);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.value);
    }

    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.value);
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazilyParsedNumber)) {
            return false;
        }
        String str = this.value;
        String str2 = ((LazilyParsedNumber) obj).value;
        return str == str2 || str.equals(str2);
    }
}
