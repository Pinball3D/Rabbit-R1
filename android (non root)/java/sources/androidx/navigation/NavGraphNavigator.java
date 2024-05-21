package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.Navigator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: NavGraphNavigator.kt */
@Navigator.Name("navigation")
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\f\u001a\u00020\u0002H\u0016J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J*\u0010\r\u001a\u00020\u000e2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00078F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/navigation/NavGraphNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavGraph;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "(Landroidx/navigation/NavigatorProvider;)V", "backStack", "Lkotlinx/coroutines/flow/StateFlow;", "", "Landroidx/navigation/NavBackStackEntry;", "getBackStack", "()Lkotlinx/coroutines/flow/StateFlow;", "createDestination", "navigate", "", "entry", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "entries", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class NavGraphNavigator extends Navigator<NavGraph> {
    private final NavigatorProvider navigatorProvider;

    public NavGraphNavigator(NavigatorProvider navigatorProvider) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        this.navigatorProvider = navigatorProvider;
    }

    public final StateFlow<List<NavBackStackEntry>> getBackStack() {
        return getState().getBackStack();
    }

    @Override // androidx.navigation.Navigator
    public NavGraph createDestination() {
        return new NavGraph(this);
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> entries, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        Iterator<NavBackStackEntry> it = entries.iterator();
        while (it.hasNext()) {
            navigate(it.next(), navOptions, navigatorExtras);
        }
    }

    private final void navigate(NavBackStackEntry entry, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        NavDestination findNode;
        NavDestination destination = entry.getDestination();
        Intrinsics.checkNotNull(destination, "null cannot be cast to non-null type androidx.navigation.NavGraph");
        NavGraph navGraph = (NavGraph) destination;
        Bundle arguments = entry.getArguments();
        int startDestId = navGraph.getStartDestId();
        String startDestinationRoute = navGraph.getStartDestinationRoute();
        if (startDestId == 0 && startDestinationRoute == null) {
            throw new IllegalStateException(("no start destination defined via app:startDestination for " + navGraph.getDisplayName()).toString());
        }
        if (startDestinationRoute != null) {
            findNode = navGraph.findNode(startDestinationRoute, false);
        } else {
            findNode = navGraph.findNode(startDestId, false);
        }
        if (findNode == null) {
            throw new IllegalArgumentException("navigation destination " + navGraph.getStartDestDisplayName() + " is not a direct child of this NavGraph");
        }
        this.navigatorProvider.getNavigator(findNode.getNavigatorName()).navigate(CollectionsKt.listOf(getState().createBackStackEntry(findNode, findNode.addInDefaultArgs(arguments))), navOptions, navigatorExtras);
    }
}
