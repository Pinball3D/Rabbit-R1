package io.flutter.embedding.engine;

import android.view.Surface;

/* loaded from: classes3.dex */
public class FlutterOverlaySurface {
    private final int id;
    private final Surface surface;

    public int getId() {
        return this.id;
    }

    public Surface getSurface() {
        return this.surface;
    }

    public FlutterOverlaySurface(int i, Surface surface) {
        this.id = i;
        this.surface = surface;
    }
}
