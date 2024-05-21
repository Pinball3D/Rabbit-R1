package io.flutter.embedding.engine.plugins.lifecycle;

import androidx.lifecycle.Lifecycle;

/* loaded from: classes3.dex */
public class HiddenLifecycleReference {
    private final Lifecycle lifecycle;

    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    public HiddenLifecycleReference(Lifecycle lifecycle) {
        this.lifecycle = lifecycle;
    }
}
