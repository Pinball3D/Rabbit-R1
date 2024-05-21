package com.google.android.material.textfield;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class EndIconDelegate {
    final Context context;
    final CheckableImageButton endIconView;
    final EndCompoundLayout endLayout;
    final TextInputLayout textInputLayout;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void afterEditTextChanged(Editable editable) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void beforeEditTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIconContentDescriptionResId() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIconDrawableResId() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.OnFocusChangeListener getOnEditTextFocusChangeListener() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.OnClickListener getOnIconClickListener() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.OnFocusChangeListener getOnIconViewFocusChangeListener() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener getTouchExplorationStateChangeListener() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isBoxBackgroundModeSupported(int i) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIconActivable() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIconActivated() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIconCheckable() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIconChecked() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onEditTextAttached(EditText editText) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSuffixVisibilityChanged(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUp() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldTintIconOnError() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tearDown() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EndIconDelegate(EndCompoundLayout endCompoundLayout) {
        this.textInputLayout = endCompoundLayout.textInputLayout;
        this.endLayout = endCompoundLayout;
        this.context = endCompoundLayout.getContext();
        this.endIconView = endCompoundLayout.getEndIconView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void refreshIconState() {
        this.endLayout.refreshIconState(false);
    }
}
