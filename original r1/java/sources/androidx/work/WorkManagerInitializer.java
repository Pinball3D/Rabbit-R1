package androidx.work;

import android.content.Context;
import androidx.startup.Initializer;
import androidx.work.Configuration;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class WorkManagerInitializer implements Initializer<WorkManager> {
    private static final String TAG = Logger.tagWithPrefix("WrkMgrInitializer");

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    public WorkManager create(Context context) {
        Logger.get().debug(TAG, "Initializing WorkManager with default configuration.");
        WorkManager.initialize(context, new Configuration.Builder().build());
        return WorkManager.getInstance(context);
    }

    @Override // androidx.startup.Initializer
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }
}
