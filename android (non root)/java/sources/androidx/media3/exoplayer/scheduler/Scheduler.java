package androidx.media3.exoplayer.scheduler;

/* loaded from: classes2.dex */
public interface Scheduler {
    boolean cancel();

    Requirements getSupportedRequirements(Requirements requirements);

    boolean schedule(Requirements requirements, String str, String str2);
}
