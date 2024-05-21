package com.google.android.material.shape;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes2.dex */
class ShapeableDelegateV33 extends ShapeableDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ShapeableDelegateV33(View view) {
        initMaskOutlineProvider(view);
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    boolean shouldUseCompatClipping() {
        return this.forceCompatClippingEnabled;
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    void invalidateClippingMethod(View view) {
        view.setClipToOutline(!shouldUseCompatClipping());
        if (shouldUseCompatClipping()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    private void initMaskOutlineProvider(View view) {
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.shape.ShapeableDelegateV33.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                if (ShapeableDelegateV33.this.shapePath.isEmpty()) {
                    return;
                }
                outline.setPath(ShapeableDelegateV33.this.shapePath);
            }
        });
    }
}
