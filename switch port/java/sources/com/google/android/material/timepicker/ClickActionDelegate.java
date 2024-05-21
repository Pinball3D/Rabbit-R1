package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* loaded from: classes2.dex */
class ClickActionDelegate extends AccessibilityDelegateCompat {
    private final AccessibilityNodeInfoCompat.AccessibilityActionCompat clickAction;

    public ClickActionDelegate(Context context, int i) {
        this.clickAction = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, context.getString(i));
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.addAction(this.clickAction);
    }
}
