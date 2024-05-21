package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class IndicatorViewController {
    private static final int CAPTION_STATE_ERROR = 1;
    private static final int CAPTION_STATE_HELPER_TEXT = 2;
    private static final int CAPTION_STATE_NONE = 0;
    static final int COUNTER_INDEX = 2;
    private static final int DEFAULT_CAPTION_FADE_ANIMATION_DURATION = 167;
    private static final int DEFAULT_CAPTION_TRANSLATION_Y_ANIMATION_DURATION = 217;
    static final int ERROR_INDEX = 0;
    static final int HELPER_INDEX = 1;
    private Animator captionAnimator;
    private FrameLayout captionArea;
    private int captionDisplayed;
    private final int captionFadeInAnimationDuration;
    private final TimeInterpolator captionFadeInAnimationInterpolator;
    private final int captionFadeOutAnimationDuration;
    private final TimeInterpolator captionFadeOutAnimationInterpolator;
    private int captionToShow;
    private final int captionTranslationYAnimationDuration;
    private final TimeInterpolator captionTranslationYAnimationInterpolator;
    private final float captionTranslationYPx;
    private final Context context;
    private boolean errorEnabled;
    private CharSequence errorText;
    private int errorTextAppearance;
    private TextView errorView;
    private int errorViewAccessibilityLiveRegion;
    private CharSequence errorViewContentDescription;
    private ColorStateList errorViewTextColor;
    private CharSequence helperText;
    private boolean helperTextEnabled;
    private int helperTextTextAppearance;
    private TextView helperTextView;
    private ColorStateList helperTextViewTextColor;
    private LinearLayout indicatorArea;
    private int indicatorsAdded;
    private final TextInputLayout textInputView;
    private Typeface typeface;

    private TextView getCaptionViewFromDisplayState(int i) {
        if (i == 1) {
            return this.errorView;
        }
        if (i != 2) {
            return null;
        }
        return this.helperTextView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getErrorAccessibilityLiveRegion() {
        return this.errorViewAccessibilityLiveRegion;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getErrorContentDescription() {
        return this.errorViewContentDescription;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getErrorText() {
        return this.errorText;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getHelperText() {
        return this.helperText;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getHelperTextView() {
        return this.helperTextView;
    }

    boolean isCaptionView(int i) {
        return i == 0 || i == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isErrorEnabled() {
        return this.errorEnabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHelperTextEnabled() {
        return this.helperTextEnabled;
    }

    public IndicatorViewController(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.context = context;
        this.textInputView = textInputLayout;
        this.captionTranslationYPx = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.captionTranslationYAnimationDuration = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationShort4, DEFAULT_CAPTION_TRANSLATION_Y_ANIMATION_DURATION);
        this.captionFadeInAnimationDuration = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationMedium4, DEFAULT_CAPTION_FADE_ANIMATION_DURATION);
        this.captionFadeOutAnimationDuration = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationShort4, DEFAULT_CAPTION_FADE_ANIMATION_DURATION);
        this.captionTranslationYAnimationInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        this.captionFadeInAnimationInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
        this.captionFadeOutAnimationInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showHelper(CharSequence charSequence) {
        cancelCaptionAnimator();
        this.helperText = charSequence;
        this.helperTextView.setText(charSequence);
        int i = this.captionDisplayed;
        if (i != 2) {
            this.captionToShow = 2;
        }
        updateCaptionViewsVisibility(i, this.captionToShow, shouldAnimateCaptionView(this.helperTextView, charSequence));
    }

    void hideHelperText() {
        cancelCaptionAnimator();
        int i = this.captionDisplayed;
        if (i == 2) {
            this.captionToShow = 0;
        }
        updateCaptionViewsVisibility(i, this.captionToShow, shouldAnimateCaptionView(this.helperTextView, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showError(CharSequence charSequence) {
        cancelCaptionAnimator();
        this.errorText = charSequence;
        this.errorView.setText(charSequence);
        int i = this.captionDisplayed;
        if (i != 1) {
            this.captionToShow = 1;
        }
        updateCaptionViewsVisibility(i, this.captionToShow, shouldAnimateCaptionView(this.errorView, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideError() {
        this.errorText = null;
        cancelCaptionAnimator();
        if (this.captionDisplayed == 1) {
            if (!this.helperTextEnabled || TextUtils.isEmpty(this.helperText)) {
                this.captionToShow = 0;
            } else {
                this.captionToShow = 2;
            }
        }
        updateCaptionViewsVisibility(this.captionDisplayed, this.captionToShow, shouldAnimateCaptionView(this.errorView, ""));
    }

    private boolean shouldAnimateCaptionView(TextView textView, CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.textInputView) && this.textInputView.isEnabled() && !(this.captionToShow == this.captionDisplayed && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void updateCaptionViewsVisibility(final int i, final int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.captionAnimator = animatorSet;
            ArrayList arrayList = new ArrayList();
            createCaptionAnimators(arrayList, this.helperTextEnabled, this.helperTextView, 2, i, i2);
            createCaptionAnimators(arrayList, this.errorEnabled, this.errorView, 1, i, i2);
            AnimatorSetCompat.playTogether(animatorSet, arrayList);
            final TextView captionViewFromDisplayState = getCaptionViewFromDisplayState(i);
            final TextView captionViewFromDisplayState2 = getCaptionViewFromDisplayState(i2);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.IndicatorViewController.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    IndicatorViewController.this.captionDisplayed = i2;
                    IndicatorViewController.this.captionAnimator = null;
                    TextView textView = captionViewFromDisplayState;
                    if (textView != null) {
                        textView.setVisibility(4);
                        if (i == 1 && IndicatorViewController.this.errorView != null) {
                            IndicatorViewController.this.errorView.setText((CharSequence) null);
                        }
                    }
                    TextView textView2 = captionViewFromDisplayState2;
                    if (textView2 != null) {
                        textView2.setTranslationY(0.0f);
                        captionViewFromDisplayState2.setAlpha(1.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    TextView textView = captionViewFromDisplayState2;
                    if (textView != null) {
                        textView.setVisibility(0);
                        captionViewFromDisplayState2.setAlpha(0.0f);
                    }
                }
            });
            animatorSet.start();
        } else {
            setCaptionViewVisibilities(i, i2);
        }
        this.textInputView.updateEditTextBackground();
        this.textInputView.updateLabelState(z);
        this.textInputView.updateTextInputBoxState();
    }

    private void setCaptionViewVisibilities(int i, int i2) {
        TextView captionViewFromDisplayState;
        TextView captionViewFromDisplayState2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (captionViewFromDisplayState2 = getCaptionViewFromDisplayState(i2)) != null) {
            captionViewFromDisplayState2.setVisibility(0);
            captionViewFromDisplayState2.setAlpha(1.0f);
        }
        if (i != 0 && (captionViewFromDisplayState = getCaptionViewFromDisplayState(i)) != null) {
            captionViewFromDisplayState.setVisibility(4);
            if (i == 1) {
                captionViewFromDisplayState.setText((CharSequence) null);
            }
        }
        this.captionDisplayed = i2;
    }

    private void createCaptionAnimators(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            ObjectAnimator createCaptionOpacityAnimator = createCaptionOpacityAnimator(textView, i3 == i);
            if (i == i3 && i2 != 0) {
                createCaptionOpacityAnimator.setStartDelay(this.captionFadeOutAnimationDuration);
            }
            list.add(createCaptionOpacityAnimator);
            if (i3 != i || i2 == 0) {
                return;
            }
            ObjectAnimator createCaptionTranslationYAnimator = createCaptionTranslationYAnimator(textView);
            createCaptionTranslationYAnimator.setStartDelay(this.captionFadeOutAnimationDuration);
            list.add(createCaptionTranslationYAnimator);
        }
    }

    private ObjectAnimator createCaptionOpacityAnimator(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(z ? this.captionFadeInAnimationDuration : this.captionFadeOutAnimationDuration);
        ofFloat.setInterpolator(z ? this.captionFadeInAnimationInterpolator : this.captionFadeOutAnimationInterpolator);
        return ofFloat;
    }

    private ObjectAnimator createCaptionTranslationYAnimator(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.captionTranslationYPx, 0.0f);
        ofFloat.setDuration(this.captionTranslationYAnimationDuration);
        ofFloat.setInterpolator(this.captionTranslationYAnimationInterpolator);
        return ofFloat;
    }

    void cancelCaptionAnimator() {
        Animator animator = this.captionAnimator;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void adjustIndicatorPadding() {
        if (canAdjustIndicatorPadding()) {
            EditText editText = this.textInputView.getEditText();
            boolean isFontScaleAtLeast1_3 = MaterialResources.isFontScaleAtLeast1_3(this.context);
            ViewCompat.setPaddingRelative(this.indicatorArea, getIndicatorPadding(isFontScaleAtLeast1_3, R.dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingStart(editText)), getIndicatorPadding(isFontScaleAtLeast1_3, R.dimen.material_helper_text_font_1_3_padding_top, this.context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top)), getIndicatorPadding(isFontScaleAtLeast1_3, R.dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    private boolean canAdjustIndicatorPadding() {
        return (this.indicatorArea == null || this.textInputView.getEditText() == null) ? false : true;
    }

    private int getIndicatorPadding(boolean z, int i, int i2) {
        return z ? this.context.getResources().getDimensionPixelSize(i) : i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addIndicator(TextView textView, int i) {
        if (this.indicatorArea == null && this.captionArea == null) {
            LinearLayout linearLayout = new LinearLayout(this.context);
            this.indicatorArea = linearLayout;
            linearLayout.setOrientation(0);
            this.textInputView.addView(this.indicatorArea, -1, -2);
            this.captionArea = new FrameLayout(this.context);
            this.indicatorArea.addView(this.captionArea, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.textInputView.getEditText() != null) {
                adjustIndicatorPadding();
            }
        }
        if (isCaptionView(i)) {
            this.captionArea.setVisibility(0);
            this.captionArea.addView(textView);
        } else {
            this.indicatorArea.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.indicatorArea.setVisibility(0);
        this.indicatorsAdded++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeIndicator(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.indicatorArea == null) {
            return;
        }
        if (isCaptionView(i) && (frameLayout = this.captionArea) != null) {
            frameLayout.removeView(textView);
        } else {
            this.indicatorArea.removeView(textView);
        }
        int i2 = this.indicatorsAdded - 1;
        this.indicatorsAdded = i2;
        setViewGroupGoneIfEmpty(this.indicatorArea, i2);
    }

    private void setViewGroupGoneIfEmpty(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorEnabled(boolean z) {
        if (this.errorEnabled == z) {
            return;
        }
        cancelCaptionAnimator();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.context);
            this.errorView = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            this.errorView.setTextAlignment(5);
            Typeface typeface = this.typeface;
            if (typeface != null) {
                this.errorView.setTypeface(typeface);
            }
            setErrorTextAppearance(this.errorTextAppearance);
            setErrorViewTextColor(this.errorViewTextColor);
            setErrorContentDescription(this.errorViewContentDescription);
            setErrorAccessibilityLiveRegion(this.errorViewAccessibilityLiveRegion);
            this.errorView.setVisibility(4);
            addIndicator(this.errorView, 0);
        } else {
            hideError();
            removeIndicator(this.errorView, 0);
            this.errorView = null;
            this.textInputView.updateEditTextBackground();
            this.textInputView.updateTextInputBoxState();
        }
        this.errorEnabled = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHelperTextEnabled(boolean z) {
        if (this.helperTextEnabled == z) {
            return;
        }
        cancelCaptionAnimator();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.context);
            this.helperTextView = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            this.helperTextView.setTextAlignment(5);
            Typeface typeface = this.typeface;
            if (typeface != null) {
                this.helperTextView.setTypeface(typeface);
            }
            this.helperTextView.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.helperTextView, 1);
            setHelperTextAppearance(this.helperTextTextAppearance);
            setHelperTextViewTextColor(this.helperTextViewTextColor);
            addIndicator(this.helperTextView, 1);
            this.helperTextView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.google.android.material.textfield.IndicatorViewController.2
                @Override // android.view.View.AccessibilityDelegate
                public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    EditText editText = IndicatorViewController.this.textInputView.getEditText();
                    if (editText != null) {
                        accessibilityNodeInfo.setLabeledBy(editText);
                    }
                }
            });
        } else {
            hideHelperText();
            removeIndicator(this.helperTextView, 1);
            this.helperTextView = null;
            this.textInputView.updateEditTextBackground();
            this.textInputView.updateTextInputBoxState();
        }
        this.helperTextEnabled = z;
    }

    boolean errorIsDisplayed() {
        return isCaptionStateError(this.captionDisplayed);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean errorShouldBeShown() {
        return isCaptionStateError(this.captionToShow);
    }

    private boolean isCaptionStateError(int i) {
        return (i != 1 || this.errorView == null || TextUtils.isEmpty(this.errorText)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean helperTextIsDisplayed() {
        return isCaptionStateHelperText(this.captionDisplayed);
    }

    boolean helperTextShouldBeShown() {
        return isCaptionStateHelperText(this.captionToShow);
    }

    private boolean isCaptionStateHelperText(int i) {
        return (i != 2 || this.helperTextView == null || TextUtils.isEmpty(this.helperText)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTypefaces(Typeface typeface) {
        if (typeface != this.typeface) {
            this.typeface = typeface;
            setTextViewTypeface(this.errorView, typeface);
            setTextViewTypeface(this.helperTextView, typeface);
        }
    }

    private void setTextViewTypeface(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getErrorViewCurrentTextColor() {
        TextView textView = this.errorView;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getErrorViewTextColors() {
        TextView textView = this.errorView;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorViewTextColor(ColorStateList colorStateList) {
        this.errorViewTextColor = colorStateList;
        TextView textView = this.errorView;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorTextAppearance(int i) {
        this.errorTextAppearance = i;
        TextView textView = this.errorView;
        if (textView != null) {
            this.textInputView.setTextAppearanceCompatWithErrorFallback(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorContentDescription(CharSequence charSequence) {
        this.errorViewContentDescription = charSequence;
        TextView textView = this.errorView;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorAccessibilityLiveRegion(int i) {
        this.errorViewAccessibilityLiveRegion = i;
        TextView textView = this.errorView;
        if (textView != null) {
            ViewCompat.setAccessibilityLiveRegion(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHelperTextViewCurrentTextColor() {
        TextView textView = this.helperTextView;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    ColorStateList getHelperTextViewColors() {
        TextView textView = this.helperTextView;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHelperTextViewTextColor(ColorStateList colorStateList) {
        this.helperTextViewTextColor = colorStateList;
        TextView textView = this.helperTextView;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHelperTextAppearance(int i) {
        this.helperTextTextAppearance = i;
        TextView textView = this.helperTextView;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }
}
