package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;

/* compiled from: SnapshotMutationPolicy.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0007J'\u0010\b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00028\u00002\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/SnapshotMutationPolicy;", ExifInterface.GPS_DIRECTION_TRUE, "", "equivalent", "", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "merge", "previous", SentryThread.JsonKeys.CURRENT, "applied", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SnapshotMutationPolicy<T> {
    boolean equivalent(T a, T b);

    default T merge(T previous, T current, T applied) {
        return null;
    }

    /* compiled from: SnapshotMutationPolicy.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static <T> T merge(SnapshotMutationPolicy<T> snapshotMutationPolicy, T t, T t2, T t3) {
            return (T) SnapshotMutationPolicy.super.merge(t, t2, t3);
        }
    }
}
