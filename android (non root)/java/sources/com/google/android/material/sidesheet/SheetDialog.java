package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.sidesheet.SheetCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class SheetDialog<C extends SheetCallback> extends AppCompatDialog {
    private static final int COORDINATOR_LAYOUT_ID = R.id.coordinator;
    private static final int TOUCH_OUTSIDE_ID = R.id.touch_outside;
    private MaterialBackOrchestrator backOrchestrator;
    private Sheet<C> behavior;
    boolean cancelable;
    private boolean canceledOnTouchOutside;
    private boolean canceledOnTouchOutsideSet;
    private FrameLayout container;
    boolean dismissWithAnimation;
    private FrameLayout sheet;

    abstract void addSheetCancelOnHideCallback(Sheet<C> sheet);

    abstract Sheet<C> getBehaviorFromSheet(FrameLayout frameLayout);

    abstract int getDialogId();

    abstract int getLayoutResId();

    abstract int getStateOnStart();

    public boolean isDismissWithSheetAnimationEnabled() {
        return this.dismissWithAnimation;
    }

    public void setDismissWithSheetAnimationEnabled(boolean z) {
        this.dismissWithAnimation = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SheetDialog(Context context, int i, int i2, int i3) {
        super(context, getThemeResId(context, i, i2, i3));
        this.cancelable = true;
        this.canceledOnTouchOutside = true;
        supportRequestWindowFeature(1);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(int i) {
        super.setContentView(wrapInSheet(i, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(wrapInSheet(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(wrapInSheet(0, view, layoutParams));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.cancelable != z) {
            this.cancelable = z;
        }
        if (getWindow() != null) {
            updateListeningForBackCallbacks();
        }
    }

    private void updateListeningForBackCallbacks() {
        MaterialBackOrchestrator materialBackOrchestrator = this.backOrchestrator;
        if (materialBackOrchestrator == null) {
            return;
        }
        if (this.cancelable) {
            materialBackOrchestrator.startListeningForBackCallbacks();
        } else {
            materialBackOrchestrator.stopListeningForBackCallbacks();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onStart() {
        super.onStart();
        Sheet<C> sheet = this.behavior;
        if (sheet == null || sheet.getState() != 5) {
            return;
        }
        this.behavior.setState(getStateOnStart());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        maybeUpdateWindowAnimationsBasedOnLayoutDirection();
        updateListeningForBackCallbacks();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MaterialBackOrchestrator materialBackOrchestrator = this.backOrchestrator;
        if (materialBackOrchestrator != null) {
            materialBackOrchestrator.stopListeningForBackCallbacks();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        Sheet<C> behavior = getBehavior();
        if (!this.dismissWithAnimation || behavior.getState() == 5) {
            super.cancel();
        } else {
            behavior.setState(5);
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.cancelable) {
            this.cancelable = true;
        }
        this.canceledOnTouchOutside = z;
        this.canceledOnTouchOutsideSet = true;
    }

    private void ensureContainerAndBehavior() {
        if (this.container == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), getLayoutResId(), null);
            this.container = frameLayout;
            FrameLayout frameLayout2 = (FrameLayout) frameLayout.findViewById(getDialogId());
            this.sheet = frameLayout2;
            Sheet<C> behaviorFromSheet = getBehaviorFromSheet(frameLayout2);
            this.behavior = behaviorFromSheet;
            addSheetCancelOnHideCallback(behaviorFromSheet);
            this.backOrchestrator = new MaterialBackOrchestrator(this.behavior, this.sheet);
        }
    }

    private FrameLayout getContainer() {
        if (this.container == null) {
            ensureContainerAndBehavior();
        }
        return this.container;
    }

    private FrameLayout getSheet() {
        if (this.sheet == null) {
            ensureContainerAndBehavior();
        }
        return this.sheet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Sheet<C> getBehavior() {
        if (this.behavior == null) {
            ensureContainerAndBehavior();
        }
        return this.behavior;
    }

    private View wrapInSheet(int i, View view, ViewGroup.LayoutParams layoutParams) {
        ensureContainerAndBehavior();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) getContainer().findViewById(COORDINATOR_LAYOUT_ID);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        FrameLayout sheet = getSheet();
        sheet.removeAllViews();
        if (layoutParams == null) {
            sheet.addView(view);
        } else {
            sheet.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(TOUCH_OUTSIDE_ID).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.sidesheet.SheetDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SheetDialog.this.m5550x401f75dd(view2);
            }
        });
        ViewCompat.setAccessibilityDelegate(getSheet(), new AccessibilityDelegateCompat() { // from class: com.google.android.material.sidesheet.SheetDialog.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                if (SheetDialog.this.cancelable) {
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfoCompat.setDismissable(true);
                } else {
                    accessibilityNodeInfoCompat.setDismissable(false);
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public boolean performAccessibilityAction(View view2, int i2, Bundle bundle) {
                if (i2 == 1048576 && SheetDialog.this.cancelable) {
                    SheetDialog.this.cancel();
                    return true;
                }
                return super.performAccessibilityAction(view2, i2, bundle);
            }
        });
        return this.container;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$wrapInSheet$0$com-google-android-material-sidesheet-SheetDialog, reason: not valid java name */
    public /* synthetic */ void m5550x401f75dd(View view) {
        if (this.cancelable && isShowing() && shouldWindowCloseOnTouchOutside()) {
            cancel();
        }
    }

    public void setSheetEdge(int i) {
        FrameLayout frameLayout = this.sheet;
        if (frameLayout == null) {
            throw new IllegalStateException("Sheet view reference is null; sheet edge cannot be changed if the sheet view is null.");
        }
        if (ViewCompat.isLaidOut(frameLayout)) {
            throw new IllegalStateException("Sheet view has been laid out; sheet edge cannot be changed once the sheet has been laid out.");
        }
        ViewGroup.LayoutParams layoutParams = this.sheet.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            ((CoordinatorLayout.LayoutParams) layoutParams).gravity = i;
            maybeUpdateWindowAnimationsBasedOnLayoutDirection();
        }
    }

    private void maybeUpdateWindowAnimationsBasedOnLayoutDirection() {
        FrameLayout frameLayout;
        int i;
        Window window = getWindow();
        if (window == null || (frameLayout = this.sheet) == null || !(frameLayout.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
            return;
        }
        if (GravityCompat.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) this.sheet.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this.sheet)) == 3) {
            i = R.style.Animation_Material3_SideSheetDialog_Left;
        } else {
            i = R.style.Animation_Material3_SideSheetDialog_Right;
        }
        window.setWindowAnimations(i);
    }

    private boolean shouldWindowCloseOnTouchOutside() {
        if (!this.canceledOnTouchOutsideSet) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.windowCloseOnTouchOutside});
            this.canceledOnTouchOutside = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.canceledOnTouchOutsideSet = true;
        }
        return this.canceledOnTouchOutside;
    }

    private static int getThemeResId(Context context, int i, int i2, int i3) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(i2, typedValue, true) ? typedValue.resourceId : i3;
    }
}
