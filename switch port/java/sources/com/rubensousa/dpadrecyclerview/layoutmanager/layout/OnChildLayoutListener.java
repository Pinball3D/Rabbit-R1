package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.view.View;
import kotlin.Metadata;

/* compiled from: OnChildLayoutListener.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;", "", "onBlockLaidOut", "", "onChildCreated", "view", "Landroid/view/View;", "onChildLaidOut", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface OnChildLayoutListener {
    void onBlockLaidOut();

    void onChildCreated(View view);

    void onChildLaidOut(View view);
}
