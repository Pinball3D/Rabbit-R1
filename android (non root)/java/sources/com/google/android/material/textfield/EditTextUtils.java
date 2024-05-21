package com.google.android.material.textfield;

import android.widget.EditText;

/* loaded from: classes2.dex */
class EditTextUtils {
    private EditTextUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isEditable(EditText editText) {
        return editText.getInputType() != 0;
    }
}
