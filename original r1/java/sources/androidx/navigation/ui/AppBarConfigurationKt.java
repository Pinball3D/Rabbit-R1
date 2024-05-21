package androidx.navigation.ui;

import android.view.Menu;
import androidx.customview.widget.Openable;
import androidx.navigation.NavGraph;
import androidx.navigation.ui.AppBarConfiguration;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppBarConfiguration.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\bø\u0001\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\bø\u0001\u0000\u001a6\u0010\u0000\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"AppBarConfiguration", "Landroidx/navigation/ui/AppBarConfiguration;", "topLevelMenu", "Landroid/view/Menu;", "drawerLayout", "Landroidx/customview/widget/Openable;", "fallbackOnNavigateUpListener", "Lkotlin/Function0;", "", "navGraph", "Landroidx/navigation/NavGraph;", "topLevelDestinationIds", "", "", "navigation-ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AppBarConfigurationKt {
    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(NavGraph navGraph, Openable openable, Function0 fallbackOnNavigateUpListener, int i, Object obj) {
        if ((i & 2) != 0) {
            openable = null;
        }
        if ((i & 4) != 0) {
            fallbackOnNavigateUpListener = AppBarConfigurationKt$AppBarConfiguration$1.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(navGraph, "navGraph");
        Intrinsics.checkNotNullParameter(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        return new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
    }

    public static final AppBarConfiguration AppBarConfiguration(NavGraph navGraph, Openable openable, Function0<Boolean> fallbackOnNavigateUpListener) {
        Intrinsics.checkNotNullParameter(navGraph, "navGraph");
        Intrinsics.checkNotNullParameter(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        return new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Menu topLevelMenu, Openable openable, Function0 fallbackOnNavigateUpListener, int i, Object obj) {
        if ((i & 2) != 0) {
            openable = null;
        }
        if ((i & 4) != 0) {
            fallbackOnNavigateUpListener = new Function0<Boolean>() { // from class: androidx.navigation.ui.AppBarConfigurationKt$AppBarConfiguration$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return false;
                }
            };
        }
        Intrinsics.checkNotNullParameter(topLevelMenu, "topLevelMenu");
        Intrinsics.checkNotNullParameter(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        return new AppBarConfiguration.Builder(topLevelMenu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
    }

    public static final AppBarConfiguration AppBarConfiguration(Menu topLevelMenu, Openable openable, Function0<Boolean> fallbackOnNavigateUpListener) {
        Intrinsics.checkNotNullParameter(topLevelMenu, "topLevelMenu");
        Intrinsics.checkNotNullParameter(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        return new AppBarConfiguration.Builder(topLevelMenu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Set topLevelDestinationIds, Openable openable, Function0 fallbackOnNavigateUpListener, int i, Object obj) {
        if ((i & 2) != 0) {
            openable = null;
        }
        if ((i & 4) != 0) {
            fallbackOnNavigateUpListener = new Function0<Boolean>() { // from class: androidx.navigation.ui.AppBarConfigurationKt$AppBarConfiguration$3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return false;
                }
            };
        }
        Intrinsics.checkNotNullParameter(topLevelDestinationIds, "topLevelDestinationIds");
        Intrinsics.checkNotNullParameter(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        return new AppBarConfiguration.Builder((Set<Integer>) topLevelDestinationIds).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
    }

    public static final AppBarConfiguration AppBarConfiguration(Set<Integer> topLevelDestinationIds, Openable openable, Function0<Boolean> fallbackOnNavigateUpListener) {
        Intrinsics.checkNotNullParameter(topLevelDestinationIds, "topLevelDestinationIds");
        Intrinsics.checkNotNullParameter(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        return new AppBarConfiguration.Builder(topLevelDestinationIds).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
    }
}
