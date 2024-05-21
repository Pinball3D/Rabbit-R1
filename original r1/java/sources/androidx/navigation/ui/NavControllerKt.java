package androidx.navigation.ui;

import androidx.customview.widget.Openable;
import androidx.navigation.NavController;
import androidx.navigation.ui.AppBarConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavController.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"navigateUp", "", "Landroidx/navigation/NavController;", "drawerLayout", "Landroidx/customview/widget/Openable;", "appBarConfiguration", "Landroidx/navigation/ui/AppBarConfiguration;", "navigation-ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavControllerKt {
    public static final boolean navigateUp(NavController navController, Openable openable) {
        Intrinsics.checkNotNullParameter(navController, "<this>");
        return NavigationUI.navigateUp(navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(AppBarConfigurationKt$AppBarConfiguration$1.INSTANCE)).build());
    }

    public static final boolean navigateUp(NavController navController, AppBarConfiguration appBarConfiguration) {
        Intrinsics.checkNotNullParameter(navController, "<this>");
        Intrinsics.checkNotNullParameter(appBarConfiguration, "appBarConfiguration");
        return NavigationUI.navigateUp(navController, appBarConfiguration);
    }
}
