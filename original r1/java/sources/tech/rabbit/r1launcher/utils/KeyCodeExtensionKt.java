package tech.rabbit.r1launcher.utils;

import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.initstep.utils.Constants;

/* compiled from: KeyCodeExtension.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\t\u001a*\u0010\n\u001a\u00020\u0006*\u00020\u000b2\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\r¨\u0006\u000f"}, d2 = {"isKeyCodeConfirm", "", "", "isKeyCodeDown", "isKeyCodeUp", "setOnEnterListener", "", "Landroid/widget/EditText;", "onEnter", "Lkotlin/Function0;", "setOnSafeConfirmKeyListener", "Landroid/view/View;", "onSafeKey", "Lkotlin/Function3;", "Landroid/view/KeyEvent;", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class KeyCodeExtensionKt {
    public static final boolean isKeyCodeDown(int i) {
        return i == 20;
    }

    public static final boolean isKeyCodeUp(int i) {
        return i == 19;
    }

    public static final boolean isKeyCodeConfirm(int i) {
        return Constants.INSTANCE.isSideButtonKeyCode(i) || i == 66;
    }

    public static final void setOnSafeConfirmKeyListener(View view, Function3<? super View, ? super Integer, ? super KeyEvent, Unit> onSafeKey) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onSafeKey, "onSafeKey");
        view.setOnKeyListener(new OnSafeConfirmKeyListener(0, onSafeKey, 1, null));
    }

    public static final void setOnEnterListener(EditText editText, final Function0<Unit> onEnter) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(onEnter, "onEnter");
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: tech.rabbit.r1launcher.utils.KeyCodeExtensionKt$$ExternalSyntheticLambda0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean onEnterListener$lambda$0;
                onEnterListener$lambda$0 = KeyCodeExtensionKt.setOnEnterListener$lambda$0(Function0.this, textView, i, keyEvent);
                return onEnterListener$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setOnEnterListener$lambda$0(Function0 onEnter, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(onEnter, "$onEnter");
        boolean z = i == 6 || i == 2;
        if (z) {
            onEnter.invoke();
        }
        return z;
    }
}
