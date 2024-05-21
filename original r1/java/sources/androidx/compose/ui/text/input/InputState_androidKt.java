package androidx.compose.ui.text.input;

import android.view.inputmethod.ExtractedText;
import androidx.compose.ui.text.TextRange;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: InputState.android.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toExtractedText", "Landroid/view/inputmethod/ExtractedText;", "Landroidx/compose/ui/text/input/TextFieldValue;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InputState_androidKt {
    public static final ExtractedText toExtractedText(TextFieldValue textFieldValue) {
        Intrinsics.checkNotNullParameter(textFieldValue, "<this>");
        ExtractedText extractedText = new ExtractedText();
        extractedText.text = textFieldValue.getText();
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = textFieldValue.getText().length();
        extractedText.partialStartOffset = -1;
        extractedText.selectionStart = TextRange.m4412getMinimpl(textFieldValue.getSelection());
        extractedText.selectionEnd = TextRange.m4411getMaximpl(textFieldValue.getSelection());
        extractedText.flags = !StringsKt.contains$default((CharSequence) textFieldValue.getText(), '\n', false, 2, (Object) null) ? 1 : 0;
        return extractedText;
    }
}
