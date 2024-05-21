package androidx.compose.material3;

import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TouchExplorationStateProvider.android.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0005J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u000e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR+\u0010\r\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\f\u001a\u0004\b\u000e\u0010\b\"\u0004\b\u000f\u0010\n¨\u0006\u001a"}, d2 = {"Landroidx/compose/material3/Listener;", "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;", "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;", "()V", "<set-?>", "", "accessibilityEnabled", "getAccessibilityEnabled", "()Z", "setAccessibilityEnabled", "(Z)V", "accessibilityEnabled$delegate", "Landroidx/compose/runtime/MutableState;", "touchExplorationEnabled", "getTouchExplorationEnabled", "setTouchExplorationEnabled", "touchExplorationEnabled$delegate", "isEnabled", "onAccessibilityStateChanged", "", "it", "onTouchExplorationStateChanged", "register", "am", "Landroid/view/accessibility/AccessibilityManager;", "unregister", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class Listener implements AccessibilityManager.AccessibilityStateChangeListener, AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: accessibilityEnabled$delegate, reason: from kotlin metadata */
    private final MutableState accessibilityEnabled;

    /* renamed from: touchExplorationEnabled$delegate, reason: from kotlin metadata */
    private final MutableState touchExplorationEnabled;

    public Listener() {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.accessibilityEnabled = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.touchExplorationEnabled = mutableStateOf$default2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean getAccessibilityEnabled() {
        return ((Boolean) this.accessibilityEnabled.getValue()).booleanValue();
    }

    private final void setAccessibilityEnabled(boolean z) {
        this.accessibilityEnabled.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean getTouchExplorationEnabled() {
        return ((Boolean) this.touchExplorationEnabled.getValue()).booleanValue();
    }

    private final void setTouchExplorationEnabled(boolean z) {
        this.touchExplorationEnabled.setValue(Boolean.valueOf(z));
    }

    public final boolean isEnabled() {
        return getAccessibilityEnabled() && getTouchExplorationEnabled();
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean it) {
        setAccessibilityEnabled(it);
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean it) {
        setTouchExplorationEnabled(it);
    }

    public final void register(AccessibilityManager am) {
        Intrinsics.checkNotNullParameter(am, "am");
        setAccessibilityEnabled(am.isEnabled());
        setTouchExplorationEnabled(am.isTouchExplorationEnabled());
        am.addTouchExplorationStateChangeListener(this);
        am.addAccessibilityStateChangeListener(this);
    }

    public final void unregister(AccessibilityManager am) {
        Intrinsics.checkNotNullParameter(am, "am");
        am.removeTouchExplorationStateChangeListener(this);
        am.removeAccessibilityStateChangeListener(this);
    }
}
