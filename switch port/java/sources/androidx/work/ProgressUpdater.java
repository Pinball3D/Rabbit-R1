package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;

/* loaded from: classes2.dex */
public interface ProgressUpdater {
    ListenableFuture<Void> updateProgress(Context context, UUID id, Data data);
}
