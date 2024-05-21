package androidx.navigation;

import kotlin.Metadata;

/* compiled from: NavOptionsBuilder.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR&\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00048F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\r"}, d2 = {"Landroidx/navigation/PopUpToBuilder;", "", "()V", "inclusive", "", "getInclusive", "()Z", "setInclusive", "(Z)V", "<set-?>", "saveState", "getSaveState", "setSaveState", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@NavOptionsDsl
/* loaded from: classes2.dex */
public final class PopUpToBuilder {
    private boolean inclusive;
    private boolean saveState;

    public final boolean getInclusive() {
        return this.inclusive;
    }

    public final boolean getSaveState() {
        return this.saveState;
    }

    public final void setInclusive(boolean z) {
        this.inclusive = z;
    }

    public final void setSaveState(boolean z) {
        this.saveState = z;
    }
}
