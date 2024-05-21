package androidx.compose.ui.platform;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidComposeView.android.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;", "", "()V", "focusable", "", "view", "Landroid/view/View;", "", "defaultFocusHighlightEnabled", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class AndroidComposeViewVerificationHelperMethodsO {
    public static final AndroidComposeViewVerificationHelperMethodsO INSTANCE = new AndroidComposeViewVerificationHelperMethodsO();

    private AndroidComposeViewVerificationHelperMethodsO() {
    }

    public final void focusable(View view, int focusable, boolean defaultFocusHighlightEnabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setFocusable(focusable);
        view.setDefaultFocusHighlightEnabled(defaultFocusHighlightEnabled);
    }
}
