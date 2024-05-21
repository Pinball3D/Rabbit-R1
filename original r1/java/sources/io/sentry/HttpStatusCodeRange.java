package io.sentry;

/* loaded from: classes3.dex */
public final class HttpStatusCodeRange {
    public static final int DEFAULT_MAX = 599;
    public static final int DEFAULT_MIN = 500;
    private final int max;
    private final int min;

    public boolean isInRange(int i) {
        return i >= this.min && i <= this.max;
    }

    public HttpStatusCodeRange(int i, int i2) {
        this.min = i;
        this.max = i2;
    }

    public HttpStatusCodeRange(int i) {
        this.min = i;
        this.max = i;
    }
}
