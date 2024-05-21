package androidx.core.app;

import androidx.core.util.Consumer;

/* loaded from: classes.dex */
public interface OnMultiWindowModeChangedProvider {
    void addOnMultiWindowModeChangedListener(Consumer<MultiWindowModeChangedInfo> consumer);

    void removeOnMultiWindowModeChangedListener(Consumer<MultiWindowModeChangedInfo> consumer);
}
