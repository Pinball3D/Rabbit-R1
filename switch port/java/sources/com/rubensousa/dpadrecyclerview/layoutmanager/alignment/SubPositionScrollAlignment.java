package com.rubensousa.dpadrecyclerview.layoutmanager.alignment;

import android.view.View;
import com.rubensousa.dpadrecyclerview.SubPositionAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubPositionScrollAlignment.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J:\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J4\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n¨\u0006\u0017"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment;", "", "()V", "calculateAnchor", "", "itemView", "Landroid/view/View;", "alignment", "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;", "isVertical", "", "reverseLayout", "getAlignmentView", "getSubPositionAnchors", "", "alignments", "", "currentAnchors", "updateAlignments", "", "view", "layoutParams", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SubPositionScrollAlignment {
    public final void updateAlignments(View view, DpadLayoutParams layoutParams, List<SubPositionAlignment> alignments, boolean isVertical, boolean reverseLayout) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        Intrinsics.checkNotNullParameter(alignments, "alignments");
        layoutParams.setSubPositionAnchors$dpadrecyclerview_release(getSubPositionAnchors(view, alignments, layoutParams.getSubPositionAnchors(), isVertical, reverseLayout));
    }

    private final int[] getSubPositionAnchors(View itemView, List<SubPositionAlignment> alignments, int[] currentAnchors, boolean isVertical, boolean reverseLayout) {
        if (alignments.isEmpty()) {
            return null;
        }
        if (currentAnchors == null || currentAnchors.length != alignments.size()) {
            currentAnchors = new int[alignments.size()];
        }
        int i = 0;
        for (Object obj : alignments) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            currentAnchors[i] = calculateAnchor(itemView, (SubPositionAlignment) obj, isVertical, reverseLayout);
            i = i2;
        }
        return currentAnchors;
    }

    private final int calculateAnchor(View itemView, SubPositionAlignment alignment, boolean isVertical, boolean reverseLayout) {
        return ViewAnchorHelper.calculateAnchor(itemView, getAlignmentView(itemView, alignment), alignment, isVertical, reverseLayout);
    }

    private final View getAlignmentView(View itemView, SubPositionAlignment alignment) {
        View findViewById;
        return (alignment.getAlignmentViewId() == -1 || (findViewById = itemView.findViewById(alignment.getAlignmentViewId())) == null) ? itemView : findViewById;
    }
}
