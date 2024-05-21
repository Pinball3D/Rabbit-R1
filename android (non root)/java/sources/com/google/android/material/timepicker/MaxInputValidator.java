package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;

/* loaded from: classes2.dex */
class MaxInputValidator implements InputFilter {
    private int max;

    public int getMax() {
        return this.max;
    }

    public void setMax(int i) {
        this.max = i;
    }

    public MaxInputValidator(int i) {
        this.max = i;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) <= this.max) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
