package androidx.work.impl.constraints.trackers;

import androidx.work.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BroadcastReceiverConstraintTracker.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0002"}, d2 = {"TAG", "", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BroadcastReceiverConstraintTrackerKt {
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("BrdcstRcvrCnstrntTrckr");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"BrdcstRcvrCnstrntTrckr\")");
        TAG = tagWithPrefix;
    }
}
