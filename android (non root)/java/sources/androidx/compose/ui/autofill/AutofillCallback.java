package androidx.compose.ui.autofill;

import android.util.Log;
import android.view.View;
import android.view.autofill.AutofillManager;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AutofillCallback.android.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/autofill/AutofillCallback;", "Landroid/view/autofill/AutofillManager$AutofillCallback;", "()V", "onAutofillEvent", "", "view", "Landroid/view/View;", "virtualId", "", NotificationCompat.CATEGORY_EVENT, "register", "autofill", "Landroidx/compose/ui/autofill/AndroidAutofill;", "unregister", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AutofillCallback extends AutofillManager.AutofillCallback {
    public static final AutofillCallback INSTANCE = new AutofillCallback();

    private AutofillCallback() {
    }

    @Override // android.view.autofill.AutofillManager.AutofillCallback
    public void onAutofillEvent(View view, int virtualId, int event) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onAutofillEvent(view, virtualId, event);
        Log.d("Autofill Status", event != 1 ? event != 2 ? event != 3 ? "Unknown status event." : "Autofill popup isn't shown because autofill is not available.\n\nDid you set up autofill?\n1. Go to Settings > System > Languages&input > Advanced > Autofill Service\n2. Pick a service\n\nDid you add an account?\n1. Go to Settings > System > Languages&input > Advanced\n2. Click on the settings icon next to the Autofill Service\n3. Add your account" : "Autofill popup was hidden." : "Autofill popup was shown.");
    }

    public final void register(AndroidAutofill autofill) {
        Intrinsics.checkNotNullParameter(autofill, "autofill");
        autofill.getAutofillManager().registerCallback(this);
    }

    public final void unregister(AndroidAutofill autofill) {
        Intrinsics.checkNotNullParameter(autofill, "autofill");
        autofill.getAutofillManager().unregisterCallback(this);
    }
}
