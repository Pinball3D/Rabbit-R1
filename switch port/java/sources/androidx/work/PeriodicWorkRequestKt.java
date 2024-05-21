package androidx.work;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.PeriodicWorkRequest;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PeriodicWorkRequest.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0087\b\u001a%\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a%\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0086\b\u001a5\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0086\b¨\u0006\u000b"}, d2 = {"PeriodicWorkRequestBuilder", "Landroidx/work/PeriodicWorkRequest$Builder;", ExifInterface.LONGITUDE_WEST, "Landroidx/work/ListenableWorker;", "repeatInterval", "Ljava/time/Duration;", "flexTimeInterval", "", "repeatIntervalTimeUnit", "Ljava/util/concurrent/TimeUnit;", "flexTimeIntervalUnit", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PeriodicWorkRequestKt {
    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j, TimeUnit repeatIntervalTimeUnit) {
        Intrinsics.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) ListenableWorker.class, j, repeatIntervalTimeUnit);
    }

    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration repeatInterval) {
        Intrinsics.checkNotNullParameter(repeatInterval, "repeatInterval");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder(ListenableWorker.class, repeatInterval);
    }

    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j, TimeUnit repeatIntervalTimeUnit, long j2, TimeUnit flexTimeIntervalUnit) {
        Intrinsics.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
        Intrinsics.checkNotNullParameter(flexTimeIntervalUnit, "flexTimeIntervalUnit");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder(ListenableWorker.class, j, repeatIntervalTimeUnit, j2, flexTimeIntervalUnit);
    }

    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration repeatInterval, Duration flexTimeInterval) {
        Intrinsics.checkNotNullParameter(repeatInterval, "repeatInterval");
        Intrinsics.checkNotNullParameter(flexTimeInterval, "flexTimeInterval");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) ListenableWorker.class, repeatInterval, flexTimeInterval);
    }
}
