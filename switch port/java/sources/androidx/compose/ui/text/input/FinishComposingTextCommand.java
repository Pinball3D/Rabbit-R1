package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: EditCommand.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/text/input/FinishComposingTextCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "()V", "applyTo", "", "buffer", "Landroidx/compose/ui/text/input/EditingBuffer;", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FinishComposingTextCommand implements EditCommand {
    public static final int $stable = 0;

    public String toString() {
        return "FinishComposingTextCommand()";
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.commitComposition$ui_text_release();
    }

    public boolean equals(Object other) {
        return other instanceof FinishComposingTextCommand;
    }

    public int hashCode() {
        return Reflection.getOrCreateKotlinClass(getClass()).hashCode();
    }
}
