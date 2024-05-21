package tech.rabbit.r1launcher.widget.scrollbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import io.sentry.Session;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.widget.scrollbar.supporter.ScrollBarExtViewSupporter;

/* compiled from: ScrollBarExtView.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u001b\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J\u0012\u0010 \u001a\u00020\u00172\b\b\u0001\u0010!\u001a\u00020\tH\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;", "Landroid/view/View;", "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "marginTop", "", "paint", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "paint$delegate", "Lkotlin/Lazy;", "percentage", "scrollBarExtViewSupporter", "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;", "thumbHeight", "trackHeight", "trackWidth", "attachSupporter", "", "detachSupporter", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onMeasure", "widthMeasureSpec", "", "heightMeasureSpec", "updateScrollPercentage", "scrollPercentage", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScrollBarExtView extends View implements ScrollBarExtViewUpdater {
    private static final float SCROLL_BAR_THUMB_HEIGHT_PERCENTAGE = 0.125f;
    private static final float SCROLL_BAR_TOP_MARGIN_PERCENTAGE = 0.2578125f;
    private static final float SCROLL_BAR_TRACK_HEIGHT_PERCENTAGE = 0.2625f;
    private static final float SCROLL_BAR_WIDTH_PERCENTAGE = 0.02083333f;
    private float marginTop;

    /* renamed from: paint$delegate, reason: from kotlin metadata */
    private final Lazy paint;
    private float percentage;
    private ScrollBarExtViewSupporter scrollBarExtViewSupporter;
    private float thumbHeight;
    private float trackHeight;
    private float trackWidth;
    public static final int $stable = 8;
    private static final float SCROLL_BAR_CORNER_SIZE = UiExtensionsKt.getDp(50.0f);
    private static final int SCROLL_BAR_TRACK_COLOR = Color.parseColor("#323232");
    private static final int SCROLL_BAR_THUMB_COLOR = Color.parseColor("#FF4D00");

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ScrollBarExtView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ScrollBarExtView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollBarExtView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.paint = LazyKt.lazy(new Function0<Paint>() { // from class: tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtView$paint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Paint invoke() {
                Paint paint = new Paint(1);
                paint.setStyle(Paint.Style.FILL);
                return paint;
            }
        });
    }

    private final Paint getPaint() {
        return (Paint) this.paint.getValue();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.marginTop = getMeasuredHeight() * SCROLL_BAR_TOP_MARGIN_PERCENTAGE;
        this.trackHeight = getMeasuredHeight() * SCROLL_BAR_TRACK_HEIGHT_PERCENTAGE;
        this.trackWidth = getMeasuredWidth() * SCROLL_BAR_WIDTH_PERCENTAGE;
        this.thumbHeight = getMeasuredHeight() * SCROLL_BAR_THUMB_HEIGHT_PERCENTAGE;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        getPaint().setColor(SCROLL_BAR_TRACK_COLOR);
        float measuredWidth = getMeasuredWidth() - this.trackWidth;
        float f = this.marginTop;
        float measuredWidth2 = getMeasuredWidth();
        float f2 = this.marginTop + this.trackHeight;
        float f3 = SCROLL_BAR_CORNER_SIZE;
        canvas.drawRoundRect(measuredWidth, f, measuredWidth2, f2, f3, f3, getPaint());
        getPaint().setColor(SCROLL_BAR_THUMB_COLOR);
        float measuredWidth3 = getMeasuredWidth() - this.trackWidth;
        float f4 = (this.percentage * (this.trackHeight - this.thumbHeight)) + this.marginTop;
        float measuredWidth4 = getMeasuredWidth();
        float f5 = this.marginTop;
        float f6 = this.percentage;
        float f7 = this.trackHeight;
        float f8 = this.thumbHeight;
        canvas.drawRoundRect(measuredWidth3, f4, measuredWidth4, f5 + (f6 * (f7 - f8)) + f8, f3, f3, getPaint());
    }

    public final void attachSupporter(ScrollBarExtViewSupporter scrollBarExtViewSupporter) {
        Intrinsics.checkNotNullParameter(scrollBarExtViewSupporter, "scrollBarExtViewSupporter");
        this.scrollBarExtViewSupporter = scrollBarExtViewSupporter;
        scrollBarExtViewSupporter.attach(this);
    }

    public final void detachSupporter() {
        ScrollBarExtViewSupporter scrollBarExtViewSupporter = this.scrollBarExtViewSupporter;
        if (scrollBarExtViewSupporter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scrollBarExtViewSupporter");
            scrollBarExtViewSupporter = null;
        }
        scrollBarExtViewSupporter.detach(this);
    }

    @Override // tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtViewUpdater
    public void updateScrollPercentage(float scrollPercentage) {
        this.percentage = RangesKt.coerceIn(scrollPercentage, 0.0f, 1.0f);
        invalidate();
    }
}
