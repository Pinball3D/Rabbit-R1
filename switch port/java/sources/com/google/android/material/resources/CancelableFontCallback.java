package com.google.android.material.resources;

import android.graphics.Typeface;

/* loaded from: classes2.dex */
public final class CancelableFontCallback extends TextAppearanceFontCallback {
    private final ApplyFont applyFont;
    private boolean cancelled;
    private final Typeface fallbackFont;

    /* loaded from: classes2.dex */
    public interface ApplyFont {
        void apply(Typeface typeface);
    }

    public void cancel() {
        this.cancelled = true;
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.fallbackFont = typeface;
        this.applyFont = applyFont;
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public void onFontRetrieved(Typeface typeface, boolean z) {
        updateIfNotCancelled(typeface);
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public void onFontRetrievalFailed(int i) {
        updateIfNotCancelled(this.fallbackFont);
    }

    private void updateIfNotCancelled(Typeface typeface) {
        if (this.cancelled) {
            return;
        }
        this.applyFont.apply(typeface);
    }
}
