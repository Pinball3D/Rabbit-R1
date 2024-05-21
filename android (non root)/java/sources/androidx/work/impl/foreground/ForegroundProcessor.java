package androidx.work.impl.foreground;

import androidx.work.ForegroundInfo;

/* loaded from: classes2.dex */
public interface ForegroundProcessor {
    void startForeground(String workSpecId, ForegroundInfo foregroundInfo);
}
