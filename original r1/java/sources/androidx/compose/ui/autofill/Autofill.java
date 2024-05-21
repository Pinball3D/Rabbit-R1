package androidx.compose.ui.autofill;

import kotlin.Metadata;

/* compiled from: Autofill.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/autofill/Autofill;", "", "cancelAutofillForNode", "", "autofillNode", "Landroidx/compose/ui/autofill/AutofillNode;", "requestAutofillForNode", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Autofill {
    void cancelAutofillForNode(AutofillNode autofillNode);

    void requestAutofillForNode(AutofillNode autofillNode);
}
