package com.rubensousa.dpadrecyclerview;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FadingEdge.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J6\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u0018\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020\nH\u0002J\u0018\u0010&\u001a\u00020\t2\u0006\u0010'\u001a\u00020\n2\u0006\u0010(\u001a\u00020\nH\u0002J\u0016\u0010)\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u0016\u0010*\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u0016\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\u0016\u0010-\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\u000e\u0010.\u001a\u00020\n2\u0006\u0010!\u001a\u00020\"J\u000e\u0010/\u001a\u00020\n2\u0006\u0010!\u001a\u00020\"J\u0018\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u0002022\u0006\u0010!\u001a\u00020\"H\u0002J\u0018\u00103\u001a\u00020\u00042\u0006\u00101\u001a\u0002022\u0006\u0010!\u001a\u00020\"H\u0002J\u000e\u00104\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\u000e\u00105\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J.\u00106\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\n2\u0006\u0010'\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\n2\u0006\u0010!\u001a\u00020\"J\u0016\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\n2\u0006\u0010!\u001a\u00020\"J\u0016\u0010;\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020\n2\u0006\u0010!\u001a\u00020\"J\u0016\u0010=\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\n2\u0006\u0010!\u001a\u00020\"J\u0016\u0010>\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020\n2\u0006\u0010!\u001a\u00020\"J\u0010\u0010?\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"H\u0002R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0006R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u001e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\rR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/FadingEdge;", "", "()V", "<set-?>", "", "isFadingMaxEdge", "()Z", "isFadingMinEdge", "maxShader", "Landroid/graphics/LinearGradient;", "", "maxShaderLength", "getMaxShaderLength", "()I", "maxShaderOffset", "getMaxShaderOffset", "minShader", "minShaderLength", "getMinShaderLength", "minShaderOffset", "getMinShaderOffset", "paint", "Landroid/graphics/Paint;", "rect", "Landroid/graphics/Rect;", "clip", "", "minEdge", "maxEdge", "applyMinFading", "applyMaxFading", "canvas", "Landroid/graphics/Canvas;", "recyclerView", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "createMaxHorizontalShader", ViewHierarchyNode.JsonKeys.WIDTH, "paddingEnd", "createMaxVerticalShader", ViewHierarchyNode.JsonKeys.HEIGHT, "paddingBottom", "drawMax", "drawMin", "enableMaxEdgeFading", "enable", "enableMinEdgeFading", "getMaxEdge", "getMinEdge", "isFirstItemView", "view", "Landroid/view/View;", "isLastItemView", "isMaxFadingEdgeRequired", "isMinFadingEdgeRequired", "onSizeChanged", "oldWidth", "oldHeight", "setMaxEdgeFadingLength", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "setMaxEdgeFadingOffset", "offset", "setMinEdgeFadingLength", "setMinEdgeFadingOffset", "updateLayerType", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FadingEdge {
    private boolean isFadingMaxEdge;
    private boolean isFadingMinEdge;
    private LinearGradient maxShader;
    private int maxShaderLength;
    private int maxShaderOffset;
    private LinearGradient minShader;
    private int minShaderLength;
    private int minShaderOffset;
    private final Paint paint;
    private final Rect rect = new Rect();

    public final int getMaxShaderLength() {
        return this.maxShaderLength;
    }

    public final int getMaxShaderOffset() {
        return this.maxShaderOffset;
    }

    public final int getMinShaderLength() {
        return this.minShaderLength;
    }

    public final int getMinShaderOffset() {
        return this.minShaderOffset;
    }

    /* renamed from: isFadingMaxEdge, reason: from getter */
    public final boolean getIsFadingMaxEdge() {
        return this.isFadingMaxEdge;
    }

    /* renamed from: isFadingMinEdge, reason: from getter */
    public final boolean getIsFadingMinEdge() {
        return this.isFadingMinEdge;
    }

    public FadingEdge() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        paint.setDither(true);
    }

    public final void onSizeChanged(int width, int height, int oldWidth, int oldHeight, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.maxShaderLength == 0) {
            return;
        }
        if (recyclerView.getOrientation() == 0) {
            if (width == oldWidth) {
                return;
            } else {
                this.maxShader = createMaxHorizontalShader(width, recyclerView.getPaddingRight());
            }
        } else if (height == oldHeight) {
            return;
        } else {
            this.maxShader = createMaxVerticalShader(height, recyclerView.getPaddingBottom());
        }
        recyclerView.invalidate();
    }

    public final void enableMinEdgeFading(boolean enable, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.isFadingMinEdge == enable) {
            return;
        }
        this.isFadingMinEdge = enable;
        recyclerView.invalidate();
        updateLayerType(recyclerView);
    }

    public final void setMinEdgeFadingLength(int length, DpadRecyclerView recyclerView) {
        LinearGradient linearGradient;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.minShaderLength == length) {
            return;
        }
        this.minShaderLength = length;
        if (length == 0) {
            linearGradient = null;
        } else if (recyclerView.getOrientation() == 0) {
            linearGradient = new LinearGradient(0.0f, 0.0f, this.minShaderLength, 0.0f, 0, ViewCompat.MEASURED_STATE_MASK, Shader.TileMode.CLAMP);
        } else {
            linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, this.minShaderLength, 0, ViewCompat.MEASURED_STATE_MASK, Shader.TileMode.CLAMP);
        }
        this.minShader = linearGradient;
        recyclerView.invalidate();
    }

    public final void setMinEdgeFadingOffset(int offset, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.minShaderOffset != offset) {
            this.minShaderOffset = offset;
            recyclerView.invalidate();
        }
    }

    public final void enableMaxEdgeFading(boolean enable, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.isFadingMaxEdge == enable) {
            return;
        }
        this.isFadingMaxEdge = enable;
        recyclerView.invalidate();
        updateLayerType(recyclerView);
    }

    public final void setMaxEdgeFadingLength(int length, DpadRecyclerView recyclerView) {
        LinearGradient linearGradient;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.maxShaderLength == length) {
            return;
        }
        this.maxShaderLength = length;
        if (length == 0) {
            linearGradient = null;
        } else if (recyclerView.getOrientation() == 0) {
            linearGradient = createMaxHorizontalShader(recyclerView.getWidth(), recyclerView.getPaddingRight());
        } else {
            linearGradient = createMaxVerticalShader(recyclerView.getHeight(), recyclerView.getPaddingBottom());
        }
        this.maxShader = linearGradient;
        recyclerView.invalidate();
    }

    public final void setMaxEdgeFadingOffset(int offset, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.maxShaderOffset != offset) {
            this.maxShaderOffset = offset;
            recyclerView.invalidate();
        }
    }

    public final boolean isMinFadingEdgeRequired(DpadRecyclerView recyclerView) {
        int top;
        int paddingTop;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (!this.isFadingMinEdge || recyclerView.getChildCount() == 0) {
            return false;
        }
        View childAt = recyclerView.getChildAt(0);
        boolean z = recyclerView.getOrientation() == 0;
        Intrinsics.checkNotNull(childAt);
        boolean isFirstItemView = isFirstItemView(childAt, recyclerView);
        if (z) {
            top = childAt.getLeft();
            paddingTop = recyclerView.getPaddingLeft();
        } else {
            top = childAt.getTop();
            paddingTop = recyclerView.getPaddingTop();
        }
        return (top < this.minShaderOffset + paddingTop && !isFirstItemView) || (top < paddingTop && isFirstItemView);
    }

    public final boolean isMaxFadingEdgeRequired(DpadRecyclerView recyclerView) {
        int childCount;
        int bottom;
        int height;
        int paddingBottom;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (!this.isFadingMaxEdge || (childCount = recyclerView.getChildCount()) == 0) {
            return false;
        }
        boolean z = recyclerView.getOrientation() == 0;
        View childAt = recyclerView.getChildAt(childCount - 1);
        Intrinsics.checkNotNull(childAt);
        boolean isLastItemView = isLastItemView(childAt, recyclerView);
        if (z) {
            bottom = childAt.getRight();
            height = recyclerView.getWidth();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            bottom = childAt.getBottom();
            height = recyclerView.getHeight();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        int i = height - paddingBottom;
        return (bottom > i - this.maxShaderOffset && !isLastItemView) || (bottom > i && isLastItemView);
    }

    public final int getMinEdge(DpadRecyclerView recyclerView) {
        int paddingTop;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (!this.isFadingMinEdge) {
            return 0;
        }
        if (recyclerView.getOrientation() == 0) {
            paddingTop = recyclerView.getPaddingLeft();
        } else {
            paddingTop = recyclerView.getPaddingTop();
        }
        return paddingTop + this.minShaderOffset;
    }

    public final int getMaxEdge(DpadRecyclerView recyclerView) {
        int paddingBottom;
        int height;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (recyclerView.getOrientation() == 0) {
            paddingBottom = recyclerView.getPaddingRight();
            height = recyclerView.getWidth();
        } else {
            paddingBottom = recyclerView.getPaddingBottom();
            height = recyclerView.getHeight();
        }
        return !this.isFadingMaxEdge ? height : (height - paddingBottom) - this.maxShaderOffset;
    }

    public final void clip(int minEdge, int maxEdge, boolean applyMinFading, boolean applyMaxFading, Canvas canvas, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (recyclerView.getOrientation() == 0) {
            if (!applyMinFading) {
                minEdge = 0;
            }
            if (!applyMaxFading) {
                maxEdge = recyclerView.getWidth();
            }
            canvas.clipRect(minEdge, 0, maxEdge, recyclerView.getHeight());
            return;
        }
        if (!applyMinFading) {
            minEdge = 0;
        }
        if (!applyMaxFading) {
            maxEdge = recyclerView.getHeight();
        }
        canvas.clipRect(0, minEdge, recyclerView.getWidth(), maxEdge);
    }

    public final void drawMin(Canvas canvas, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.paint.setShader(this.minShader);
        if (recyclerView.getOrientation() == 0) {
            this.rect.top = 0;
            this.rect.bottom = recyclerView.getHeight();
            this.rect.left = this.minShaderOffset;
            this.rect.right = this.minShaderOffset + this.minShaderLength;
        } else {
            this.rect.left = 0;
            this.rect.right = recyclerView.getWidth();
            this.rect.top = this.minShaderOffset;
            this.rect.bottom = this.minShaderOffset + this.minShaderLength;
        }
        canvas.drawRect(this.rect, this.paint);
    }

    public final void drawMax(Canvas canvas, DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.paint.setShader(this.maxShader);
        if (recyclerView.getOrientation() == 0) {
            this.rect.top = 0;
            this.rect.bottom = recyclerView.getHeight();
            this.rect.right = (recyclerView.getWidth() - recyclerView.getPaddingRight()) - this.maxShaderOffset;
            Rect rect = this.rect;
            rect.left = rect.right - this.maxShaderLength;
        } else {
            this.rect.left = 0;
            this.rect.right = recyclerView.getWidth();
            this.rect.bottom = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - this.maxShaderOffset;
            Rect rect2 = this.rect;
            rect2.top = rect2.bottom - this.maxShaderLength;
        }
        canvas.drawRect(this.rect, this.paint);
    }

    private final boolean isFirstItemView(View view, DpadRecyclerView recyclerView) {
        return recyclerView.getChildLayoutPosition(view) == 0;
    }

    private final boolean isLastItemView(View view, DpadRecyclerView recyclerView) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        return recyclerView.getChildLayoutPosition(view) == (adapter != null ? adapter.getItemCount() : 0) - 1;
    }

    private final LinearGradient createMaxHorizontalShader(int width, int paddingEnd) {
        float f = (width - paddingEnd) - this.maxShaderOffset;
        return new LinearGradient(f - this.maxShaderLength, 0.0f, f, 0.0f, ViewCompat.MEASURED_STATE_MASK, 0, Shader.TileMode.CLAMP);
    }

    private final LinearGradient createMaxVerticalShader(int height, int paddingBottom) {
        float f = (height - paddingBottom) - this.maxShaderOffset;
        return new LinearGradient(0.0f, f - this.maxShaderLength, 0.0f, f, ViewCompat.MEASURED_STATE_MASK, 0, Shader.TileMode.CLAMP);
    }

    private final void updateLayerType(DpadRecyclerView recyclerView) {
        if (this.isFadingMinEdge || this.isFadingMaxEdge) {
            recyclerView.setLayerType(2, null);
            recyclerView.setWillNotDraw(false);
        } else {
            recyclerView.setLayerType(0, null);
            recyclerView.setWillNotDraw(true);
        }
    }
}
