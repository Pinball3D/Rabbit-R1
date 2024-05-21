package androidx.navigation;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ActionOnlyNavDirections.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Landroidx/navigation/ActionOnlyNavDirections;", "Landroidx/navigation/NavDirections;", "actionId", "", "(I)V", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final /* data */ class ActionOnlyNavDirections implements NavDirections {
    private final int actionId;
    private final Bundle arguments = new Bundle();

    public static /* synthetic */ ActionOnlyNavDirections copy$default(ActionOnlyNavDirections actionOnlyNavDirections, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = actionOnlyNavDirections.actionId;
        }
        return actionOnlyNavDirections.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getActionId() {
        return this.actionId;
    }

    public final ActionOnlyNavDirections copy(int actionId) {
        return new ActionOnlyNavDirections(actionId);
    }

    @Override // androidx.navigation.NavDirections
    public int getActionId() {
        return this.actionId;
    }

    @Override // androidx.navigation.NavDirections
    public Bundle getArguments() {
        return this.arguments;
    }

    public ActionOnlyNavDirections(int i) {
        this.actionId = i;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return other != null && Intrinsics.areEqual(getClass(), other.getClass()) && getActionId() == ((ActionOnlyNavDirections) other).getActionId();
    }

    public int hashCode() {
        return 31 + getActionId();
    }

    public String toString() {
        return "ActionOnlyNavDirections(actionId=" + getActionId() + ')';
    }
}
