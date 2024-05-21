package tech.rabbit.r1launcher.initstep.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;

/* compiled from: StepProgressIndicatorView.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\b\u0007\u0018\u0000 %2\u00020\u0001:\u0002%&B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0007J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0015J\u0012\u0010\u001e\u001a\u00020\u00192\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0017J\u000e\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0007J\u0014\u0010#\u001a\u00020\u00172\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140$R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;", "Landroid/view/View;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "linearGradientHeight", "", "maxLinearGradientHeight", "minLinearGradientHeight", "noSelectedStepPaint", "Landroid/graphics/Paint;", "selectedStepPaint", "stepNameTextPaint", "stepSpacingLinePaint", "steps", "", "Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;", "topOverlayPaint", "changeShadowHeight", "", "isMaxHeight", "", "getCurrentStepIndex", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "setStepIndex", "index", "setSteps", "", "Companion", "Step", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class StepProgressIndicatorView extends View {
    private float linearGradientHeight;
    private final float maxLinearGradientHeight;
    private final float minLinearGradientHeight;
    private final Paint noSelectedStepPaint;
    private final Paint selectedStepPaint;
    private final Paint stepNameTextPaint;
    private final Paint stepSpacingLinePaint;
    private final List<Step> steps;
    private final Paint topOverlayPaint;
    public static final int $stable = 8;
    private static final int STEP_COLOR = Color.parseColor("#FF4D00");
    private static final float topOverlayHeight = UiExtensionsKt.getDp(32.0f);
    private static final float stepSpacingLineWidth = UiExtensionsKt.getDp(3.0f);
    private static final float stepSpacingLineHeight = UiExtensionsKt.getDp(17.0f);
    private static final float stepNoSelectedCircleStrokeWidth = UiExtensionsKt.getDp(1.5f);
    private static final float stepSelectedCircleRadius = UiExtensionsKt.getDp(4.5f);
    private static final Rect stepNameTextBounds = new Rect();
    private static final float stepNameTextSize = UiExtensionsKt.getSp(20.0f);
    private static final float stepNameTextMarginStart = UiExtensionsKt.getDp(6.0f);

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StepProgressIndicatorView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StepProgressIndicatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return false;
    }

    public /* synthetic */ StepProgressIndicatorView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StepProgressIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        this.topOverlayPaint = paint;
        Paint paint2 = new Paint(1);
        int i2 = STEP_COLOR;
        paint2.setColor(i2);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setStrokeWidth(stepSpacingLineWidth);
        this.stepSpacingLinePaint = paint2;
        Paint paint3 = new Paint(1);
        paint3.setColor(i2);
        paint3.setStyle(Paint.Style.FILL);
        this.selectedStepPaint = paint3;
        Paint paint4 = new Paint(1);
        paint4.setColor(i2);
        paint4.setStyle(Paint.Style.STROKE);
        paint4.setStrokeWidth(stepNoSelectedCircleStrokeWidth);
        this.noSelectedStepPaint = paint4;
        Paint paint5 = new Paint(1);
        paint5.setColor(-1);
        paint5.setTextSize(stepNameTextSize);
        paint5.setTypeface(Typeface.create(ResourcesCompat.getFont(context, R.font.power_grotesk_regular), 300, false));
        this.stepNameTextPaint = paint5;
        ArrayList arrayList = new ArrayList();
        this.steps = arrayList;
        float f = topOverlayHeight;
        float f2 = 4.0f * f;
        this.maxLinearGradientHeight = f2;
        this.minLinearGradientHeight = f;
        this.linearGradientHeight = f2;
        if (isInEditMode()) {
            Step step = new Step("step1");
            step.setSelected(true);
            Unit unit = Unit.INSTANCE;
            arrayList.addAll(CollectionsKt.listOf((Object[]) new Step[]{step, new Step("step2"), new Step("step3")}));
        }
    }

    /* compiled from: StepProgressIndicatorView.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;", "", "name", "", "(Ljava/lang/String;)V", "isSelected", "", "()Z", "setSelected", "(Z)V", "getName", "()Ljava/lang/String;", "component1", "copy", "equals", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class Step {
        public static final int $stable = 8;
        private boolean isSelected;
        private final String name;

        public static /* synthetic */ Step copy$default(Step step, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = step.name;
            }
            return step.copy(str);
        }

        /* renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        public final Step copy(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new Step(name);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Step) && Intrinsics.areEqual(this.name, ((Step) other).name);
        }

        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return this.name.hashCode();
        }

        /* renamed from: isSelected, reason: from getter */
        public final boolean getIsSelected() {
            return this.isSelected;
        }

        public final void setSelected(boolean z) {
            this.isSelected = z;
        }

        public String toString() {
            return "Step(name=" + this.name + ')';
        }

        public Step(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        char c;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        this.topOverlayPaint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, this.linearGradientHeight, ViewCompat.MEASURED_STATE_MASK, 0, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), topOverlayHeight, this.topOverlayPaint);
        canvas.save();
        char c2 = 3;
        int dp = UiExtensionsKt.getDp(3);
        Iterator<Step> it = this.steps.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (it.next().getIsSelected()) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 > 0) {
            canvas.translate(0.0f, -(((i2 - 1) * stepSpacingLineHeight) + (i2 * stepSelectedCircleRadius * 1.5f)));
        } else {
            canvas.translate(0.0f, UiExtensionsKt.getDp(22.0f));
        }
        int i3 = 0;
        for (Step step : this.steps) {
            int i4 = i3 + 1;
            float f = stepSelectedCircleRadius;
            float f2 = dp + f;
            float f3 = i3;
            float f4 = stepSpacingLineHeight;
            float f5 = 0 + (f3 * f4) + (f3 * f * 2);
            canvas.drawCircle(f2, f5, f, step.getIsSelected() ? this.selectedStepPaint : this.noSelectedStepPaint);
            if (step.getIsSelected()) {
                float f6 = f2 + f + stepNameTextMarginStart;
                i = dp;
                this.stepNameTextPaint.getTextBounds(step.getName(), 0, step.getName().length(), stepNameTextBounds);
                float height = (r9.height() / 2.0f) + f5;
                c = 3;
                canvas.drawText(step.getName(), f6, height - 3, this.stepNameTextPaint);
            } else {
                i = dp;
                c = c2;
            }
            if (i3 < this.steps.size() - 1) {
                canvas.drawLine(f2, f5 + f, f2, f5 + f + f4, this.stepSpacingLinePaint);
            }
            c2 = c;
            i3 = i4;
            dp = i;
        }
        canvas.restore();
    }

    public final void setStepIndex(int index) {
        if (this.steps.isEmpty() || index < 0 || index > this.steps.size()) {
            throw new IllegalArgumentException("Set index: " + index + ", steps length: " + this.steps.size());
        }
        List<Step> list = this.steps;
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((Step) it.next()).setSelected(false);
        }
        list.get(index).setSelected(true);
        invalidate();
    }

    public final void setSteps(List<Step> steps) {
        Intrinsics.checkNotNullParameter(steps, "steps");
        if (steps.isEmpty()) {
            return;
        }
        this.steps.clear();
        List<Step> list = this.steps;
        steps.get(0).setSelected(true);
        list.addAll(steps);
        invalidate();
    }

    public final void changeShadowHeight(boolean isMaxHeight) {
        this.linearGradientHeight = isMaxHeight ? this.maxLinearGradientHeight : this.minLinearGradientHeight;
        invalidate();
    }

    public final int getCurrentStepIndex() {
        Iterator<Step> it = this.steps.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getIsSelected()) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
