package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: EditCommand.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/text/input/SetComposingRegionCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "start", "", "end", "(II)V", "getEnd", "()I", "getStart", "applyTo", "", "buffer", "Landroidx/compose/ui/text/input/EditingBuffer;", "equals", "", "other", "", "hashCode", "toString", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SetComposingRegionCommand implements EditCommand {
    public static final int $stable = 0;
    private final int end;
    private final int start;

    public final int getEnd() {
        return this.end;
    }

    public final int getStart() {
        return this.start;
    }

    public int hashCode() {
        return (this.start * 31) + this.end;
    }

    public SetComposingRegionCommand(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (buffer.hasComposition$ui_text_release()) {
            buffer.commitComposition$ui_text_release();
        }
        int coerceIn = RangesKt.coerceIn(this.start, 0, buffer.getLength$ui_text_release());
        int coerceIn2 = RangesKt.coerceIn(this.end, 0, buffer.getLength$ui_text_release());
        if (coerceIn != coerceIn2) {
            if (coerceIn < coerceIn2) {
                buffer.setComposition$ui_text_release(coerceIn, coerceIn2);
            } else {
                buffer.setComposition$ui_text_release(coerceIn2, coerceIn);
            }
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) other;
        return this.start == setComposingRegionCommand.start && this.end == setComposingRegionCommand.end;
    }

    public String toString() {
        return "SetComposingRegionCommand(start=" + this.start + ", end=" + this.end + ')';
    }
}
