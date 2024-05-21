package com.rubensousa.dpadrecyclerview.layoutmanager.alignment;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.rubensousa.dpadrecyclerview.ViewAlignment;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewAnchorHelper.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J(\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0003J(\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ViewAnchorHelper;", "", "()V", "tmpRect", "Landroid/graphics/Rect;", "calculateAnchor", "", "itemView", "Landroid/view/View;", "alignmentView", "alignment", "Lcom/rubensousa/dpadrecyclerview/ViewAlignment;", "isVertical", "", "reverseLayout", "getHorizontalAnchor", "getVerticalAnchor", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewAnchorHelper {
    public static final ViewAnchorHelper INSTANCE = new ViewAnchorHelper();
    private static final Rect tmpRect = new Rect();

    private ViewAnchorHelper() {
    }

    @JvmStatic
    public static final int calculateAnchor(View itemView, View alignmentView, ViewAlignment alignment, boolean isVertical, boolean reverseLayout) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(alignmentView, "alignmentView");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        if (isVertical) {
            return getVerticalAnchor(itemView, reverseLayout, alignmentView, alignment);
        }
        return getHorizontalAnchor(itemView, reverseLayout, alignmentView, alignment);
    }

    @JvmStatic
    private static final int getVerticalAnchor(View itemView, boolean reverseLayout, View alignmentView, ViewAlignment alignment) {
        int height;
        if (alignmentView == itemView) {
            if (itemView.isLaidOut()) {
                height = itemView.getHeight();
            } else {
                height = itemView.getMeasuredHeight();
            }
        } else {
            height = alignmentView.getHeight();
        }
        int baseline = (!alignment.getAlignToBaseline() || alignmentView.getBaseline() == -1) ? 0 : alignmentView.getBaseline();
        if (!reverseLayout) {
            if (alignment.isFractionEnabled()) {
                baseline = (int) (height * alignment.getFraction());
            }
            if (alignment.getIncludePadding()) {
                if (alignment.getFraction() == 0.0f) {
                    baseline += alignmentView.getPaddingTop();
                } else if (alignment.getFraction() == 1.0f) {
                    baseline -= alignmentView.getPaddingBottom();
                }
            }
            int offset = baseline + alignment.getOffset();
            if (itemView == alignmentView) {
                return offset;
            }
            Rect rect = tmpRect;
            rect.top = offset;
            Intrinsics.checkNotNull(itemView, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) itemView).offsetDescendantRectToMyCoords(alignmentView, rect);
            return rect.top;
        }
        if (alignment.isFractionEnabled()) {
            baseline = (int) (height * (1.0f - alignment.getFraction()));
        }
        if (alignment.getIncludePadding()) {
            if (alignment.getFraction() == 0.0f) {
                baseline -= alignmentView.getPaddingBottom();
            } else if (alignment.getFraction() == 1.0f) {
                baseline += alignmentView.getPaddingTop();
            }
        }
        int offset2 = baseline - alignment.getOffset();
        if (itemView == alignmentView) {
            return offset2;
        }
        Rect rect2 = tmpRect;
        rect2.bottom = offset2;
        Intrinsics.checkNotNull(itemView, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) itemView).offsetDescendantRectToMyCoords(alignmentView, rect2);
        return rect2.bottom;
    }

    @JvmStatic
    private static final int getHorizontalAnchor(View itemView, boolean reverseLayout, View alignmentView, ViewAlignment alignment) {
        int width;
        int fraction;
        if (alignmentView == itemView) {
            if (itemView.isLaidOut()) {
                width = itemView.getWidth();
            } else {
                width = itemView.getMeasuredWidth();
            }
        } else {
            width = alignmentView.getWidth();
        }
        if (!reverseLayout) {
            fraction = alignment.isFractionEnabled() ? (int) (width * alignment.getFraction()) : 0;
            if (alignment.getIncludePadding()) {
                if (alignment.getFraction() == 0.0f) {
                    fraction += alignmentView.getPaddingLeft();
                } else if (alignment.getFraction() == 1.0f) {
                    fraction -= alignmentView.getPaddingRight();
                }
            }
            int offset = fraction + alignment.getOffset();
            if (itemView == alignmentView) {
                return offset;
            }
            Rect rect = tmpRect;
            rect.left = offset;
            Intrinsics.checkNotNull(itemView, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) itemView).offsetDescendantRectToMyCoords(alignmentView, rect);
            return rect.left;
        }
        fraction = alignment.isFractionEnabled() ? (int) (width * (1.0f - alignment.getFraction())) : 0;
        if (alignment.getIncludePadding()) {
            if (alignment.getFraction() == 0.0f) {
                fraction -= alignmentView.getPaddingRight();
            } else if (alignment.getFraction() == 1.0f) {
                fraction += alignmentView.getPaddingLeft();
            }
        }
        int offset2 = fraction - alignment.getOffset();
        if (itemView == alignmentView) {
            return offset2;
        }
        Rect rect2 = tmpRect;
        rect2.right = offset2;
        Intrinsics.checkNotNull(itemView, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) itemView).offsetDescendantRectToMyCoords(alignmentView, rect2);
        return rect2.right;
    }
}
