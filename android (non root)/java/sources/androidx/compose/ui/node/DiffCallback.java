package androidx.compose.ui.node;

import kotlin.Metadata;

/* compiled from: MyersDiff.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/DiffCallback;", "", "areItemsTheSame", "", "oldIndex", "", "newIndex", "insert", "", "remove", "atIndex", "same", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface DiffCallback {
    boolean areItemsTheSame(int oldIndex, int newIndex);

    void insert(int newIndex);

    void remove(int atIndex, int oldIndex);

    void same(int oldIndex, int newIndex);
}
