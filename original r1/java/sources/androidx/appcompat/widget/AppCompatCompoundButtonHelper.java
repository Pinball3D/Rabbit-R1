package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatCompoundButtonHelper {
    private ColorStateList mButtonTintList = null;
    private PorterDuff.Mode mButtonTintMode = null;
    private boolean mHasButtonTint = false;
    private boolean mHasButtonTintMode = false;
    private boolean mSkipNextApply;
    private final CompoundButton mView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCompoundPaddingLeft(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getSupportButtonTintList() {
        return this.mButtonTintList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode getSupportButtonTintMode() {
        return this.mButtonTintMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0062 A[Catch: all -> 0x008a, TryCatch #1 {all -> 0x008a, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:9:0x005a, B:11:0x0062, B:12:0x006d, B:14:0x0075, B:21:0x003d, B:23:0x0045, B:25:0x004d), top: B:2:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0075 A[Catch: all -> 0x008a, TRY_LEAVE, TryCatch #1 {all -> 0x008a, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:9:0x005a, B:11:0x0062, B:12:0x006d, B:14:0x0075, B:21:0x003d, B:23:0x0045, B:25:0x004d), top: B:2:0x001f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFromAttributes(android.util.AttributeSet r11, int r12) {
        /*
            r10 = this;
            android.widget.CompoundButton r0 = r10.mView
            android.content.Context r0 = r0.getContext()
            int[] r1 = androidx.appcompat.R.styleable.CompoundButton
            r2 = 0
            androidx.appcompat.widget.TintTypedArray r0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r0, r11, r1, r12, r2)
            android.widget.CompoundButton r3 = r10.mView
            android.content.Context r4 = r3.getContext()
            int[] r5 = androidx.appcompat.R.styleable.CompoundButton
            android.content.res.TypedArray r7 = r0.getWrappedTypeArray()
            r9 = 0
            r6 = r11
            r8 = r12
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r3, r4, r5, r6, r7, r8, r9)
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L8a
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8a
            if (r11 == 0) goto L3d
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L8a
            int r11 = r0.getResourceId(r11, r2)     // Catch: java.lang.Throwable -> L8a
            if (r11 == 0) goto L3d
            android.widget.CompoundButton r12 = r10.mView     // Catch: android.content.res.Resources.NotFoundException -> L3d java.lang.Throwable -> L8a
            android.content.Context r1 = r12.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L3d java.lang.Throwable -> L8a
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: android.content.res.Resources.NotFoundException -> L3d java.lang.Throwable -> L8a
            r12.setButtonDrawable(r11)     // Catch: android.content.res.Resources.NotFoundException -> L3d java.lang.Throwable -> L8a
            goto L5a
        L3d:
            int r11 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L8a
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8a
            if (r11 == 0) goto L5a
            int r11 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L8a
            int r11 = r0.getResourceId(r11, r2)     // Catch: java.lang.Throwable -> L8a
            if (r11 == 0) goto L5a
            android.widget.CompoundButton r12 = r10.mView     // Catch: java.lang.Throwable -> L8a
            android.content.Context r1 = r12.getContext()     // Catch: java.lang.Throwable -> L8a
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: java.lang.Throwable -> L8a
            r12.setButtonDrawable(r11)     // Catch: java.lang.Throwable -> L8a
        L5a:
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L8a
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8a
            if (r11 == 0) goto L6d
            android.widget.CompoundButton r11 = r10.mView     // Catch: java.lang.Throwable -> L8a
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L8a
            android.content.res.ColorStateList r12 = r0.getColorStateList(r12)     // Catch: java.lang.Throwable -> L8a
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r11, r12)     // Catch: java.lang.Throwable -> L8a
        L6d:
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L8a
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8a
            if (r11 == 0) goto L86
            android.widget.CompoundButton r10 = r10.mView     // Catch: java.lang.Throwable -> L8a
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L8a
            r12 = -1
            int r11 = r0.getInt(r11, r12)     // Catch: java.lang.Throwable -> L8a
            r12 = 0
            android.graphics.PorterDuff$Mode r11 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r11, r12)     // Catch: java.lang.Throwable -> L8a
            androidx.core.widget.CompoundButtonCompat.setButtonTintMode(r10, r11)     // Catch: java.lang.Throwable -> L8a
        L86:
            r0.recycle()
            return
        L8a:
            r10 = move-exception
            r0.recycle()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSetButtonDrawable() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
        } else {
            this.mSkipNextApply = true;
            applyButtonTint();
        }
    }

    void applyButtonTint() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView);
        if (buttonDrawable != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.mHasButtonTint) {
                    DrawableCompat.setTintList(mutate, this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    DrawableCompat.setTintMode(mutate, this.mButtonTintMode);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.mView.getDrawableState());
                }
                this.mView.setButtonDrawable(mutate);
            }
        }
    }
}
