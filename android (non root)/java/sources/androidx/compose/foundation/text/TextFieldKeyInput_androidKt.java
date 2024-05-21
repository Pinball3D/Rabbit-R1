package androidx.compose.foundation.text;

import android.view.KeyEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextFieldKeyInput.android.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0005"}, d2 = {"isTypedEvent", "", "Landroidx/compose/ui/input/key/KeyEvent;", "isTypedEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldKeyInput_androidKt {
    /* renamed from: isTypedEvent-ZmokQxo, reason: not valid java name */
    public static final boolean m828isTypedEventZmokQxo(KeyEvent isTypedEvent) {
        Intrinsics.checkNotNullParameter(isTypedEvent, "$this$isTypedEvent");
        return isTypedEvent.getAction() == 0 && !Character.isISOControl(isTypedEvent.getUnicodeChar());
    }
}
