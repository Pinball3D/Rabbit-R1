package io.sentry.util;

/* loaded from: classes3.dex */
public final class Pair<A, B> {
    private final A first;
    private final B second;

    public A getFirst() {
        return this.first;
    }

    public B getSecond() {
        return this.second;
    }

    public Pair(A a, B b) {
        this.first = a;
        this.second = b;
    }
}
