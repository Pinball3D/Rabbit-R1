package com.rubensousa.dpadrecyclerview.layoutmanager.focus;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;

/* compiled from: FocusInterceptor.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH&¨\u0006\n"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;", "", "findFocus", "Landroid/view/View;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "focusedView", "position", "", "direction", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface FocusInterceptor {
    View findFocus(RecyclerView recyclerView, View focusedView, int position, int direction);
}
