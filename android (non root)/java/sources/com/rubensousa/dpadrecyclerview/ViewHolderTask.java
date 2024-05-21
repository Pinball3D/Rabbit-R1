package com.rubensousa.dpadrecyclerview;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ViewHolderTask.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;", "", "executeWhenAligned", "", "(Z)V", "getExecuteWhenAligned", "()Z", "execute", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class ViewHolderTask {
    private final boolean executeWhenAligned;

    public ViewHolderTask() {
        this(false, 1, null);
    }

    public abstract void execute(RecyclerView.ViewHolder viewHolder);

    public final boolean getExecuteWhenAligned() {
        return this.executeWhenAligned;
    }

    public ViewHolderTask(boolean z) {
        this.executeWhenAligned = z;
    }

    public /* synthetic */ ViewHolderTask(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }
}
