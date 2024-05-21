package androidx.compose.runtime;

import android.os.Looper;
import android.util.Log;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ActualAndroid.android.kt */
@Metadata(d1 = {"\u0000d\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u0012H\u0000\u001a\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0015H\u0000\u001a\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u0018H\u0000\u001a/\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001a\"\u0004\b\u0000\u0010\u001b2\u0006\u0010\u000e\u001a\u0002H\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001dH\u0000¢\u0006\u0002\u0010\u001e\u001a\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020#H\u0000\"!\u0010\u0000\u001a\u00020\u00018FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000*\f\b\u0000\u0010$\"\u00020%2\u00020%¨\u0006&"}, d2 = {"DefaultMonotonicFrameClock", "Landroidx/compose/runtime/MonotonicFrameClock;", "getDefaultMonotonicFrameClock$annotations", "()V", "getDefaultMonotonicFrameClock", "()Landroidx/compose/runtime/MonotonicFrameClock;", "DefaultMonotonicFrameClock$delegate", "Lkotlin/Lazy;", "DisallowDefaultMonotonicFrameClock", "", "LogTag", "", "createSnapshotMutableDoubleState", "Landroidx/compose/runtime/MutableDoubleState;", "value", "", "createSnapshotMutableFloatState", "Landroidx/compose/runtime/MutableFloatState;", "", "createSnapshotMutableIntState", "Landroidx/compose/runtime/MutableIntState;", "", "createSnapshotMutableLongState", "Landroidx/compose/runtime/MutableLongState;", "", "createSnapshotMutableState", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", ExifInterface.GPS_DIRECTION_TRUE, "policy", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "logError", "", "message", "e", "", "CheckResult", "Landroidx/annotation/CheckResult;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActualAndroid_androidKt {
    private static final Lazy DefaultMonotonicFrameClock$delegate = LazyKt.lazy(new Function0<MonotonicFrameClock>() { // from class: androidx.compose.runtime.ActualAndroid_androidKt$DefaultMonotonicFrameClock$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MonotonicFrameClock invoke() {
            return Looper.getMainLooper() != null ? DefaultChoreographerFrameClock.INSTANCE : SdkStubsFallbackFrameClock.INSTANCE;
        }
    });
    private static final boolean DisallowDefaultMonotonicFrameClock = false;
    private static final String LogTag = "ComposeInternal";

    @Deprecated(message = "MonotonicFrameClocks are not globally applicable across platforms. Use an appropriate local clock.")
    public static /* synthetic */ void getDefaultMonotonicFrameClock$annotations() {
    }

    public static final MonotonicFrameClock getDefaultMonotonicFrameClock() {
        return (MonotonicFrameClock) DefaultMonotonicFrameClock$delegate.getValue();
    }

    public static final <T> SnapshotMutableState<T> createSnapshotMutableState(T t, SnapshotMutationPolicy<T> policy) {
        Intrinsics.checkNotNullParameter(policy, "policy");
        return new ParcelableSnapshotMutableState(t, policy);
    }

    public static final MutableIntState createSnapshotMutableIntState(int i) {
        return new ParcelableSnapshotMutableIntState(i);
    }

    public static final MutableLongState createSnapshotMutableLongState(long j) {
        return new ParcelableSnapshotMutableLongState(j);
    }

    public static final MutableFloatState createSnapshotMutableFloatState(float f) {
        return new ParcelableSnapshotMutableFloatState(f);
    }

    public static final MutableDoubleState createSnapshotMutableDoubleState(double d) {
        return new ParcelableSnapshotMutableDoubleState(d);
    }

    public static final void logError(String message, Throwable e) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(e, "e");
        Log.e(LogTag, message, e);
    }
}
