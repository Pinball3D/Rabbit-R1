package androidx.navigation.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavController;
import androidx.navigation.NavHost;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigation;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.fragment.FragmentNavigator;
import io.sentry.Session;
import io.sentry.protocol.Request;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavHostFragment.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00190\u0018H\u0015J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0017J\u0012\u0010\u001e\u001a\u00020\u001b2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0017J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\fH\u0015J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0015J&\u0010#\u001a\u0004\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\b\u0010(\u001a\u00020\u001bH\u0016J\"\u0010)\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0017J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020 H\u0017J\u001a\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u00162\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Landroidx/navigation/fragment/NavHostFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/navigation/NavHost;", "()V", "containerId", "", "getContainerId", "()I", "defaultNavHost", "", "graphId", "navController", "Landroidx/navigation/NavController;", "getNavController", "()Landroidx/navigation/NavController;", "navHostController", "Landroidx/navigation/NavHostController;", "getNavHostController$navigation_fragment_release", "()Landroidx/navigation/NavHostController;", "navHostController$delegate", "Lkotlin/Lazy;", "viewParent", "Landroid/view/View;", "createFragmentNavigator", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/FragmentNavigator$Destination;", "onAttach", "", "context", "Landroid/content/Context;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateNavController", "onCreateNavHostController", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onInflate", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "onSaveInstanceState", "outState", "onViewCreated", "view", "Companion", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class NavHostFragment extends Fragment implements NavHost {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String KEY_DEFAULT_NAV_HOST = "android-support-nav:fragment:defaultHost";
    public static final String KEY_GRAPH_ID = "android-support-nav:fragment:graphId";
    private static final String KEY_NAV_CONTROLLER_STATE = "android-support-nav:fragment:navControllerState";
    public static final String KEY_START_DESTINATION_ARGS = "android-support-nav:fragment:startDestinationArgs";
    private boolean defaultNavHost;
    private int graphId;

    /* renamed from: navHostController$delegate, reason: from kotlin metadata */
    private final Lazy navHostController = LazyKt.lazy(new NavHostFragment$navHostController$2(this));
    private View viewParent;

    @JvmStatic
    public static final NavHostFragment create(int i) {
        return INSTANCE.create(i);
    }

    @JvmStatic
    public static final NavHostFragment create(int i, Bundle bundle) {
        return INSTANCE.create(i, bundle);
    }

    @JvmStatic
    public static final NavController findNavController(Fragment fragment) {
        return INSTANCE.findNavController(fragment);
    }

    public final NavHostController getNavHostController$navigation_fragment_release() {
        return (NavHostController) this.navHostController.getValue();
    }

    @Override // androidx.navigation.NavHost
    public final NavController getNavController() {
        return getNavHostController$navigation_fragment_release();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (this.defaultNavHost) {
            getParentFragmentManager().beginTransaction().setPrimaryNavigationFragment(this).commit();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        getNavHostController$navigation_fragment_release();
        if (savedInstanceState != null && savedInstanceState.getBoolean(KEY_DEFAULT_NAV_HOST, false)) {
            this.defaultNavHost = true;
            getParentFragmentManager().beginTransaction().setPrimaryNavigationFragment(this).commit();
        }
        super.onCreate(savedInstanceState);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCreateNavHostController(NavHostController navHostController) {
        Intrinsics.checkNotNullParameter(navHostController, "navHostController");
        onCreateNavController(navHostController);
    }

    @Deprecated(message = "Override {@link #onCreateNavHostController(NavHostController)} to gain\n      access to the full {@link NavHostController} that is created by this NavHostFragment.")
    protected void onCreateNavController(NavController navController) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        NavigatorProvider navigatorProvider = navController.get_navigatorProvider();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        navigatorProvider.addNavigator(new DialogFragmentNavigator(requireContext, childFragmentManager));
        navController.get_navigatorProvider().addNavigator(createFragmentNavigator());
    }

    @Deprecated(message = "Use {@link #onCreateNavController(NavController)}")
    protected Navigator<? extends FragmentNavigator.Destination> createFragmentNavigator() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        return new FragmentNavigator(requireContext, childFragmentManager, getContainerId());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Context context = inflater.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "inflater.context");
        FragmentContainerView fragmentContainerView = new FragmentContainerView(context);
        fragmentContainerView.setId(getContainerId());
        return fragmentContainerView;
    }

    private final int getContainerId() {
        int id = getId();
        return (id == 0 || id == -1) ? R.id.nav_host_fragment_container : id;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (!(view instanceof ViewGroup)) {
            throw new IllegalStateException(("created host view " + view + " is not a ViewGroup").toString());
        }
        Navigation.setViewNavController(view, getNavHostController$navigation_fragment_release());
        if (view.getParent() != null) {
            Object parent = view.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
            View view2 = (View) parent;
            this.viewParent = view2;
            Intrinsics.checkNotNull(view2);
            if (view2.getId() == getId()) {
                View view3 = this.viewParent;
                Intrinsics.checkNotNull(view3);
                Navigation.setViewNavController(view3, getNavHostController$navigation_fragment_release());
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onInflate(Context context, AttributeSet attrs, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        super.onInflate(context, attrs, savedInstanceState);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, androidx.navigation.R.styleable.NavHost);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…yleable.NavHost\n        )");
        int resourceId = obtainStyledAttributes.getResourceId(androidx.navigation.R.styleable.NavHost_navGraph, 0);
        if (resourceId != 0) {
            this.graphId = resourceId;
        }
        Unit unit = Unit.INSTANCE;
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attrs, R.styleable.NavHostFragment);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes2, "context.obtainStyledAttr…tyleable.NavHostFragment)");
        if (obtainStyledAttributes2.getBoolean(R.styleable.NavHostFragment_defaultNavHost, false)) {
            this.defaultNavHost = true;
        }
        Unit unit2 = Unit.INSTANCE;
        obtainStyledAttributes2.recycle();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        if (this.defaultNavHost) {
            outState.putBoolean(KEY_DEFAULT_NAV_HOST, true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        View view = this.viewParent;
        if (view != null && Navigation.findNavController(view) == getNavHostController$navigation_fragment_release()) {
            Navigation.setViewNavController(view, null);
        }
        this.viewParent = null;
    }

    /* compiled from: NavHostFragment.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/navigation/fragment/NavHostFragment$Companion;", "", "()V", "KEY_DEFAULT_NAV_HOST", "", "KEY_GRAPH_ID", "KEY_NAV_CONTROLLER_STATE", "KEY_START_DESTINATION_ARGS", "create", "Landroidx/navigation/fragment/NavHostFragment;", "graphResId", "", "startDestinationArgs", "Landroid/os/Bundle;", "findNavController", "Landroidx/navigation/NavController;", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final NavHostFragment create(int i) {
            return create$default(this, i, null, 2, null);
        }

        private Companion() {
        }

        @JvmStatic
        public final NavController findNavController(Fragment fragment) {
            Dialog dialog;
            Window window;
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getParentFragment()) {
                if (fragment2 instanceof NavHostFragment) {
                    return ((NavHostFragment) fragment2).getNavHostController$navigation_fragment_release();
                }
                Fragment primaryNavigationFragment = fragment2.getParentFragmentManager().getPrimaryNavigationFragment();
                if (primaryNavigationFragment instanceof NavHostFragment) {
                    return ((NavHostFragment) primaryNavigationFragment).getNavHostController$navigation_fragment_release();
                }
            }
            View view = fragment.getView();
            if (view != null) {
                return Navigation.findNavController(view);
            }
            View view2 = null;
            DialogFragment dialogFragment = fragment instanceof DialogFragment ? (DialogFragment) fragment : null;
            if (dialogFragment != null && (dialog = dialogFragment.getDialog()) != null && (window = dialog.getWindow()) != null) {
                view2 = window.getDecorView();
            }
            if (view2 != null) {
                return Navigation.findNavController(view2);
            }
            throw new IllegalStateException("Fragment " + fragment + " does not have a NavController set");
        }

        public static /* synthetic */ NavHostFragment create$default(Companion companion, int i, Bundle bundle, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                bundle = null;
            }
            return companion.create(i, bundle);
        }

        @JvmStatic
        public final NavHostFragment create(int graphResId, Bundle startDestinationArgs) {
            Bundle bundle;
            if (graphResId != 0) {
                bundle = new Bundle();
                bundle.putInt(NavHostFragment.KEY_GRAPH_ID, graphResId);
            } else {
                bundle = null;
            }
            if (startDestinationArgs != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBundle(NavHostFragment.KEY_START_DESTINATION_ARGS, startDestinationArgs);
            }
            NavHostFragment navHostFragment = new NavHostFragment();
            if (bundle != null) {
                navHostFragment.setArguments(bundle);
            }
            return navHostFragment;
        }
    }
}
