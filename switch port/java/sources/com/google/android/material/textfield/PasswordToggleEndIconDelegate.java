package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class PasswordToggleEndIconDelegate extends EndIconDelegate {
    private EditText editText;
    private int iconResId;
    private final View.OnClickListener onIconClickListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public int getIconDrawableResId() {
        return this.iconResId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public View.OnClickListener getOnIconClickListener() {
        return this.onIconClickListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public boolean isIconCheckable() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-google-android-material-textfield-PasswordToggleEndIconDelegate, reason: not valid java name */
    public /* synthetic */ void m5568x4cc26475(View view) {
        EditText editText = this.editText;
        if (editText == null) {
            return;
        }
        int selectionEnd = editText.getSelectionEnd();
        if (hasPasswordTransformation()) {
            this.editText.setTransformationMethod(null);
        } else {
            this.editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (selectionEnd >= 0) {
            this.editText.setSelection(selectionEnd);
        }
        refreshIconState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PasswordToggleEndIconDelegate(EndCompoundLayout endCompoundLayout, int i) {
        super(endCompoundLayout);
        this.iconResId = R.drawable.design_password_eye;
        this.onIconClickListener = new View.OnClickListener() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PasswordToggleEndIconDelegate.this.m5568x4cc26475(view);
            }
        };
        if (i != 0) {
            this.iconResId = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public void setUp() {
        if (isInputTypePassword(this.editText)) {
            this.editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public void tearDown() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public int getIconContentDescriptionResId() {
        return R.string.password_toggle_content_description;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public boolean isIconChecked() {
        return !hasPasswordTransformation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public void onEditTextAttached(EditText editText) {
        this.editText = editText;
        refreshIconState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public void beforeEditTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        refreshIconState();
    }

    private boolean hasPasswordTransformation() {
        EditText editText = this.editText;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean isInputTypePassword(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }
}
