package androidx.compose.ui.platform;

import androidx.compose.ui.text.input.TextInputService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LocalSoftwareKeyboardController.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;", "Landroidx/compose/ui/platform/SoftwareKeyboardController;", "textInputService", "Landroidx/compose/ui/text/input/TextInputService;", "(Landroidx/compose/ui/text/input/TextInputService;)V", "getTextInputService", "()Landroidx/compose/ui/text/input/TextInputService;", "hide", "", "show", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class DelegatingSoftwareKeyboardController implements SoftwareKeyboardController {
    private final TextInputService textInputService;

    public final TextInputService getTextInputService() {
        return this.textInputService;
    }

    public DelegatingSoftwareKeyboardController(TextInputService textInputService) {
        Intrinsics.checkNotNullParameter(textInputService, "textInputService");
        this.textInputService = textInputService;
    }

    @Override // androidx.compose.ui.platform.SoftwareKeyboardController
    public void show() {
        this.textInputService.showSoftwareKeyboard();
    }

    @Override // androidx.compose.ui.platform.SoftwareKeyboardController
    public void hide() {
        this.textInputService.hideSoftwareKeyboard();
    }
}
