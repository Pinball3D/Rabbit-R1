package androidx.core.content;

import androidx.core.util.Consumer;

/* loaded from: classes.dex */
public interface OnTrimMemoryProvider {
    void addOnTrimMemoryListener(Consumer<Integer> consumer);

    void removeOnTrimMemoryListener(Consumer<Integer> consumer);
}
