package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: EditCommand.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0015\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u0019\u001a\u00020\u0003H\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/text/input/SetComposingTextCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "text", "", "newCursorPosition", "", "(Ljava/lang/String;I)V", "annotatedString", "Landroidx/compose/ui/text/AnnotatedString;", "(Landroidx/compose/ui/text/AnnotatedString;I)V", "getAnnotatedString", "()Landroidx/compose/ui/text/AnnotatedString;", "getNewCursorPosition", "()I", "getText", "()Ljava/lang/String;", "applyTo", "", "buffer", "Landroidx/compose/ui/text/input/EditingBuffer;", "equals", "", "other", "", "hashCode", "toString", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SetComposingTextCommand implements EditCommand {
    public static final int $stable = 0;
    private final AnnotatedString annotatedString;
    private final int newCursorPosition;

    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    public final int getNewCursorPosition() {
        return this.newCursorPosition;
    }

    public SetComposingTextCommand(AnnotatedString annotatedString, int i) {
        Intrinsics.checkNotNullParameter(annotatedString, "annotatedString");
        this.annotatedString = annotatedString;
        this.newCursorPosition = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SetComposingTextCommand(String text, int i) {
        this(new AnnotatedString(text, null, null, 6, null), i);
        Intrinsics.checkNotNullParameter(text, "text");
    }

    public final String getText() {
        return this.annotatedString.getText();
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (buffer.hasComposition$ui_text_release()) {
            int compositionStart = buffer.getCompositionStart();
            buffer.replace$ui_text_release(buffer.getCompositionStart(), buffer.getCompositionEnd(), getText());
            if (getText().length() > 0) {
                buffer.setComposition$ui_text_release(compositionStart, getText().length() + compositionStart);
            }
        } else {
            int selectionStart = buffer.getSelectionStart();
            buffer.replace$ui_text_release(buffer.getSelectionStart(), buffer.getSelectionEnd(), getText());
            if (getText().length() > 0) {
                buffer.setComposition$ui_text_release(selectionStart, getText().length() + selectionStart);
            }
        }
        int cursor$ui_text_release = buffer.getCursor$ui_text_release();
        int i = this.newCursorPosition;
        buffer.setCursor$ui_text_release(RangesKt.coerceIn(i > 0 ? (cursor$ui_text_release + i) - 1 : (cursor$ui_text_release + i) - getText().length(), 0, buffer.getLength$ui_text_release()));
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetComposingTextCommand)) {
            return false;
        }
        SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) other;
        return Intrinsics.areEqual(getText(), setComposingTextCommand.getText()) && this.newCursorPosition == setComposingTextCommand.newCursorPosition;
    }

    public int hashCode() {
        return (getText().hashCode() * 31) + this.newCursorPosition;
    }

    public String toString() {
        return "SetComposingTextCommand(text='" + getText() + "', newCursorPosition=" + this.newCursorPosition + ')';
    }
}
