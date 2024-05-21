package androidx.compose.ui.text.input;

import kotlin.Metadata;

/* compiled from: EditCommand.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "lengthBeforeCursor", "", "lengthAfterCursor", "(II)V", "getLengthAfterCursor", "()I", "getLengthBeforeCursor", "applyTo", "", "buffer", "Landroidx/compose/ui/text/input/EditingBuffer;", "equals", "", "other", "", "hashCode", "toString", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {
    public static final int $stable = 0;
    private final int lengthAfterCursor;
    private final int lengthBeforeCursor;

    public final int getLengthAfterCursor() {
        return this.lengthAfterCursor;
    }

    public final int getLengthBeforeCursor() {
        return this.lengthBeforeCursor;
    }

    public int hashCode() {
        return (this.lengthBeforeCursor * 31) + this.lengthAfterCursor;
    }

    public DeleteSurroundingTextInCodePointsCommand(int i, int i2) {
        this.lengthBeforeCursor = i;
        this.lengthAfterCursor = i2;
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException(("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.").toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038 A[LOOP:0: B:2:0x000a->B:10:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003b A[EDGE_INSN: B:11:0x003b->B:12:0x003b BREAK  A[LOOP:0: B:2:0x000a->B:10:0x0038], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0076 A[LOOP:1: B:13:0x003e->B:21:0x0076, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079 A[EDGE_INSN: B:22:0x0079->B:23:0x0079 BREAK  A[LOOP:1: B:13:0x003e->B:21:0x0076], SYNTHETIC] */
    @Override // androidx.compose.ui.text.input.EditCommand
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyTo(androidx.compose.ui.text.input.EditingBuffer r8) {
        /*
            r7 = this;
            java.lang.String r0 = "buffer"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            int r0 = r7.lengthBeforeCursor
            r1 = 0
            r2 = r1
            r3 = r2
        La:
            if (r2 >= r0) goto L3b
            int r4 = r3 + 1
            int r5 = r8.getSelectionStart()
            if (r5 <= r4) goto L31
            int r5 = r8.getSelectionStart()
            int r5 = r5 - r4
            int r5 = r5 + (-1)
            char r5 = r8.get$ui_text_release(r5)
            int r6 = r8.getSelectionStart()
            int r6 = r6 - r4
            char r6 = r8.get$ui_text_release(r6)
            boolean r5 = androidx.compose.ui.text.input.EditCommandKt.access$isSurrogatePair(r5, r6)
            if (r5 == 0) goto L31
            int r3 = r3 + 2
            goto L32
        L31:
            r3 = r4
        L32:
            int r4 = r8.getSelectionStart()
            if (r3 == r4) goto L3b
            int r2 = r2 + 1
            goto La
        L3b:
            int r7 = r7.lengthAfterCursor
            r0 = r1
        L3e:
            if (r1 >= r7) goto L79
            int r2 = r0 + 1
            int r4 = r8.getSelectionEnd()
            int r4 = r4 + r2
            int r5 = r8.getLength$ui_text_release()
            if (r4 >= r5) goto L6a
            int r4 = r8.getSelectionEnd()
            int r4 = r4 + r2
            int r4 = r4 + (-1)
            char r4 = r8.get$ui_text_release(r4)
            int r5 = r8.getSelectionEnd()
            int r5 = r5 + r2
            char r5 = r8.get$ui_text_release(r5)
            boolean r4 = androidx.compose.ui.text.input.EditCommandKt.access$isSurrogatePair(r4, r5)
            if (r4 == 0) goto L6a
            int r0 = r0 + 2
            goto L6b
        L6a:
            r0 = r2
        L6b:
            int r2 = r8.getSelectionEnd()
            int r2 = r2 + r0
            int r4 = r8.getLength$ui_text_release()
            if (r2 == r4) goto L79
            int r1 = r1 + 1
            goto L3e
        L79:
            int r7 = r8.getSelectionEnd()
            int r1 = r8.getSelectionEnd()
            int r1 = r1 + r0
            r8.delete$ui_text_release(r7, r1)
            int r7 = r8.getSelectionStart()
            int r7 = r7 - r3
            int r0 = r8.getSelectionStart()
            r8.delete$ui_text_release(r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand.applyTo(androidx.compose.ui.text.input.EditingBuffer):void");
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) other;
        return this.lengthBeforeCursor == deleteSurroundingTextInCodePointsCommand.lengthBeforeCursor && this.lengthAfterCursor == deleteSurroundingTextInCodePointsCommand.lengthAfterCursor;
    }

    public String toString() {
        return "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=" + this.lengthBeforeCursor + ", lengthAfterCursor=" + this.lengthAfterCursor + ')';
    }
}
