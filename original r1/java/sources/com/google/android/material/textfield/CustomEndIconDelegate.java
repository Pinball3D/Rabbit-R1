package com.google.android.material.textfield;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class CustomEndIconDelegate extends EndIconDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomEndIconDelegate(EndCompoundLayout endCompoundLayout) {
        super(endCompoundLayout);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    public void setUp() {
        this.endLayout.setEndIconOnLongClickListener(null);
    }
}
