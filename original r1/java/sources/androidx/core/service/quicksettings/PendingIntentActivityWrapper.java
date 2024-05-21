package androidx.core.service.quicksettings;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.PendingIntentCompat;

/* loaded from: classes.dex */
public class PendingIntentActivityWrapper {
    private final Context mContext;
    private final int mFlags;
    private final Intent mIntent;
    private final boolean mIsMutable;
    private final Bundle mOptions;
    private final PendingIntent mPendingIntent;
    private final int mRequestCode;

    public Context getContext() {
        return this.mContext;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public Bundle getOptions() {
        return this.mOptions;
    }

    public PendingIntent getPendingIntent() {
        return this.mPendingIntent;
    }

    public int getRequestCode() {
        return this.mRequestCode;
    }

    public boolean isMutable() {
        return this.mIsMutable;
    }

    public PendingIntentActivityWrapper(Context context, int i, Intent intent, int i2, boolean z) {
        this(context, i, intent, i2, null, z);
    }

    public PendingIntentActivityWrapper(Context context, int i, Intent intent, int i2, Bundle bundle, boolean z) {
        this.mContext = context;
        this.mRequestCode = i;
        this.mIntent = intent;
        this.mFlags = i2;
        this.mOptions = bundle;
        this.mIsMutable = z;
        this.mPendingIntent = createPendingIntent();
    }

    private PendingIntent createPendingIntent() {
        Bundle bundle = this.mOptions;
        if (bundle == null) {
            return PendingIntentCompat.getActivity(this.mContext, this.mRequestCode, this.mIntent, this.mFlags, this.mIsMutable);
        }
        return PendingIntentCompat.getActivity(this.mContext, this.mRequestCode, this.mIntent, this.mFlags, bundle, this.mIsMutable);
    }
}
