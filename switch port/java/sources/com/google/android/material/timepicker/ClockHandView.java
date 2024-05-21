package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.math.MathUtils;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ClockHandView extends View {
    private static final int DEFAULT_ANIMATION_DURATION = 200;
    private boolean animatingOnTouchUp;
    private final int animationDuration;
    private final TimeInterpolator animationInterpolator;
    private final float centerDotRadius;
    private boolean changedDuringTouch;
    private int circleRadius;
    private int currentLevel;
    private double degRad;
    private float downX;
    private float downY;
    private boolean isInTapRegion;
    private boolean isMultiLevel;
    private final List<OnRotateListener> listeners;
    private OnActionUpListener onActionUpListener;
    private float originalDeg;
    private final Paint paint;
    private final ValueAnimator rotationAnimator;
    private final int scaledTouchSlop;
    private final RectF selectorBox;
    private final int selectorRadius;
    private final int selectorStrokeWidth;

    /* loaded from: classes2.dex */
    public interface OnActionUpListener {
        void onActionUp(float f, boolean z);
    }

    /* loaded from: classes2.dex */
    public interface OnRotateListener {
        void onRotate(float f, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentLevel() {
        return this.currentLevel;
    }

    public RectF getCurrentSelectorBox() {
        return this.selectorBox;
    }

    public float getHandRotation() {
        return this.originalDeg;
    }

    public int getSelectorRadius() {
        return this.selectorRadius;
    }

    public void setAnimateOnTouchUp(boolean z) {
        this.animatingOnTouchUp = z;
    }

    public void setOnActionUpListener(OnActionUpListener onActionUpListener) {
        this.onActionUpListener = onActionUpListener;
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rotationAnimator = new ValueAnimator();
        this.listeners = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.selectorBox = new RectF();
        this.currentLevel = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.animationDuration = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationLong2, 200);
        this.animationInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.selectorRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        this.selectorStrokeWidth = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.centerDotRadius = r7.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        setHandRotation(0.0f);
        this.scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.rotationAnimator.isRunning()) {
            return;
        }
        setHandRotation(getHandRotation());
    }

    public void setHandRotation(float f) {
        setHandRotation(f, false);
    }

    public void setHandRotation(float f, boolean z) {
        ValueAnimator valueAnimator = this.rotationAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            setHandRotationInternal(f, false);
            return;
        }
        Pair<Float, Float> valuesForAnimation = getValuesForAnimation(f);
        this.rotationAnimator.setFloatValues(((Float) valuesForAnimation.first).floatValue(), ((Float) valuesForAnimation.second).floatValue());
        this.rotationAnimator.setDuration(this.animationDuration);
        this.rotationAnimator.setInterpolator(this.animationInterpolator);
        this.rotationAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ClockHandView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.m5570xb17f7076(valueAnimator2);
            }
        });
        this.rotationAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.timepicker.ClockHandView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.end();
            }
        });
        this.rotationAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setHandRotation$0$com-google-android-material-timepicker-ClockHandView, reason: not valid java name */
    public /* synthetic */ void m5570xb17f7076(ValueAnimator valueAnimator) {
        setHandRotationInternal(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
    }

    private Pair<Float, Float> getValuesForAnimation(float f) {
        float handRotation = getHandRotation();
        if (Math.abs(handRotation - f) > 180.0f) {
            if (handRotation > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (handRotation < 180.0f && f > 180.0f) {
                handRotation += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(handRotation), Float.valueOf(f));
    }

    private void setHandRotationInternal(float f, boolean z) {
        float f2 = f % 360.0f;
        this.originalDeg = f2;
        this.degRad = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float leveledCircleRadius = getLeveledCircleRadius(this.currentLevel);
        float cos = width + (((float) Math.cos(this.degRad)) * leveledCircleRadius);
        float sin = height + (leveledCircleRadius * ((float) Math.sin(this.degRad)));
        RectF rectF = this.selectorBox;
        int i = this.selectorRadius;
        rectF.set(cos - i, sin - i, cos + i, sin + i);
        Iterator<OnRotateListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRotate(f2, z);
        }
        invalidate();
    }

    public void addOnRotateListener(OnRotateListener onRotateListener) {
        this.listeners.add(onRotateListener);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawSelector(canvas);
    }

    private void drawSelector(Canvas canvas) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f = width;
        float leveledCircleRadius = getLeveledCircleRadius(this.currentLevel);
        float cos = (((float) Math.cos(this.degRad)) * leveledCircleRadius) + f;
        float f2 = height;
        float sin = (leveledCircleRadius * ((float) Math.sin(this.degRad))) + f2;
        this.paint.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.selectorRadius, this.paint);
        double sin2 = Math.sin(this.degRad);
        double cos2 = Math.cos(this.degRad);
        this.paint.setStrokeWidth(this.selectorStrokeWidth);
        canvas.drawLine(f, f2, width + ((int) (cos2 * r7)), height + ((int) (r7 * sin2)), this.paint);
        canvas.drawCircle(f, f2, this.centerDotRadius, this.paint);
    }

    public void setCircleRadius(int i) {
        this.circleRadius = i;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        OnActionUpListener onActionUpListener;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked == 0) {
            this.downX = x;
            this.downY = y;
            this.isInTapRegion = true;
            this.changedDuringTouch = false;
            z = false;
            z2 = false;
            z3 = true;
        } else if (actionMasked == 1 || actionMasked == 2) {
            int i = (int) (x - this.downX);
            int i2 = (int) (y - this.downY);
            this.isInTapRegion = (i * i) + (i2 * i2) > this.scaledTouchSlop;
            boolean z4 = this.changedDuringTouch;
            z = actionMasked == 1;
            if (this.isMultiLevel) {
                adjustLevel(x, y);
            }
            z3 = false;
            z2 = z4;
        } else {
            z = false;
            z2 = false;
            z3 = false;
        }
        boolean handleTouchInput = handleTouchInput(x, y, z2, z3, z) | this.changedDuringTouch;
        this.changedDuringTouch = handleTouchInput;
        if (handleTouchInput && z && (onActionUpListener = this.onActionUpListener) != null) {
            onActionUpListener.onActionUp(getDegreesFromXY(x, y), this.isInTapRegion);
        }
        return true;
    }

    private void adjustLevel(float f, float f2) {
        this.currentLevel = MathUtils.dist((float) (getWidth() / 2), (float) (getHeight() / 2), f, f2) > ((float) getLeveledCircleRadius(2)) + ViewUtils.dpToPx(getContext(), 12) ? 1 : 2;
    }

    private boolean handleTouchInput(float f, float f2, boolean z, boolean z2, boolean z3) {
        float degreesFromXY = getDegreesFromXY(f, f2);
        boolean z4 = false;
        boolean z5 = getHandRotation() != degreesFromXY;
        if (z2 && z5) {
            return true;
        }
        if (!z5 && !z) {
            return false;
        }
        if (z3 && this.animatingOnTouchUp) {
            z4 = true;
        }
        setHandRotation(degreesFromXY, z4);
        return true;
    }

    private int getDegreesFromXY(float f, float f2) {
        int degrees = (int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)));
        int i = degrees + 90;
        return i < 0 ? degrees + 450 : i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentLevel(int i) {
        this.currentLevel = i;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMultiLevel(boolean z) {
        if (this.isMultiLevel && !z) {
            this.currentLevel = 1;
        }
        this.isMultiLevel = z;
        invalidate();
    }

    private int getLeveledCircleRadius(int i) {
        int i2 = this.circleRadius;
        return i == 2 ? Math.round(i2 * 0.66f) : i2;
    }
}
