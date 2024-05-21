package androidx.navigation.ui;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.widget.Openable;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.ui.AppBarConfiguration;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.navigation.NavigationView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavigationUI.kt */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\fH\u0007J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\nH\u0007J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J\"\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\"\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J*\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J*\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\fH\u0007J \u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\nH\u0007J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\u0006\u0010\u000b\u001a\u00020\fH\u0007J \u0010\u0019\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\nH\u0007J\u001b\u0010\"\u001a\u00020\n*\u00020#2\b\b\u0001\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b&R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Landroidx/navigation/ui/NavigationUI;", "", "()V", "TAG", "", "findBottomSheetBehavior", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "view", "Landroid/view/View;", "navigateUp", "", "navController", "Landroidx/navigation/NavController;", "openableLayout", "Landroidx/customview/widget/Openable;", "configuration", "Landroidx/navigation/ui/AppBarConfiguration;", "onNavDestinationSelected", "item", "Landroid/view/MenuItem;", "saveState", "setupActionBarWithNavController", "", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "setupWithNavController", "toolbar", "Landroidx/appcompat/widget/Toolbar;", "collapsingToolbarLayout", "Lcom/google/android/material/appbar/CollapsingToolbarLayout;", "navigationBarView", "Lcom/google/android/material/navigation/NavigationBarView;", "navigationView", "Lcom/google/android/material/navigation/NavigationView;", "matchDestination", "Landroidx/navigation/NavDestination;", "destId", "", "matchDestination$navigation_ui_release", "navigation-ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavigationUI {
    public static final NavigationUI INSTANCE = new NavigationUI();
    private static final String TAG = "NavigationUI";

    @JvmStatic
    public static final void setupActionBarWithNavController(AppCompatActivity activity, NavController navController) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupActionBarWithNavController$default(activity, navController, null, 4, null);
    }

    @JvmStatic
    public static final void setupWithNavController(Toolbar toolbar, NavController navController) {
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController$default(toolbar, navController, null, 4, null);
    }

    @JvmStatic
    public static final void setupWithNavController(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController) {
        Intrinsics.checkNotNullParameter(collapsingToolbarLayout, "collapsingToolbarLayout");
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController$default(collapsingToolbarLayout, toolbar, navController, null, 8, null);
    }

    private NavigationUI() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0096, code lost:
    
        if (matchDestination$navigation_ui_release(r0, r5.getItemId()) == true) goto L16;
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean onNavDestinationSelected(android.view.MenuItem r5, androidx.navigation.NavController r6) {
        /*
            java.lang.String r0 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "navController"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            androidx.navigation.NavOptions$Builder r0 = new androidx.navigation.NavOptions$Builder
            r0.<init>()
            r1 = 1
            androidx.navigation.NavOptions$Builder r0 = r0.setLaunchSingleTop(r1)
            androidx.navigation.NavOptions$Builder r0 = r0.setRestoreState(r1)
            androidx.navigation.NavDestination r2 = r6.getCurrentDestination()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            androidx.navigation.NavGraph r2 = r2.getParent()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r3 = r5.getItemId()
            androidx.navigation.NavDestination r2 = r2.findNode(r3)
            boolean r2 = r2 instanceof androidx.navigation.ActivityNavigator.Destination
            if (r2 == 0) goto L4a
            int r2 = androidx.navigation.ui.R.anim.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r0.setEnterAnim(r2)
            int r3 = androidx.navigation.ui.R.anim.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setExitAnim(r3)
            int r3 = androidx.navigation.ui.R.anim.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setPopEnterAnim(r3)
            int r3 = androidx.navigation.ui.R.anim.nav_default_pop_exit_anim
            r2.setPopExitAnim(r3)
            goto L61
        L4a:
            int r2 = androidx.navigation.ui.R.animator.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r0.setEnterAnim(r2)
            int r3 = androidx.navigation.ui.R.animator.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setExitAnim(r3)
            int r3 = androidx.navigation.ui.R.animator.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setPopEnterAnim(r3)
            int r3 = androidx.navigation.ui.R.animator.nav_default_pop_exit_anim
            r2.setPopExitAnim(r3)
        L61:
            int r2 = r5.getOrder()
            r3 = 196608(0x30000, float:2.75506E-40)
            r2 = r2 & r3
            r3 = 0
            if (r2 != 0) goto L7c
            androidx.navigation.NavGraph$Companion r2 = androidx.navigation.NavGraph.INSTANCE
            androidx.navigation.NavGraph r4 = r6.getGraph()
            androidx.navigation.NavDestination r2 = r2.findStartDestination(r4)
            int r2 = r2.getId()
            r0.setPopUpTo(r2, r3, r1)
        L7c:
            androidx.navigation.NavOptions r0 = r0.build()
            int r2 = r5.getItemId()     // Catch: java.lang.IllegalArgumentException -> L9c
            r4 = 0
            r6.navigate(r2, r4, r0)     // Catch: java.lang.IllegalArgumentException -> L9c
            androidx.navigation.NavDestination r0 = r6.getCurrentDestination()     // Catch: java.lang.IllegalArgumentException -> L9c
            if (r0 == 0) goto L99
            int r2 = r5.getItemId()     // Catch: java.lang.IllegalArgumentException -> L9c
            boolean r5 = matchDestination$navigation_ui_release(r0, r2)     // Catch: java.lang.IllegalArgumentException -> L9c
            if (r5 != r1) goto L99
            goto L9a
        L99:
            r1 = r3
        L9a:
            r3 = r1
            goto Lcf
        L9c:
            r0 = move-exception
            androidx.navigation.NavDestination$Companion r1 = androidx.navigation.NavDestination.INSTANCE
            android.content.Context r2 = r6.getContext()
            int r5 = r5.getItemId()
            java.lang.String r5 = r1.getDisplayName(r2, r5)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Ignoring onNavDestinationSelected for MenuItem "
            r1.<init>(r2)
            java.lang.StringBuilder r5 = r1.append(r5)
            java.lang.String r1 = " as it cannot be found from the current destination "
            java.lang.StringBuilder r5 = r5.append(r1)
            androidx.navigation.NavDestination r6 = r6.getCurrentDestination()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            java.lang.String r6 = "NavigationUI"
            android.util.Log.i(r6, r5, r0)
        Lcf:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.ui.NavigationUI.onNavDestinationSelected(android.view.MenuItem, androidx.navigation.NavController):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x009a, code lost:
    
        if (matchDestination$navigation_ui_release(r9, r7.getItemId()) == true) goto L18;
     */
    @androidx.navigation.ui.NavigationUiSaveStateControl
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean onNavDestinationSelected(android.view.MenuItem r7, androidx.navigation.NavController r8, boolean r9) {
        /*
            java.lang.String r0 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "navController"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            r0 = 1
            r9 = r9 ^ r0
            if (r9 == 0) goto Ld4
            androidx.navigation.NavOptions$Builder r9 = new androidx.navigation.NavOptions$Builder
            r9.<init>()
            androidx.navigation.NavOptions$Builder r9 = r9.setLaunchSingleTop(r0)
            androidx.navigation.NavDestination r1 = r8.getCurrentDestination()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            androidx.navigation.NavGraph r1 = r1.getParent()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r2 = r7.getItemId()
            androidx.navigation.NavDestination r1 = r1.findNode(r2)
            boolean r1 = r1 instanceof androidx.navigation.ActivityNavigator.Destination
            if (r1 == 0) goto L49
            int r1 = androidx.navigation.ui.R.anim.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r9.setEnterAnim(r1)
            int r2 = androidx.navigation.ui.R.anim.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setExitAnim(r2)
            int r2 = androidx.navigation.ui.R.anim.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setPopEnterAnim(r2)
            int r2 = androidx.navigation.ui.R.anim.nav_default_pop_exit_anim
            r1.setPopExitAnim(r2)
            goto L60
        L49:
            int r1 = androidx.navigation.ui.R.animator.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r9.setEnterAnim(r1)
            int r2 = androidx.navigation.ui.R.animator.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setExitAnim(r2)
            int r2 = androidx.navigation.ui.R.animator.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setPopEnterAnim(r2)
            int r2 = androidx.navigation.ui.R.animator.nav_default_pop_exit_anim
            r1.setPopExitAnim(r2)
        L60:
            int r1 = r7.getOrder()
            r2 = 196608(0x30000, float:2.75506E-40)
            r1 = r1 & r2
            if (r1 != 0) goto L7f
            androidx.navigation.NavGraph$Companion r1 = androidx.navigation.NavGraph.INSTANCE
            androidx.navigation.NavGraph r2 = r8.getGraph()
            androidx.navigation.NavDestination r1 = r1.findStartDestination(r2)
            int r2 = r1.getId()
            r3 = 0
            r4 = 0
            r5 = 4
            r6 = 0
            r1 = r9
            androidx.navigation.NavOptions.Builder.setPopUpTo$default(r1, r2, r3, r4, r5, r6)
        L7f:
            androidx.navigation.NavOptions r9 = r9.build()
            r1 = 0
            int r2 = r7.getItemId()     // Catch: java.lang.IllegalArgumentException -> La0
            r3 = 0
            r8.navigate(r2, r3, r9)     // Catch: java.lang.IllegalArgumentException -> La0
            androidx.navigation.NavDestination r9 = r8.getCurrentDestination()     // Catch: java.lang.IllegalArgumentException -> La0
            if (r9 == 0) goto L9d
            int r2 = r7.getItemId()     // Catch: java.lang.IllegalArgumentException -> La0
            boolean r7 = matchDestination$navigation_ui_release(r9, r2)     // Catch: java.lang.IllegalArgumentException -> La0
            if (r7 != r0) goto L9d
            goto L9e
        L9d:
            r0 = r1
        L9e:
            r1 = r0
            goto Ld3
        La0:
            r9 = move-exception
            androidx.navigation.NavDestination$Companion r0 = androidx.navigation.NavDestination.INSTANCE
            android.content.Context r2 = r8.getContext()
            int r7 = r7.getItemId()
            java.lang.String r7 = r0.getDisplayName(r2, r7)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Ignoring onNavDestinationSelected for MenuItem "
            r0.<init>(r2)
            java.lang.StringBuilder r7 = r0.append(r7)
            java.lang.String r0 = " as it cannot be found from the current destination "
            java.lang.StringBuilder r7 = r7.append(r0)
            androidx.navigation.NavDestination r8 = r8.getCurrentDestination()
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.String r7 = r7.toString()
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            java.lang.String r8 = "NavigationUI"
            android.util.Log.i(r8, r7, r9)
        Ld3:
            return r1
        Ld4:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default"
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.ui.NavigationUI.onNavDestinationSelected(android.view.MenuItem, androidx.navigation.NavController, boolean):boolean");
    }

    @JvmStatic
    public static final boolean navigateUp(NavController navController, Openable openableLayout) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        return navigateUp(navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    @JvmStatic
    public static final boolean navigateUp(NavController navController, AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Openable openableLayout = configuration.getOpenableLayout();
        NavDestination currentDestination = navController.getCurrentDestination();
        if (openableLayout != null && currentDestination != null && configuration.isTopLevelDestination(currentDestination)) {
            openableLayout.open();
            return true;
        }
        if (navController.navigateUp()) {
            return true;
        }
        AppBarConfiguration.OnNavigateUpListener fallbackOnNavigateUpListener = configuration.getFallbackOnNavigateUpListener();
        if (fallbackOnNavigateUpListener != null) {
            return fallbackOnNavigateUpListener.onNavigateUp();
        }
        return false;
    }

    @JvmStatic
    public static final void setupActionBarWithNavController(AppCompatActivity activity, NavController navController, Openable openableLayout) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupActionBarWithNavController(activity, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    public static /* synthetic */ void setupActionBarWithNavController$default(AppCompatActivity appCompatActivity, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupActionBarWithNavController(appCompatActivity, navController, appBarConfiguration);
    }

    @JvmStatic
    public static final void setupActionBarWithNavController(AppCompatActivity activity, NavController navController, AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        navController.addOnDestinationChangedListener(new ActionBarOnDestinationChangedListener(activity, configuration));
    }

    @JvmStatic
    public static final void setupWithNavController(Toolbar toolbar, NavController navController, Openable openableLayout) {
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController(toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    public static /* synthetic */ void setupWithNavController$default(Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(toolbar, navController, appBarConfiguration);
    }

    @JvmStatic
    public static final void setupWithNavController(Toolbar toolbar, final NavController navController, final AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        navController.addOnDestinationChangedListener(new ToolbarOnDestinationChangedListener(toolbar, configuration));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.navigation.ui.NavigationUI$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavigationUI.setupWithNavController$lambda$1(NavController.this, configuration, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupWithNavController$lambda$1(NavController navController, AppBarConfiguration configuration, View view) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(configuration, "$configuration");
        navigateUp(navController, configuration);
    }

    @JvmStatic
    public static final void setupWithNavController(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController, Openable openableLayout) {
        Intrinsics.checkNotNullParameter(collapsingToolbarLayout, "collapsingToolbarLayout");
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    public static /* synthetic */ void setupWithNavController$default(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 8) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, appBarConfiguration);
    }

    @JvmStatic
    public static final void setupWithNavController(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, final NavController navController, final AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(collapsingToolbarLayout, "collapsingToolbarLayout");
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        navController.addOnDestinationChangedListener(new CollapsingToolbarOnDestinationChangedListener(collapsingToolbarLayout, toolbar, configuration));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.navigation.ui.NavigationUI$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavigationUI.setupWithNavController$lambda$2(NavController.this, configuration, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupWithNavController$lambda$2(NavController navController, AppBarConfiguration configuration, View view) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(configuration, "$configuration");
        navigateUp(navController, configuration);
    }

    @JvmStatic
    public static final void setupWithNavController(final NavigationView navigationView, final NavController navController) {
        Intrinsics.checkNotNullParameter(navigationView, "navigationView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: androidx.navigation.ui.NavigationUI$$ExternalSyntheticLambda3
            @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                boolean z;
                z = NavigationUI.setupWithNavController$lambda$3(NavController.this, navigationView, menuItem);
                return z;
            }
        });
        final WeakReference weakReference = new WeakReference(navigationView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$4
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
                Intrinsics.checkNotNullParameter(controller, "controller");
                Intrinsics.checkNotNullParameter(destination, "destination");
                NavigationView navigationView2 = weakReference.get();
                if (navigationView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (destination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationView2.getMenu();
                Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                    item.setChecked(NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$3(NavController navController, NavigationView navigationView, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(navigationView, "$navigationView");
        Intrinsics.checkNotNullParameter(item, "item");
        boolean onNavDestinationSelected = onNavDestinationSelected(item, navController);
        if (onNavDestinationSelected) {
            ViewParent parent = navigationView.getParent();
            if (parent instanceof Openable) {
                ((Openable) parent).close();
            } else {
                BottomSheetBehavior<?> findBottomSheetBehavior = findBottomSheetBehavior(navigationView);
                if (findBottomSheetBehavior != null) {
                    findBottomSheetBehavior.setState(5);
                }
            }
        }
        return onNavDestinationSelected;
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(final NavigationView navigationView, final NavController navController, final boolean saveState) {
        Intrinsics.checkNotNullParameter(navigationView, "navigationView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        if (!(!saveState)) {
            throw new IllegalStateException("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default".toString());
        }
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: androidx.navigation.ui.NavigationUI$$ExternalSyntheticLambda0
            @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                boolean z;
                z = NavigationUI.setupWithNavController$lambda$5(NavController.this, saveState, navigationView, menuItem);
                return z;
            }
        });
        final WeakReference weakReference = new WeakReference(navigationView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$7
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
                Intrinsics.checkNotNullParameter(controller, "controller");
                Intrinsics.checkNotNullParameter(destination, "destination");
                NavigationView navigationView2 = weakReference.get();
                if (navigationView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (destination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationView2.getMenu();
                Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                    item.setChecked(NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$5(NavController navController, boolean z, NavigationView navigationView, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(navigationView, "$navigationView");
        Intrinsics.checkNotNullParameter(item, "item");
        boolean onNavDestinationSelected = onNavDestinationSelected(item, navController, z);
        if (onNavDestinationSelected) {
            ViewParent parent = navigationView.getParent();
            if (parent instanceof Openable) {
                ((Openable) parent).close();
            } else {
                BottomSheetBehavior<?> findBottomSheetBehavior = findBottomSheetBehavior(navigationView);
                if (findBottomSheetBehavior != null) {
                    findBottomSheetBehavior.setState(5);
                }
            }
        }
        return onNavDestinationSelected;
    }

    @JvmStatic
    public static final BottomSheetBehavior<?> findBottomSheetBehavior(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            Object parent = view.getParent();
            if (parent instanceof View) {
                return findBottomSheetBehavior((View) parent);
            }
            return null;
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        return null;
    }

    @JvmStatic
    public static final void setupWithNavController(NavigationBarView navigationBarView, final NavController navController) {
        Intrinsics.checkNotNullParameter(navigationBarView, "navigationBarView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        navigationBarView.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() { // from class: androidx.navigation.ui.NavigationUI$$ExternalSyntheticLambda2
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                boolean z;
                z = NavigationUI.setupWithNavController$lambda$6(NavController.this, menuItem);
                return z;
            }
        });
        final WeakReference weakReference = new WeakReference(navigationBarView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$9
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
                Intrinsics.checkNotNullParameter(controller, "controller");
                Intrinsics.checkNotNullParameter(destination, "destination");
                NavigationBarView navigationBarView2 = weakReference.get();
                if (navigationBarView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (destination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationBarView2.getMenu();
                Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                    if (NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId())) {
                        item.setChecked(true);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$6(NavController navController, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(item, "item");
        return onNavDestinationSelected(item, navController);
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(NavigationBarView navigationBarView, final NavController navController, final boolean saveState) {
        Intrinsics.checkNotNullParameter(navigationBarView, "navigationBarView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        if (!(!saveState)) {
            throw new IllegalStateException("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default".toString());
        }
        navigationBarView.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() { // from class: androidx.navigation.ui.NavigationUI$$ExternalSyntheticLambda5
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                boolean z;
                z = NavigationUI.setupWithNavController$lambda$8(NavController.this, saveState, menuItem);
                return z;
            }
        });
        final WeakReference weakReference = new WeakReference(navigationBarView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$12
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
                Intrinsics.checkNotNullParameter(controller, "controller");
                Intrinsics.checkNotNullParameter(destination, "destination");
                NavigationBarView navigationBarView2 = weakReference.get();
                if (navigationBarView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (destination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationBarView2.getMenu();
                Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                    if (NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId())) {
                        item.setChecked(true);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$8(NavController navController, boolean z, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(item, "item");
        return onNavDestinationSelected(item, navController, z);
    }

    @JvmStatic
    public static final boolean matchDestination$navigation_ui_release(NavDestination navDestination, int i) {
        Intrinsics.checkNotNullParameter(navDestination, "<this>");
        Iterator<NavDestination> it = NavDestination.INSTANCE.getHierarchy(navDestination).iterator();
        while (it.hasNext()) {
            if (it.next().getId() == i) {
                return true;
            }
        }
        return false;
    }
}
