package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.Navigator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NoOpNavigator.kt */
@Navigator.Name("NoOp")
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016J.\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016¨\u0006\u000f"}, d2 = {"Landroidx/navigation/NoOpNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "()V", "createDestination", "navigate", "destination", "args", "Landroid/os/Bundle;", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "popBackStack", "", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NoOpNavigator extends Navigator<NavDestination> {
    @Override // androidx.navigation.Navigator
    public NavDestination navigate(NavDestination destination, Bundle args, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        return destination;
    }

    @Override // androidx.navigation.Navigator
    public boolean popBackStack() {
        return true;
    }

    @Override // androidx.navigation.Navigator
    public NavDestination createDestination() {
        return new NavDestination(this);
    }
}
