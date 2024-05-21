package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* loaded from: classes2.dex */
public class VisibilityAwareImageButton extends ImageButton {
    private int userSetVisibility;

    public final int getUserSetVisibility() {
        return this.userSetVisibility;
    }

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.userSetVisibility = getVisibility();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        internalSetVisibility(i, true);
    }

    public final void internalSetVisibility(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.userSetVisibility = i;
        }
    }
}
