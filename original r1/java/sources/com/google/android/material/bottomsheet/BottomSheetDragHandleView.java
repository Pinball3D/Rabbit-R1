package com.google.android.material.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes2.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {
    private static final int DEF_STYLE_RES = R.style.Widget_Material3_BottomSheet_DragHandle;
    private final AccessibilityManager accessibilityManager;
    private boolean accessibilityServiceEnabled;
    private BottomSheetBehavior<?> bottomSheetBehavior;
    private final BottomSheetBehavior.BottomSheetCallback bottomSheetCallback;
    private final String clickFeedback;
    private final String clickToCollapseActionLabel;
    private boolean clickToExpand;
    private final String clickToExpandActionLabel;
    private boolean interactable;

    public BottomSheetDragHandleView(Context context) {
        this(context, null);
    }

    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomSheetDragHandleStyle);
    }

    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, DEF_STYLE_RES), attributeSet, i);
        this.clickToExpandActionLabel = getResources().getString(R.string.bottomsheet_action_expand);
        this.clickToCollapseActionLabel = getResources().getString(R.string.bottomsheet_action_collapse);
        this.clickFeedback = getResources().getString(R.string.bottomsheet_drag_handle_clicked);
        this.bottomSheetCallback = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.google.android.material.bottomsheet.BottomSheetDragHandleView.1
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public void onSlide(View view, float f) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public void onStateChanged(View view, int i2) {
                BottomSheetDragHandleView.this.onBottomSheetStateChanged(i2);
            }
        };
        this.accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        updateInteractableState();
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.bottomsheet.BottomSheetDragHandleView.2
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
                if (accessibilityEvent.getEventType() == 1) {
                    BottomSheetDragHandleView.this.expandOrCollapseBottomSheetIfPossible();
                }
            }
        });
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBottomSheetBehavior(findParentBottomSheetBehavior());
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(this.accessibilityManager.isEnabled());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z) {
        this.accessibilityServiceEnabled = z;
        updateInteractableState();
    }

    private void setBottomSheetBehavior(BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior<?> bottomSheetBehavior2 = this.bottomSheetBehavior;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.removeBottomSheetCallback(this.bottomSheetCallback);
            this.bottomSheetBehavior.setAccessibilityDelegateView(null);
        }
        this.bottomSheetBehavior = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.setAccessibilityDelegateView(this);
            onBottomSheetStateChanged(this.bottomSheetBehavior.getState());
            this.bottomSheetBehavior.addBottomSheetCallback(this.bottomSheetCallback);
        }
        updateInteractableState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBottomSheetStateChanged(int i) {
        if (i == 4) {
            this.clickToExpand = true;
        } else if (i == 3) {
            this.clickToExpand = false;
        }
        ViewCompat.replaceAccessibilityAction(this, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK, this.clickToExpand ? this.clickToExpandActionLabel : this.clickToCollapseActionLabel, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetDragHandleView$$ExternalSyntheticLambda0
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return BottomSheetDragHandleView.this.m5482xa7b4c95f(view, commandArguments);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onBottomSheetStateChanged$0$com-google-android-material-bottomsheet-BottomSheetDragHandleView, reason: not valid java name */
    public /* synthetic */ boolean m5482xa7b4c95f(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return expandOrCollapseBottomSheetIfPossible();
    }

    private void updateInteractableState() {
        this.interactable = this.accessibilityServiceEnabled && this.bottomSheetBehavior != null;
        ViewCompat.setImportantForAccessibility(this, this.bottomSheetBehavior == null ? 2 : 1);
        setClickable(this.interactable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
    
        if (r1 != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean expandOrCollapseBottomSheetIfPossible() {
        /*
            r6 = this;
            boolean r0 = r6.interactable
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r0 = r6.clickFeedback
            r6.announceAccessibilityEvent(r0)
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r0 = r6.bottomSheetBehavior
            boolean r0 = r0.isFitToContents()
            r2 = 1
            if (r0 != 0) goto L1d
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r0 = r6.bottomSheetBehavior
            boolean r0 = r0.shouldSkipHalfExpandedStateWhenDragging()
            if (r0 != 0) goto L1d
            r1 = r2
        L1d:
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r0 = r6.bottomSheetBehavior
            int r0 = r0.getState()
            r3 = 6
            r4 = 3
            r5 = 4
            if (r0 != r5) goto L2b
            if (r1 == 0) goto L38
            goto L39
        L2b:
            if (r0 != r4) goto L32
            if (r1 == 0) goto L30
            goto L39
        L30:
            r3 = r5
            goto L39
        L32:
            boolean r0 = r6.clickToExpand
            if (r0 == 0) goto L37
            goto L38
        L37:
            r4 = r5
        L38:
            r3 = r4
        L39:
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r6 = r6.bottomSheetBehavior
            r6.setState(r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetDragHandleView.expandOrCollapseBottomSheetIfPossible():boolean");
    }

    private void announceAccessibilityEvent(String str) {
        if (this.accessibilityManager == null) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
        obtain.getText().add(str);
        this.accessibilityManager.sendAccessibilityEvent(obtain);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.material.bottomsheet.BottomSheetDragHandleView] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View] */
    private BottomSheetBehavior<?> findParentBottomSheetBehavior() {
        while (true) {
            this = getParentView(this);
            if (this == 0) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
                if (behavior instanceof BottomSheetBehavior) {
                    return (BottomSheetBehavior) behavior;
                }
            }
        }
    }

    private static View getParentView(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }
}
