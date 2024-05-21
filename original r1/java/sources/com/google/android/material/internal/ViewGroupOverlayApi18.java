package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* loaded from: classes2.dex */
class ViewGroupOverlayApi18 implements ViewGroupOverlayImpl {
    private final ViewGroupOverlay viewGroupOverlay;

    ViewGroupOverlayApi18(ViewGroup viewGroup) {
        this.viewGroupOverlay = viewGroup.getOverlay();
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void add(Drawable drawable) {
        this.viewGroupOverlay.add(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void remove(Drawable drawable) {
        this.viewGroupOverlay.remove(drawable);
    }

    @Override // com.google.android.material.internal.ViewGroupOverlayImpl
    public void add(View view) {
        this.viewGroupOverlay.add(view);
    }

    @Override // com.google.android.material.internal.ViewGroupOverlayImpl
    public void remove(View view) {
        this.viewGroupOverlay.remove(view);
    }
}
