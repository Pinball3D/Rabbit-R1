package com.rubensousa.dpadrecyclerview.layoutmanager.alignment;

import android.view.View;
import com.rubensousa.dpadrecyclerview.ChildAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChildScrollAlignment.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004J&\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;", "", "()V", "alignment", "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;", "getAlignment", "setAlignment", "", "alignmentConfig", "updateAlignments", "view", "Landroid/view/View;", "layoutParams", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;", "isVertical", "", "reverseLayout", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ChildScrollAlignment {
    private ChildAlignment alignment = new ChildAlignment(0, 0.0f, false, false, false, 30, null);

    public final ChildAlignment getAlignment() {
        return this.alignment;
    }

    public final void setAlignment(ChildAlignment alignmentConfig) {
        Intrinsics.checkNotNullParameter(alignmentConfig, "alignmentConfig");
        this.alignment = alignmentConfig;
    }

    public final void updateAlignments(View view, DpadLayoutParams layoutParams, boolean isVertical, boolean reverseLayout) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        layoutParams.setAlignmentAnchor$dpadrecyclerview_release(ViewAnchorHelper.calculateAnchor(view, view, this.alignment, isVertical, reverseLayout));
    }
}
