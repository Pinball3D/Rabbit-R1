package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class StartCompoundLayout extends LinearLayout {
    private boolean hintExpanded;
    private CharSequence prefixText;
    private final TextView prefixTextView;
    private int startIconMinSize;
    private View.OnLongClickListener startIconOnLongClickListener;
    private ImageView.ScaleType startIconScaleType;
    private ColorStateList startIconTintList;
    private PorterDuff.Mode startIconTintMode;
    private final CheckableImageButton startIconView;
    private final TextInputLayout textInputLayout;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getPrefixText() {
        return this.prefixText;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextView getPrefixTextView() {
        return this.prefixTextView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStartIconMinSize() {
        return this.startIconMinSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageView.ScaleType getStartIconScaleType() {
        return this.startIconScaleType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StartCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.textInputLayout = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.startIconView = checkableImageButton;
        IconHelper.setCompatRippleBackgroundIfNeeded(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.prefixTextView = appCompatTextView;
        initStartIconView(tintTypedArray);
        initPrefixTextView(tintTypedArray);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void initStartIconView(TintTypedArray tintTypedArray) {
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) this.startIconView.getLayoutParams(), 0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_startIconTint)) {
            this.startIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, R.styleable.TextInputLayout_startIconTint);
        }
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_startIconTintMode)) {
            this.startIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(R.styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_startIconDrawable)) {
            setStartIconDrawable(tintTypedArray.getDrawable(R.styleable.TextInputLayout_startIconDrawable));
            if (tintTypedArray.hasValue(R.styleable.TextInputLayout_startIconContentDescription)) {
                setStartIconContentDescription(tintTypedArray.getText(R.styleable.TextInputLayout_startIconContentDescription));
            }
            setStartIconCheckable(tintTypedArray.getBoolean(R.styleable.TextInputLayout_startIconCheckable, true));
        }
        setStartIconMinSize(tintTypedArray.getDimensionPixelSize(R.styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size)));
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_startIconScaleType)) {
            setStartIconScaleType(IconHelper.convertScaleType(tintTypedArray.getInt(R.styleable.TextInputLayout_startIconScaleType, -1)));
        }
    }

    private void initPrefixTextView(TintTypedArray tintTypedArray) {
        this.prefixTextView.setVisibility(8);
        this.prefixTextView.setId(R.id.textinput_prefix_text);
        this.prefixTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(this.prefixTextView, 1);
        setPrefixTextAppearance(tintTypedArray.getResourceId(R.styleable.TextInputLayout_prefixTextAppearance, 0));
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_prefixTextColor)) {
            setPrefixTextColor(tintTypedArray.getColorStateList(R.styleable.TextInputLayout_prefixTextColor));
        }
        setPrefixText(tintTypedArray.getText(R.styleable.TextInputLayout_prefixText));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updatePrefixTextViewPadding();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPrefixText(CharSequence charSequence) {
        this.prefixText = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.prefixTextView.setText(charSequence);
        updateVisibility();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.prefixTextView.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getPrefixTextColor() {
        return this.prefixTextView.getTextColors();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPrefixTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.prefixTextView, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconDrawable(Drawable drawable) {
        this.startIconView.setImageDrawable(drawable);
        if (drawable != null) {
            IconHelper.applyIconTint(this.textInputLayout, this.startIconView, this.startIconTintList, this.startIconTintMode);
            setStartIconVisible(true);
            refreshStartIconDrawableState();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable getStartIconDrawable() {
        return this.startIconView.getDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        IconHelper.setIconOnClickListener(this.startIconView, onClickListener, this.startIconOnLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.startIconOnLongClickListener = onLongClickListener;
        IconHelper.setIconOnLongClickListener(this.startIconView, onLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconVisible(boolean z) {
        if (isStartIconVisible() != z) {
            this.startIconView.setVisibility(z ? 0 : 8);
            updatePrefixTextViewPadding();
            updateVisibility();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isStartIconVisible() {
        return this.startIconView.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshStartIconDrawableState() {
        IconHelper.refreshIconDrawableState(this.textInputLayout, this.startIconView, this.startIconTintList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconCheckable(boolean z) {
        this.startIconView.setCheckable(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isStartIconCheckable() {
        return this.startIconView.isCheckable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.startIconView.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getStartIconContentDescription() {
        return this.startIconView.getContentDescription();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.startIconTintList != colorStateList) {
            this.startIconTintList = colorStateList;
            IconHelper.applyIconTint(this.textInputLayout, this.startIconView, colorStateList, this.startIconTintMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.startIconTintMode != mode) {
            this.startIconTintMode = mode;
            IconHelper.applyIconTint(this.textInputLayout, this.startIconView, this.startIconTintList, mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconMinSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i != this.startIconMinSize) {
            this.startIconMinSize = i;
            IconHelper.setIconMinSize(this.startIconView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        this.startIconScaleType = scaleType;
        IconHelper.setIconScaleType(this.startIconView, scaleType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setupAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.prefixTextView.getVisibility() == 0) {
            accessibilityNodeInfoCompat.setLabelFor(this.prefixTextView);
            accessibilityNodeInfoCompat.setTraversalAfter(this.prefixTextView);
        } else {
            accessibilityNodeInfoCompat.setTraversalAfter(this.startIconView);
        }
    }

    void updatePrefixTextViewPadding() {
        EditText editText = this.textInputLayout.editText;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.prefixTextView, isStartIconVisible() ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPrefixTextStartOffset() {
        return ViewCompat.getPaddingStart(this) + ViewCompat.getPaddingStart(this.prefixTextView) + (isStartIconVisible() ? this.startIconView.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) this.startIconView.getLayoutParams()) : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onHintStateChanged(boolean z) {
        this.hintExpanded = z;
        updateVisibility();
    }

    private void updateVisibility() {
        int i = 0;
        int i2 = (this.prefixText == null || this.hintExpanded) ? 8 : 0;
        if (this.startIconView.getVisibility() != 0 && i2 != 0) {
            i = 8;
        }
        setVisibility(i);
        this.prefixTextView.setVisibility(i2);
        this.textInputLayout.updateDummyDrawables();
    }
}
