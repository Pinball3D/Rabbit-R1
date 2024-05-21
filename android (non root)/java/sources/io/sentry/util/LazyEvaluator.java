package io.sentry.util;

/* loaded from: classes3.dex */
public final class LazyEvaluator<T> {
    private final Evaluator<T> evaluator;
    private T value = null;

    /* loaded from: classes3.dex */
    public interface Evaluator<T> {
        T evaluate();
    }

    public LazyEvaluator(Evaluator<T> evaluator) {
        this.evaluator = evaluator;
    }

    public synchronized T getValue() {
        if (this.value == null) {
            this.value = this.evaluator.evaluate();
        }
        return this.value;
    }
}
