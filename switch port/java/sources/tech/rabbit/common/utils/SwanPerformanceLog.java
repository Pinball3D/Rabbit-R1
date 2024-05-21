package tech.rabbit.common.utils;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KotlinUtil.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Ltech/rabbit/common/utils/SwanPerformanceLog;", "", "()V", ViewHierarchyNode.JsonKeys.TAG, "", "c", "", NotificationCompat.CATEGORY_MESSAGE, "cost", "", "t", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SwanPerformanceLog {
    public static final SwanPerformanceLog INSTANCE = new SwanPerformanceLog();
    private static final String tag = "SwanPerf";

    private SwanPerformanceLog() {
    }

    public final void t(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(tag, msg + ' ' + System.currentTimeMillis());
    }

    public final void c(String msg, long cost) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(tag, msg + ' ' + cost);
    }
}
