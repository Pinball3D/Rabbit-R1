package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ViewUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes2.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    public static final int STATE_CHECKED = 1;
    public static final int STATE_INDETERMINATE = 2;
    public static final int STATE_UNCHECKED = 0;
    private boolean broadcasting;
    private Drawable buttonDrawable;
    private Drawable buttonIconDrawable;
    ColorStateList buttonIconTintList;
    private PorterDuff.Mode buttonIconTintMode;
    ColorStateList buttonTintList;
    private boolean centerIfNoTextEnabled;
    private int checkedState;
    private int[] currentStateChecked;
    private CharSequence customStateDescription;
    private CharSequence errorAccessibilityLabel;
    private boolean errorShown;
    private ColorStateList materialThemeColorsTintList;
    private CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
    private final LinkedHashSet<OnCheckedStateChangedListener> onCheckedStateChangedListeners;
    private final LinkedHashSet<OnErrorChangedListener> onErrorChangedListeners;
    private final AnimatedVectorDrawableCompat transitionToUnchecked;
    private final Animatable2Compat.AnimationCallback transitionToUncheckedCallback;
    private boolean useMaterialThemeColors;
    private boolean usingMaterialButtonDrawable;
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;
    private static final int[] INDETERMINATE_STATE_SET = {R.attr.state_indeterminate};
    private static final int[] ERROR_STATE_SET = {R.attr.state_error};
    private static final int[][] CHECKBOX_STATES = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    private static final int FRAMEWORK_BUTTON_DRAWABLE_RES_ID = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface CheckedState {
    }

    /* loaded from: classes2.dex */
    public interface OnCheckedStateChangedListener {
        void onCheckedStateChangedListener(MaterialCheckBox materialCheckBox, int i);
    }

    /* loaded from: classes2.dex */
    public interface OnErrorChangedListener {
        void onErrorChanged(MaterialCheckBox materialCheckBox, boolean z);
    }

    private void updateIconTintIfNeeded() {
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.buttonDrawable;
    }

    public Drawable getButtonIconDrawable() {
        return this.buttonIconDrawable;
    }

    public ColorStateList getButtonIconTintList() {
        return this.buttonIconTintList;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.buttonIconTintMode;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.buttonTintList;
    }

    public int getCheckedState() {
        return this.checkedState;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.errorAccessibilityLabel;
    }

    public boolean isCenterIfNoTextEnabled() {
        return this.centerIfNoTextEnabled;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public boolean isChecked() {
        return this.checkedState == 1;
    }

    public boolean isErrorShown() {
        return this.errorShown;
    }

    public boolean isUseMaterialThemeColors() {
        return this.useMaterialThemeColors;
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.centerIfNoTextEnabled = z;
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.errorAccessibilityLabel = charSequence;
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCheckBox(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            r8 = this;
            int r4 = com.google.android.material.checkbox.MaterialCheckBox.DEF_STYLE_RES
            android.content.Context r9 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r9, r10, r11, r4)
            r8.<init>(r9, r10, r11)
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            r8.onErrorChangedListeners = r9
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            r8.onCheckedStateChangedListeners = r9
            android.content.Context r9 = r8.getContext()
            int r0 = com.google.android.material.R.drawable.mtrl_checkbox_button_checked_unchecked
            androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat r9 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.create(r9, r0)
            r8.transitionToUnchecked = r9
            com.google.android.material.checkbox.MaterialCheckBox$1 r9 = new com.google.android.material.checkbox.MaterialCheckBox$1
            r9.<init>()
            r8.transitionToUncheckedCallback = r9
            android.content.Context r9 = r8.getContext()
            android.graphics.drawable.Drawable r0 = androidx.core.widget.CompoundButtonCompat.getButtonDrawable(r8)
            r8.buttonDrawable = r0
            android.content.res.ColorStateList r0 = r8.getSuperButtonTintList()
            r8.buttonTintList = r0
            r6 = 0
            r8.setSupportButtonTintList(r6)
            int[] r2 = com.google.android.material.R.styleable.MaterialCheckBox
            r7 = 0
            int[] r5 = new int[r7]
            r0 = r9
            r1 = r10
            r3 = r11
            androidx.appcompat.widget.TintTypedArray r10 = com.google.android.material.internal.ThemeEnforcement.obtainTintedStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r11 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIcon
            android.graphics.drawable.Drawable r11 = r10.getDrawable(r11)
            r8.buttonIconDrawable = r11
            android.graphics.drawable.Drawable r11 = r8.buttonDrawable
            r0 = 1
            if (r11 == 0) goto L7c
            boolean r11 = com.google.android.material.internal.ThemeEnforcement.isMaterial3Theme(r9)
            if (r11 == 0) goto L7c
            boolean r11 = r8.isButtonDrawableLegacy(r10)
            if (r11 == 0) goto L7c
            super.setButtonDrawable(r6)
            int r11 = com.google.android.material.R.drawable.mtrl_checkbox_button
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r9, r11)
            r8.buttonDrawable = r11
            r8.usingMaterialButtonDrawable = r0
            android.graphics.drawable.Drawable r11 = r8.buttonIconDrawable
            if (r11 != 0) goto L7c
            int r11 = com.google.android.material.R.drawable.mtrl_checkbox_button_icon
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r9, r11)
            r8.buttonIconDrawable = r11
        L7c:
            int r11 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIconTint
            android.content.res.ColorStateList r9 = com.google.android.material.resources.MaterialResources.getColorStateList(r9, r10, r11)
            r8.buttonIconTintList = r9
            int r9 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIconTintMode
            r11 = -1
            int r9 = r10.getInt(r9, r11)
            android.graphics.PorterDuff$Mode r11 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r9 = com.google.android.material.internal.ViewUtils.parseTintMode(r9, r11)
            r8.buttonIconTintMode = r9
            int r9 = com.google.android.material.R.styleable.MaterialCheckBox_useMaterialThemeColors
            boolean r9 = r10.getBoolean(r9, r7)
            r8.useMaterialThemeColors = r9
            int r9 = com.google.android.material.R.styleable.MaterialCheckBox_centerIfNoTextEnabled
            boolean r9 = r10.getBoolean(r9, r0)
            r8.centerIfNoTextEnabled = r9
            int r9 = com.google.android.material.R.styleable.MaterialCheckBox_errorShown
            boolean r9 = r10.getBoolean(r9, r7)
            r8.errorShown = r9
            int r9 = com.google.android.material.R.styleable.MaterialCheckBox_errorAccessibilityLabel
            java.lang.CharSequence r9 = r10.getText(r9)
            r8.errorAccessibilityLabel = r9
            int r9 = com.google.android.material.R.styleable.MaterialCheckBox_checkedState
            boolean r9 = r10.hasValue(r9)
            if (r9 == 0) goto Lc4
            int r9 = com.google.android.material.R.styleable.MaterialCheckBox_checkedState
            int r9 = r10.getInt(r9, r7)
            r8.setCheckedState(r9)
        Lc4:
            r10.recycle()
            r8.refreshButtonDrawable()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.checkbox.MaterialCheckBox.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-google-android-material-checkbox-MaterialCheckBox, reason: not valid java name */
    public /* synthetic */ void m5487xdf87d0bf() {
        this.buttonIconDrawable.jumpToCurrentState();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (this.centerIfNoTextEnabled && TextUtils.isEmpty(getText()) && (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) != null) {
            int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (ViewUtils.isLayoutRtl(this) ? -1 : 1);
            int save = canvas.save();
            canvas.translate(width, 0.0f);
            super.onDraw(canvas);
            canvas.restoreToCount(save);
            if (getBackground() != null) {
                Rect bounds = buttonDrawable.getBounds();
                DrawableCompat.setHotspotBounds(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.useMaterialThemeColors && this.buttonTintList == null && this.buttonIconTintList == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            mergeDrawableStates(onCreateDrawableState, INDETERMINATE_STATE_SET);
        }
        if (isErrorShown()) {
            mergeDrawableStates(onCreateDrawableState, ERROR_STATE_SET);
        }
        this.currentStateChecked = DrawableUtils.getCheckedState(onCreateDrawableState);
        updateIconTintIfNeeded();
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        updateIconTintIfNeeded();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && isErrorShown()) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.errorAccessibilityLabel));
        }
    }

    public void setCheckedState(int i) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.checkedState != i) {
            this.checkedState = i;
            super.setChecked(i == 1);
            refreshDrawableState();
            setDefaultStateDescription();
            if (this.broadcasting) {
                return;
            }
            this.broadcasting = true;
            LinkedHashSet<OnCheckedStateChangedListener> linkedHashSet = this.onCheckedStateChangedListeners;
            if (linkedHashSet != null) {
                Iterator<OnCheckedStateChangedListener> it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    it.next().onCheckedStateChangedListener(this, this.checkedState);
                }
            }
            if (this.checkedState != 2 && (onCheckedChangeListener = this.onCheckedChangeListener) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            AutofillManager autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class);
            if (autofillManager != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.broadcasting = false;
        }
    }

    public void addOnCheckedStateChangedListener(OnCheckedStateChangedListener onCheckedStateChangedListener) {
        this.onCheckedStateChangedListeners.add(onCheckedStateChangedListener);
    }

    public void removeOnCheckedStateChangedListener(OnCheckedStateChangedListener onCheckedStateChangedListener) {
        this.onCheckedStateChangedListeners.remove(onCheckedStateChangedListener);
    }

    public void clearOnCheckedStateChangedListeners() {
        this.onCheckedStateChangedListeners.clear();
    }

    public void setErrorShown(boolean z) {
        if (this.errorShown == z) {
            return;
        }
        this.errorShown = z;
        refreshDrawableState();
        Iterator<OnErrorChangedListener> it = this.onErrorChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onErrorChanged(this, this.errorShown);
        }
    }

    public void setErrorAccessibilityLabelResource(int i) {
        setErrorAccessibilityLabel(i != 0 ? getResources().getText(i) : null);
    }

    public void addOnErrorChangedListener(OnErrorChangedListener onErrorChangedListener) {
        this.onErrorChangedListeners.add(onErrorChangedListener);
    }

    public void removeOnErrorChangedListener(OnErrorChangedListener onErrorChangedListener) {
        this.onErrorChangedListeners.remove(onErrorChangedListener);
    }

    public void clearOnErrorChangedListeners() {
        this.onErrorChangedListeners.clear();
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.buttonDrawable = drawable;
        this.usingMaterialButtonDrawable = false;
        refreshButtonDrawable();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.buttonTintList == colorStateList) {
            return;
        }
        this.buttonTintList = colorStateList;
        refreshButtonDrawable();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        refreshButtonDrawable();
    }

    public void setButtonIconDrawableResource(int i) {
        setButtonIconDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.buttonIconDrawable = drawable;
        refreshButtonDrawable();
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.buttonIconTintList == colorStateList) {
            return;
        }
        this.buttonIconTintList = colorStateList;
        refreshButtonDrawable();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.buttonIconTintMode == mode) {
            return;
        }
        this.buttonIconTintMode = mode;
        refreshButtonDrawable();
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.useMaterialThemeColors = z;
        if (z) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    private void refreshButtonDrawable() {
        this.buttonDrawable = DrawableUtils.createTintableMutatedDrawableIfNeeded(this.buttonDrawable, this.buttonTintList, CompoundButtonCompat.getButtonTintMode(this));
        this.buttonIconDrawable = DrawableUtils.createTintableMutatedDrawableIfNeeded(this.buttonIconDrawable, this.buttonIconTintList, this.buttonIconTintMode);
        setUpDefaultButtonDrawableAnimationIfNeeded();
        updateButtonTints();
        super.setButtonDrawable(DrawableUtils.compositeTwoLayeredDrawable(this.buttonDrawable, this.buttonIconDrawable));
        refreshDrawableState();
    }

    private void setUpDefaultButtonDrawableAnimationIfNeeded() {
        if (this.usingMaterialButtonDrawable) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = this.transitionToUnchecked;
            if (animatedVectorDrawableCompat != null) {
                animatedVectorDrawableCompat.unregisterAnimationCallback(this.transitionToUncheckedCallback);
                this.transitionToUnchecked.registerAnimationCallback(this.transitionToUncheckedCallback);
            }
            Drawable drawable = this.buttonDrawable;
            if (!(drawable instanceof AnimatedStateListDrawable) || this.transitionToUnchecked == null) {
                return;
            }
            ((AnimatedStateListDrawable) drawable).addTransition(R.id.checked, R.id.unchecked, this.transitionToUnchecked, false);
            ((AnimatedStateListDrawable) this.buttonDrawable).addTransition(R.id.indeterminate, R.id.unchecked, this.transitionToUnchecked, false);
        }
    }

    private void updateButtonTints() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable = this.buttonDrawable;
        if (drawable != null && (colorStateList2 = this.buttonTintList) != null) {
            DrawableCompat.setTintList(drawable, colorStateList2);
        }
        Drawable drawable2 = this.buttonIconDrawable;
        if (drawable2 == null || (colorStateList = this.buttonIconTintList) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable2, colorStateList);
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.customStateDescription = charSequence;
        if (charSequence == null) {
            setDefaultStateDescription();
        } else {
            super.setStateDescription(charSequence);
        }
    }

    private void setDefaultStateDescription() {
        if (this.customStateDescription == null) {
            super.setStateDescription(getButtonStateDescription());
        }
    }

    private String getButtonStateDescription() {
        int i = this.checkedState;
        if (i == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        if (i == 0) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_unchecked);
        }
        return getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.buttonTintList;
        if (colorStateList != null) {
            return colorStateList;
        }
        if (super.getButtonTintList() != null) {
            return super.getButtonTintList();
        }
        return getSupportButtonTintList();
    }

    private boolean isButtonDrawableLegacy(TintTypedArray tintTypedArray) {
        return tintTypedArray.getResourceId(R.styleable.MaterialCheckBox_android_button, 0) == FRAMEWORK_BUTTON_DRAWABLE_RES_ID && tintTypedArray.getResourceId(R.styleable.MaterialCheckBox_buttonCompat, 0) == 0;
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.materialThemeColorsTintList == null) {
            int[][] iArr = CHECKBOX_STATES;
            int[] iArr2 = new int[iArr.length];
            int color = MaterialColors.getColor(this, R.attr.colorControlActivated);
            int color2 = MaterialColors.getColor(this, R.attr.colorError);
            int color3 = MaterialColors.getColor(this, R.attr.colorSurface);
            int color4 = MaterialColors.getColor(this, R.attr.colorOnSurface);
            iArr2[0] = MaterialColors.layer(color3, color2, 1.0f);
            iArr2[1] = MaterialColors.layer(color3, color, 1.0f);
            iArr2[2] = MaterialColors.layer(color3, color4, 0.54f);
            iArr2[3] = MaterialColors.layer(color3, color4, 0.38f);
            iArr2[4] = MaterialColors.layer(color3, color4, 0.38f);
            this.materialThemeColorsTintList = new ColorStateList(iArr, iArr2);
        }
        return this.materialThemeColorsTintList;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checkedState = getCheckedState();
        return savedState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.checkedState);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.checkbox.MaterialCheckBox.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int checkedState;

        private String getCheckedStateString() {
            int i = this.checkedState;
            return i != 1 ? i != 2 ? "unchecked" : "indeterminate" : "checked";
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.checkedState = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.checkedState));
        }

        public String toString() {
            return "MaterialCheckBox.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " CheckedState=" + getCheckedStateString() + "}";
        }
    }
}
