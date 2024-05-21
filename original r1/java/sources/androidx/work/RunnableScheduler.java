package androidx.work;

/* loaded from: classes2.dex */
public interface RunnableScheduler {
    void cancel(Runnable runnable);

    void scheduleWithDelay(long delayInMillis, Runnable runnable);
}
