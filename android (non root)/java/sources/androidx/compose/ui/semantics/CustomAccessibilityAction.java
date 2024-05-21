package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsProperties.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0013\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/semantics/CustomAccessibilityAction;", "", "label", "", "action", "Lkotlin/Function0;", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "getAction", "()Lkotlin/jvm/functions/Function0;", "getLabel", "()Ljava/lang/String;", "equals", "other", "hashCode", "", "toString", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CustomAccessibilityAction {
    public static final int $stable = 0;
    private final Function0<Boolean> action;
    private final String label;

    public final Function0<Boolean> getAction() {
        return this.action;
    }

    public final String getLabel() {
        return this.label;
    }

    public CustomAccessibilityAction(String label, Function0<Boolean> action) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(action, "action");
        this.label = label;
        this.action = action;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomAccessibilityAction)) {
            return false;
        }
        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) other;
        return Intrinsics.areEqual(this.label, customAccessibilityAction.label) && Intrinsics.areEqual(this.action, customAccessibilityAction.action);
    }

    public int hashCode() {
        return (this.label.hashCode() * 31) + this.action.hashCode();
    }

    public String toString() {
        return "CustomAccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }
}
