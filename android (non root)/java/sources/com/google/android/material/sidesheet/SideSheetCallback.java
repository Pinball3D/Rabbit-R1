package com.google.android.material.sidesheet;

import android.view.View;

/* loaded from: classes2.dex */
public abstract class SideSheetCallback implements SheetCallback {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLayout(View view) {
    }

    @Override // com.google.android.material.sidesheet.SheetCallback
    public abstract void onSlide(View view, float f);

    @Override // com.google.android.material.sidesheet.SheetCallback
    public abstract void onStateChanged(View view, int i);
}
