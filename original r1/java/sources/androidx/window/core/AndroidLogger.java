package androidx.window.core;

import android.util.Log;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SpecificationComputer.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"Landroidx/window/core/AndroidLogger;", "Landroidx/window/core/Logger;", "()V", "debug", "", ViewHierarchyNode.JsonKeys.TAG, "", "message", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AndroidLogger implements Logger {
    public static final AndroidLogger INSTANCE = new AndroidLogger();

    private AndroidLogger() {
    }

    @Override // androidx.window.core.Logger
    public void debug(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.d(tag, message);
    }
}
