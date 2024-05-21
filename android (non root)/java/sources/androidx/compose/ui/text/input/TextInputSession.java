package androidx.compose.ui.text.input;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextInputService.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0017\u0010\f\u001a\u00020\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eH\u0082\bJ\u0006\u0010\u000f\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\bJ\u0018\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0016R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/text/input/TextInputSession;", "", "textInputService", "Landroidx/compose/ui/text/input/TextInputService;", "platformTextInputService", "Landroidx/compose/ui/text/input/PlatformTextInputService;", "(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V", "isOpen", "", "()Z", "dispose", "", "ensureOpenSession", "block", "Lkotlin/Function0;", "hideSoftwareKeyboard", "notifyFocusedRect", "rect", "Landroidx/compose/ui/geometry/Rect;", "showSoftwareKeyboard", "updateState", "oldValue", "Landroidx/compose/ui/text/input/TextFieldValue;", "newValue", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextInputSession {
    public static final int $stable = 8;
    private final PlatformTextInputService platformTextInputService;
    private final TextInputService textInputService;

    public TextInputSession(TextInputService textInputService, PlatformTextInputService platformTextInputService) {
        Intrinsics.checkNotNullParameter(textInputService, "textInputService");
        Intrinsics.checkNotNullParameter(platformTextInputService, "platformTextInputService");
        this.textInputService = textInputService;
        this.platformTextInputService = platformTextInputService;
    }

    public final boolean isOpen() {
        return Intrinsics.areEqual(this.textInputService.getCurrentInputSession$ui_text_release(), this);
    }

    public final void dispose() {
        this.textInputService.stopInput(this);
    }

    private final boolean ensureOpenSession(Function0<Unit> block) {
        boolean isOpen = isOpen();
        if (isOpen) {
            block.invoke();
        }
        return isOpen;
    }

    public final boolean notifyFocusedRect(Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.notifyFocusedRect(rect);
        }
        return isOpen;
    }

    public final boolean updateState(TextFieldValue oldValue, TextFieldValue newValue) {
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.updateState(oldValue, newValue);
        }
        return isOpen;
    }

    public final boolean showSoftwareKeyboard() {
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.showSoftwareKeyboard();
        }
        return isOpen;
    }

    public final boolean hideSoftwareKeyboard() {
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.hideSoftwareKeyboard();
        }
        return isOpen;
    }
}
