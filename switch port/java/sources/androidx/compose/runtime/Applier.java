package androidx.compose.runtime;

import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;

/* compiled from: Applier.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0007H&J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00028\u0000H&¢\u0006\u0002\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u000fJ \u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH&J\b\u0010\u0015\u001a\u00020\u0007H\u0016J\b\u0010\u0016\u001a\u00020\u0007H\u0016J\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH&J\b\u0010\u0018\u001a\u00020\u0007H&R\u0012\u0010\u0003\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0019À\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/Applier;", "N", "", SentryThread.JsonKeys.CURRENT, "getCurrent", "()Ljava/lang/Object;", "clear", "", "down", "node", "(Ljava/lang/Object;)V", "insertBottomUp", "index", "", "instance", "(ILjava/lang/Object;)V", "insertTopDown", "move", "from", "to", MetricSummary.JsonKeys.COUNT, "onBeginChanges", "onEndChanges", "remove", "up", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Applier<N> {
    void clear();

    void down(N node);

    N getCurrent();

    void insertBottomUp(int index, N instance);

    void insertTopDown(int index, N instance);

    void move(int from, int to, int count);

    default void onBeginChanges() {
    }

    default void onEndChanges() {
    }

    void remove(int index, int count);

    void up();

    /* compiled from: Applier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static <N> void onBeginChanges(Applier<N> applier) {
            Applier.super.onBeginChanges();
        }

        @Deprecated
        public static <N> void onEndChanges(Applier<N> applier) {
            Applier.super.onEndChanges();
        }
    }
}
