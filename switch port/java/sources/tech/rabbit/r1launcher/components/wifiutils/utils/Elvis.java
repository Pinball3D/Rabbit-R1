package tech.rabbit.r1launcher.components.wifiutils.utils;

import androidx.arch.core.util.Function;
import androidx.core.util.Consumer;
import java.util.Objects;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes3.dex */
public final class Elvis<T> {
    private final T mObject;

    public T get() {
        return this.mObject;
    }

    public boolean isPresent() {
        return this.mObject != null;
    }

    public T orElse(T t) {
        T t2 = this.mObject;
        return t2 == null ? t : t2;
    }

    private Elvis(T t) {
        this.mObject = t;
    }

    private Elvis() {
        this.mObject = null;
    }

    public static <T> Elvis<T> of(T t) {
        return new Elvis<>(t);
    }

    public static <T> Elvis<T> ofNonNull(T t) {
        return new Elvis<>(Objects.requireNonNull(t, "SHOULD NOT BE NULL"));
    }

    public static <T> Elvis<T> empty() {
        return new Elvis<>();
    }

    public <S> Elvis<S> next(Function<? super T, ? extends S> function) {
        T t = this.mObject;
        return new Elvis<>(t == null ? null : function.apply(t));
    }

    public boolean getBoolean() {
        T t = this.mObject;
        if (t != null && (t instanceof Boolean)) {
            return ((Boolean) t).booleanValue();
        }
        return false;
    }

    public int getInt() {
        T t = this.mObject;
        if (t != null && (t instanceof Integer)) {
            return ((Integer) t).intValue();
        }
        return 0;
    }

    public long getLong() {
        T t = this.mObject;
        if (t != null && (t instanceof Long)) {
            return ((Long) t).longValue();
        }
        return 0L;
    }

    public double getDouble() {
        T t = this.mObject;
        return (t != null && (t instanceof Double)) ? ((Double) t).doubleValue() : BuildConfig.SENTRY_SAMPLE_RATE;
    }

    public void ifPresent(Consumer<? super T> consumer) {
        T t = this.mObject;
        if (t != null) {
            consumer.accept(t);
        }
    }
}
