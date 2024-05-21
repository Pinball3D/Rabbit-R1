package androidx.window.embedding;

import android.graphics.Rect;
import android.view.WindowMetrics;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SplitRule.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B/\b\u0000\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0013\u001a\u00020\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0003H\u0016R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Landroidx/window/embedding/SplitRule;", "Landroidx/window/embedding/EmbeddingRule;", "minWidth", "", "minSmallestWidth", "splitRatio", "", "layoutDirection", "(IIFI)V", "getLayoutDirection", "()I", "getMinSmallestWidth", "getMinWidth", "getSplitRatio", "()F", "checkParentMetrics", "", "parentMetrics", "Landroid/view/WindowMetrics;", "equals", "other", "", "hashCode", "Api30Impl", "LayoutDir", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public class SplitRule extends EmbeddingRule {
    private final int layoutDirection;
    private final int minSmallestWidth;
    private final int minWidth;
    private final float splitRatio;

    /* compiled from: SplitRule.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0081\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/window/embedding/SplitRule$LayoutDir;", "", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    /* loaded from: classes2.dex */
    public @interface LayoutDir {
    }

    public SplitRule() {
        this(0, 0, 0.0f, 0, 15, null);
    }

    public final int getLayoutDirection() {
        return this.layoutDirection;
    }

    public final int getMinSmallestWidth() {
        return this.minSmallestWidth;
    }

    public final int getMinWidth() {
        return this.minWidth;
    }

    public final float getSplitRatio() {
        return this.splitRatio;
    }

    public /* synthetic */ SplitRule(int i, int i2, float f, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0.5f : f, (i4 & 8) != 0 ? 3 : i3);
    }

    public SplitRule(int i, int i2, float f, int i3) {
        this.minWidth = i;
        this.minSmallestWidth = i2;
        this.splitRatio = f;
        this.layoutDirection = i3;
    }

    public final boolean checkParentMetrics(WindowMetrics parentMetrics) {
        Intrinsics.checkNotNullParameter(parentMetrics, "parentMetrics");
        Rect bounds = Api30Impl.INSTANCE.getBounds(parentMetrics);
        return (this.minWidth == 0 || bounds.width() >= this.minWidth) && (this.minSmallestWidth == 0 || Math.min(bounds.width(), bounds.height()) >= this.minSmallestWidth);
    }

    /* compiled from: SplitRule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/window/embedding/SplitRule$Api30Impl;", "", "()V", "getBounds", "Landroid/graphics/Rect;", "windowMetrics", "Landroid/view/WindowMetrics;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Api30Impl {
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        public final Rect getBounds(WindowMetrics windowMetrics) {
            Intrinsics.checkNotNullParameter(windowMetrics, "windowMetrics");
            Rect bounds = windowMetrics.getBounds();
            Intrinsics.checkNotNullExpressionValue(bounds, "windowMetrics.bounds");
            return bounds;
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SplitRule)) {
            return false;
        }
        SplitRule splitRule = (SplitRule) other;
        return this.minWidth == splitRule.minWidth && this.minSmallestWidth == splitRule.minSmallestWidth && this.splitRatio == splitRule.splitRatio && this.layoutDirection == splitRule.layoutDirection;
    }

    public int hashCode() {
        return (((((this.minWidth * 31) + this.minSmallestWidth) * 31) + Float.hashCode(this.splitRatio)) * 31) + this.layoutDirection;
    }
}
