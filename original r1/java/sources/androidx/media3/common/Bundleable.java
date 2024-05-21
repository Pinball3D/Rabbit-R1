package androidx.media3.common;

import android.os.Bundle;

/* loaded from: classes2.dex */
public interface Bundleable {

    /* loaded from: classes2.dex */
    public interface Creator<T extends Bundleable> {
        T fromBundle(Bundle bundle);
    }

    Bundle toBundle();
}
