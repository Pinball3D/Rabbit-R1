package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    private static final int ANIM_STATE_HIDING = 1;
    private static final int ANIM_STATE_NONE = 0;
    private static final int ANIM_STATE_SHOWING = 2;
    private static final int EXTEND = 3;
    private static final int EXTEND_STRATEGY_AUTO = 0;
    private static final int EXTEND_STRATEGY_MATCH_PARENT = 2;
    private static final int EXTEND_STRATEGY_WRAP_CONTENT = 1;
    private static final int HIDE = 1;
    private static final int SHOW = 0;
    private static final int SHRINK = 2;
    private int animState;
    private boolean animateShowBeforeLayout;
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> behavior;
    private final AnimatorTracker changeVisibilityTracker;
    private final int collapsedSize;
    private final MotionStrategy extendStrategy;
    private final int extendStrategyType;
    private int extendedPaddingEnd;
    private int extendedPaddingStart;
    private final MotionStrategy hideStrategy;
    private boolean isExtended;
    private boolean isTransforming;
    private int originalHeight;
    protected ColorStateList originalTextCsl;
    private int originalWidth;
    private final MotionStrategy showStrategy;
    private final MotionStrategy shrinkStrategy;
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    static final Property<View, Float> WIDTH = new Property<View, Float>(Float.class, ViewHierarchyNode.JsonKeys.WIDTH) { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.6
        @Override // android.util.Property
        public void set(View view, Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }
    };
    static final Property<View, Float> HEIGHT = new Property<View, Float>(Float.class, ViewHierarchyNode.JsonKeys.HEIGHT) { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.7
        @Override // android.util.Property
        public void set(View view, Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }
    };
    static final Property<View, Float> PADDING_START = new Property<View, Float>(Float.class, "paddingStart") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.8
        @Override // android.util.Property
        public void set(View view, Float f) {
            ViewCompat.setPaddingRelative(view, f.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }
    };
    static final Property<View, Float> PADDING_END = new Property<View, Float>(Float.class, "paddingEnd") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.9
        @Override // android.util.Property
        public void set(View view, Float f) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }
    };

    /* loaded from: classes2.dex */
    public static abstract class OnChangedCallback {
        public void onExtended(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onHidden(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onShown(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onShrunken(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Size {
        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.behavior;
    }

    public final boolean isExtended() {
        return this.isExtended;
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.animateShowBeforeLayout = z;
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ExtendedFloatingActionButton(android.content.Context r17, android.util.AttributeSet r18, int r19) {
        /*
            r16 = this;
            r0 = r16
            r7 = r18
            r8 = r19
            int r9 = com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.DEF_STYLE_RES
            r1 = r17
            android.content.Context r1 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r1, r7, r8, r9)
            r0.<init>(r1, r7, r8)
            r10 = 0
            r0.animState = r10
            com.google.android.material.floatingactionbutton.AnimatorTracker r1 = new com.google.android.material.floatingactionbutton.AnimatorTracker
            r1.<init>()
            r0.changeVisibilityTracker = r1
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ShowStrategy r11 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ShowStrategy
            r11.<init>(r1)
            r0.showStrategy = r11
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$HideStrategy r12 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$HideStrategy
            r12.<init>(r1)
            r0.hideStrategy = r12
            r13 = 1
            r0.isExtended = r13
            r0.isTransforming = r10
            r0.animateShowBeforeLayout = r10
            android.content.Context r14 = r16.getContext()
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior r1 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior
            r1.<init>(r14, r7)
            r0.behavior = r1
            int[] r3 = com.google.android.material.R.styleable.ExtendedFloatingActionButton
            int[] r6 = new int[r10]
            r1 = r14
            r2 = r18
            r4 = r19
            r5 = r9
            android.content.res.TypedArray r1 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r1, r2, r3, r4, r5, r6)
            int r2 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_showMotionSpec
            com.google.android.material.animation.MotionSpec r2 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r2)
            int r3 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_hideMotionSpec
            com.google.android.material.animation.MotionSpec r3 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r3)
            int r4 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_extendMotionSpec
            com.google.android.material.animation.MotionSpec r4 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r4)
            int r5 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_shrinkMotionSpec
            com.google.android.material.animation.MotionSpec r5 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r5)
            int r6 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_collapsedSize
            r15 = -1
            int r6 = r1.getDimensionPixelSize(r6, r15)
            r0.collapsedSize = r6
            int r6 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_extendStrategy
            int r6 = r1.getInt(r6, r13)
            r0.extendStrategyType = r6
            int r15 = androidx.core.view.ViewCompat.getPaddingStart(r16)
            r0.extendedPaddingStart = r15
            int r15 = androidx.core.view.ViewCompat.getPaddingEnd(r16)
            r0.extendedPaddingEnd = r15
            com.google.android.material.floatingactionbutton.AnimatorTracker r15 = new com.google.android.material.floatingactionbutton.AnimatorTracker
            r15.<init>()
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ChangeSizeStrategy r10 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ChangeSizeStrategy
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$Size r6 = r0.getSizeFromExtendStrategyType(r6)
            r10.<init>(r15, r6, r13)
            r0.extendStrategy = r10
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ChangeSizeStrategy r6 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ChangeSizeStrategy
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$1 r13 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$1
            r13.<init>()
            r7 = 0
            r6.<init>(r15, r13, r7)
            r0.shrinkStrategy = r6
            r11.setMotionSpec(r2)
            r12.setMotionSpec(r3)
            r10.setMotionSpec(r4)
            r6.setMotionSpec(r5)
            r1.recycle()
            com.google.android.material.shape.CornerSize r1 = com.google.android.material.shape.ShapeAppearanceModel.PILL
            r2 = r18
            com.google.android.material.shape.ShapeAppearanceModel$Builder r1 = com.google.android.material.shape.ShapeAppearanceModel.builder(r14, r2, r8, r9, r1)
            com.google.android.material.shape.ShapeAppearanceModel r1 = r1.build()
            r0.setShapeAppearanceModel(r1)
            r16.saveOriginalTextCsl()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private Size getSizeFromExtendStrategyType(int i) {
        final Size size = new Size() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.2
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getWidth() {
                return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.extendedPaddingStart + ExtendedFloatingActionButton.this.extendedPaddingEnd;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getHeight() {
                return ExtendedFloatingActionButton.this.getMeasuredHeight();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getPaddingStart() {
                return ExtendedFloatingActionButton.this.extendedPaddingStart;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getPaddingEnd() {
                return ExtendedFloatingActionButton.this.extendedPaddingEnd;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public ViewGroup.LayoutParams getLayoutParams() {
                return new ViewGroup.LayoutParams(-2, -2);
            }
        };
        final Size size2 = new Size() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.3
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getWidth() {
                ViewGroup.MarginLayoutParams marginLayoutParams;
                if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                    return size.getWidth();
                }
                View view = (View) ExtendedFloatingActionButton.this.getParent();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams != null && layoutParams.width == -2) {
                    return size.getWidth();
                }
                return (view.getWidth() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)) - (view.getPaddingLeft() + view.getPaddingRight());
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getHeight() {
                ViewGroup.MarginLayoutParams marginLayoutParams;
                if (ExtendedFloatingActionButton.this.originalHeight != -1) {
                    if (ExtendedFloatingActionButton.this.originalHeight != 0 && ExtendedFloatingActionButton.this.originalHeight != -2) {
                        return ExtendedFloatingActionButton.this.originalHeight;
                    }
                    return size.getHeight();
                }
                if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                    return size.getHeight();
                }
                View view = (View) ExtendedFloatingActionButton.this.getParent();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams != null && layoutParams.height == -2) {
                    return size.getHeight();
                }
                return (view.getHeight() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.topMargin + marginLayoutParams.bottomMargin)) - (view.getPaddingTop() + view.getPaddingBottom());
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getPaddingStart() {
                return ExtendedFloatingActionButton.this.extendedPaddingStart;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getPaddingEnd() {
                return ExtendedFloatingActionButton.this.extendedPaddingEnd;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public ViewGroup.LayoutParams getLayoutParams() {
                return new ViewGroup.LayoutParams(-1, ExtendedFloatingActionButton.this.originalHeight == 0 ? -2 : ExtendedFloatingActionButton.this.originalHeight);
            }
        };
        return i != 1 ? i != 2 ? new Size() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.4
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getWidth() {
                if (ExtendedFloatingActionButton.this.originalWidth != -1) {
                    if (ExtendedFloatingActionButton.this.originalWidth != 0 && ExtendedFloatingActionButton.this.originalWidth != -2) {
                        return ExtendedFloatingActionButton.this.originalWidth;
                    }
                    return size.getWidth();
                }
                return size2.getWidth();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getHeight() {
                if (ExtendedFloatingActionButton.this.originalHeight != -1) {
                    if (ExtendedFloatingActionButton.this.originalHeight != 0 && ExtendedFloatingActionButton.this.originalHeight != -2) {
                        return ExtendedFloatingActionButton.this.originalHeight;
                    }
                    return size.getHeight();
                }
                return size2.getHeight();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getPaddingStart() {
                return ExtendedFloatingActionButton.this.extendedPaddingStart;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public int getPaddingEnd() {
                return ExtendedFloatingActionButton.this.extendedPaddingEnd;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public ViewGroup.LayoutParams getLayoutParams() {
                return new ViewGroup.LayoutParams(ExtendedFloatingActionButton.this.originalWidth == 0 ? -2 : ExtendedFloatingActionButton.this.originalWidth, ExtendedFloatingActionButton.this.originalHeight != 0 ? ExtendedFloatingActionButton.this.originalHeight : -2);
            }
        } : size2 : size;
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        saveOriginalTextCsl();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        saveOriginalTextCsl();
    }

    private void saveOriginalTextCsl() {
        this.originalTextCsl = getTextColors();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void silentlyUpdateTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.isExtended && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.isExtended = false;
            this.shrinkStrategy.performNow();
        }
    }

    public void setExtended(boolean z) {
        if (this.isExtended == z) {
            return;
        }
        MotionStrategy motionStrategy = z ? this.extendStrategy : this.shrinkStrategy;
        if (motionStrategy.shouldCancel()) {
            return;
        }
        motionStrategy.performNow();
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.isExtended || this.isTransforming) {
            return;
        }
        this.extendedPaddingStart = i;
        this.extendedPaddingEnd = i3;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.isExtended || this.isTransforming) {
            return;
        }
        this.extendedPaddingStart = ViewCompat.getPaddingStart(this);
        this.extendedPaddingEnd = ViewCompat.getPaddingEnd(this);
    }

    public void addOnShowAnimationListener(Animator.AnimatorListener animatorListener) {
        this.showStrategy.addAnimationListener(animatorListener);
    }

    public void removeOnShowAnimationListener(Animator.AnimatorListener animatorListener) {
        this.showStrategy.removeAnimationListener(animatorListener);
    }

    public void addOnHideAnimationListener(Animator.AnimatorListener animatorListener) {
        this.hideStrategy.addAnimationListener(animatorListener);
    }

    public void removeOnHideAnimationListener(Animator.AnimatorListener animatorListener) {
        this.hideStrategy.removeAnimationListener(animatorListener);
    }

    public void addOnShrinkAnimationListener(Animator.AnimatorListener animatorListener) {
        this.shrinkStrategy.addAnimationListener(animatorListener);
    }

    public void removeOnShrinkAnimationListener(Animator.AnimatorListener animatorListener) {
        this.shrinkStrategy.removeAnimationListener(animatorListener);
    }

    public void addOnExtendAnimationListener(Animator.AnimatorListener animatorListener) {
        this.extendStrategy.addAnimationListener(animatorListener);
    }

    public void removeOnExtendAnimationListener(Animator.AnimatorListener animatorListener) {
        this.extendStrategy.removeAnimationListener(animatorListener);
    }

    public void hide() {
        performMotion(1, null);
    }

    public void hide(OnChangedCallback onChangedCallback) {
        performMotion(1, onChangedCallback);
    }

    public void show() {
        performMotion(0, null);
    }

    public void show(OnChangedCallback onChangedCallback) {
        performMotion(0, onChangedCallback);
    }

    public void extend() {
        performMotion(3, null);
    }

    public void extend(OnChangedCallback onChangedCallback) {
        performMotion(3, onChangedCallback);
    }

    public void shrink() {
        performMotion(2, null);
    }

    public void shrink(OnChangedCallback onChangedCallback) {
        performMotion(2, onChangedCallback);
    }

    public MotionSpec getShowMotionSpec() {
        return this.showStrategy.getMotionSpec();
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        this.showStrategy.setMotionSpec(motionSpec);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public MotionSpec getHideMotionSpec() {
        return this.hideStrategy.getMotionSpec();
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        this.hideStrategy.setMotionSpec(motionSpec);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public MotionSpec getExtendMotionSpec() {
        return this.extendStrategy.getMotionSpec();
    }

    public void setExtendMotionSpec(MotionSpec motionSpec) {
        this.extendStrategy.setMotionSpec(motionSpec);
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public MotionSpec getShrinkMotionSpec() {
        return this.shrinkStrategy.getMotionSpec();
    }

    public void setShrinkMotionSpec(MotionSpec motionSpec) {
        this.shrinkStrategy.setMotionSpec(motionSpec);
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performMotion(int i, final OnChangedCallback onChangedCallback) {
        final MotionStrategy motionStrategy;
        if (i == 0) {
            motionStrategy = this.showStrategy;
        } else if (i == 1) {
            motionStrategy = this.hideStrategy;
        } else if (i == 2) {
            motionStrategy = this.shrinkStrategy;
        } else {
            if (i != 3) {
                throw new IllegalStateException("Unknown strategy type: " + i);
            }
            motionStrategy = this.extendStrategy;
        }
        if (motionStrategy.shouldCancel()) {
            return;
        }
        if (!shouldAnimateVisibilityChange()) {
            motionStrategy.performNow();
            motionStrategy.onChange(onChangedCallback);
            return;
        }
        if (i == 2) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                this.originalWidth = layoutParams.width;
                this.originalHeight = layoutParams.height;
            } else {
                this.originalWidth = getWidth();
                this.originalHeight = getHeight();
            }
        }
        measure(0, 0);
        AnimatorSet createAnimator = motionStrategy.createAnimator();
        createAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.5
            private boolean cancelled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                motionStrategy.onAnimationStart(animator);
                this.cancelled = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.cancelled = true;
                motionStrategy.onAnimationCancel();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                motionStrategy.onAnimationEnd();
                if (this.cancelled) {
                    return;
                }
                motionStrategy.onChange(onChangedCallback);
            }
        });
        Iterator<Animator.AnimatorListener> it = motionStrategy.getListeners().iterator();
        while (it.hasNext()) {
            createAnimator.addListener(it.next());
        }
        createAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOrWillBeShown() {
        return getVisibility() != 0 ? this.animState == 2 : this.animState != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOrWillBeHidden() {
        return getVisibility() == 0 ? this.animState == 1 : this.animState != 2;
    }

    private boolean shouldAnimateVisibilityChange() {
        return (ViewCompat.isLaidOut(this) || (!isOrWillBeShown() && this.animateShowBeforeLayout)) && !isInEditMode();
    }

    int getCollapsedSize() {
        int i = this.collapsedSize;
        return i < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    /* loaded from: classes2.dex */
    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {
        private static final boolean AUTO_HIDE_DEFAULT = false;
        private static final boolean AUTO_SHRINK_DEFAULT = true;
        private boolean autoHideEnabled;
        private boolean autoShrinkEnabled;
        private OnChangedCallback internalAutoHideCallback;
        private OnChangedCallback internalAutoShrinkCallback;
        private Rect tmpRect;

        public boolean isAutoHideEnabled() {
            return this.autoHideEnabled;
        }

        public boolean isAutoShrinkEnabled() {
            return this.autoShrinkEnabled;
        }

        public void setAutoHideEnabled(boolean z) {
            this.autoHideEnabled = z;
        }

        public void setAutoShrinkEnabled(boolean z) {
            this.autoShrinkEnabled = z;
        }

        void setInternalAutoHideCallback(OnChangedCallback onChangedCallback) {
            this.internalAutoHideCallback = onChangedCallback;
        }

        void setInternalAutoShrinkCallback(OnChangedCallback onChangedCallback) {
            this.internalAutoShrinkCallback = onChangedCallback;
        }

        public ExtendedFloatingActionButtonBehavior() {
            this.autoHideEnabled = false;
            this.autoShrinkEnabled = true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.autoHideEnabled = obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.autoShrinkEnabled = obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, (CoordinatorLayout) extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                updateFabVisibilityForAppBarLayout(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!isBottomSheet(view)) {
                return false;
            }
            updateFabVisibilityForBottomSheet(view, extendedFloatingActionButton);
            return false;
        }

        private static boolean isBottomSheet(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean shouldUpdateVisibility(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.autoHideEnabled || this.autoShrinkEnabled) && ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).getAnchorId() == view.getId();
        }

        private boolean updateFabVisibilityForAppBarLayout(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!shouldUpdateVisibility(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.tmpRect == null) {
                this.tmpRect = new Rect();
            }
            Rect rect = this.tmpRect;
            DescendantOffsetUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                shrinkOrHide(extendedFloatingActionButton);
                return true;
            }
            extendOrShow(extendedFloatingActionButton);
            return true;
        }

        private boolean updateFabVisibilityForBottomSheet(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!shouldUpdateVisibility(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).topMargin) {
                shrinkOrHide(extendedFloatingActionButton);
                return true;
            }
            extendOrShow(extendedFloatingActionButton);
            return true;
        }

        protected void shrinkOrHide(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.autoShrinkEnabled;
            extendedFloatingActionButton.performMotion(z ? 2 : 1, z ? this.internalAutoShrinkCallback : this.internalAutoHideCallback);
        }

        protected void extendOrShow(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.autoShrinkEnabled;
            extendedFloatingActionButton.performMotion(z ? 3 : 0, z ? this.internalAutoShrinkCallback : this.internalAutoHideCallback);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if (view instanceof AppBarLayout) {
                    if (updateFabVisibilityForAppBarLayout(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (isBottomSheet(view) && updateFabVisibilityForBottomSheet(view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i);
            return true;
        }
    }

    /* loaded from: classes2.dex */
    class ChangeSizeStrategy extends BaseMotionStrategy {
        private final boolean extending;
        private final Size size;

        ChangeSizeStrategy(AnimatorTracker animatorTracker, Size size, boolean z) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
            this.size = size;
            this.extending = z;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void performNow() {
            ExtendedFloatingActionButton.this.isExtended = this.extending;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!this.extending) {
                ExtendedFloatingActionButton.this.originalWidth = layoutParams.width;
                ExtendedFloatingActionButton.this.originalHeight = layoutParams.height;
            }
            layoutParams.width = this.size.getLayoutParams().width;
            layoutParams.height = this.size.getLayoutParams().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.size.getPaddingStart(), ExtendedFloatingActionButton.this.getPaddingTop(), this.size.getPaddingEnd(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void onChange(OnChangedCallback onChangedCallback) {
            if (onChangedCallback == null) {
                return;
            }
            if (this.extending) {
                onChangedCallback.onExtended(ExtendedFloatingActionButton.this);
            } else {
                onChangedCallback.onShrunken(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public int getDefaultMotionSpecResource() {
            if (this.extending) {
                return R.animator.mtrl_extended_fab_change_size_expand_motion_spec;
            }
            return R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public AnimatorSet createAnimator() {
            MotionSpec currentMotionSpec = getCurrentMotionSpec();
            if (currentMotionSpec.hasPropertyValues(ViewHierarchyNode.JsonKeys.WIDTH)) {
                PropertyValuesHolder[] propertyValues = currentMotionSpec.getPropertyValues(ViewHierarchyNode.JsonKeys.WIDTH);
                propertyValues[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.size.getWidth());
                currentMotionSpec.setPropertyValues(ViewHierarchyNode.JsonKeys.WIDTH, propertyValues);
            }
            if (currentMotionSpec.hasPropertyValues(ViewHierarchyNode.JsonKeys.HEIGHT)) {
                PropertyValuesHolder[] propertyValues2 = currentMotionSpec.getPropertyValues(ViewHierarchyNode.JsonKeys.HEIGHT);
                propertyValues2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.size.getHeight());
                currentMotionSpec.setPropertyValues(ViewHierarchyNode.JsonKeys.HEIGHT, propertyValues2);
            }
            if (currentMotionSpec.hasPropertyValues("paddingStart")) {
                PropertyValuesHolder[] propertyValues3 = currentMotionSpec.getPropertyValues("paddingStart");
                propertyValues3[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.size.getPaddingStart());
                currentMotionSpec.setPropertyValues("paddingStart", propertyValues3);
            }
            if (currentMotionSpec.hasPropertyValues("paddingEnd")) {
                PropertyValuesHolder[] propertyValues4 = currentMotionSpec.getPropertyValues("paddingEnd");
                propertyValues4[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.size.getPaddingEnd());
                currentMotionSpec.setPropertyValues("paddingEnd", propertyValues4);
            }
            if (currentMotionSpec.hasPropertyValues("labelOpacity")) {
                PropertyValuesHolder[] propertyValues5 = currentMotionSpec.getPropertyValues("labelOpacity");
                boolean z = this.extending;
                propertyValues5[0].setFloatValues(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                currentMotionSpec.setPropertyValues("labelOpacity", propertyValues5);
            }
            return super.createAnimator(currentMotionSpec);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.isExtended = this.extending;
            ExtendedFloatingActionButton.this.isTransforming = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.isTransforming = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.size.getLayoutParams().width;
            layoutParams.height = this.size.getLayoutParams().height;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public boolean shouldCancel() {
            return this.extending == ExtendedFloatingActionButton.this.isExtended || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }
    }

    /* loaded from: classes2.dex */
    class ShowStrategy extends BaseMotionStrategy {
        public ShowStrategy(AnimatorTracker animatorTracker) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void performNow() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void onChange(OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.onShown(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.animState = 2;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.animState = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public boolean shouldCancel() {
            return ExtendedFloatingActionButton.this.isOrWillBeShown();
        }
    }

    /* loaded from: classes2.dex */
    class HideStrategy extends BaseMotionStrategy {
        private boolean isCancelled;

        public HideStrategy(AnimatorTracker animatorTracker) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void performNow() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void onChange(OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.onHidden(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public boolean shouldCancel() {
            return ExtendedFloatingActionButton.this.isOrWillBeHidden();
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.isCancelled = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.animState = 1;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationCancel() {
            super.onAnimationCancel();
            this.isCancelled = true;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.animState = 0;
            if (this.isCancelled) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }
    }
}
