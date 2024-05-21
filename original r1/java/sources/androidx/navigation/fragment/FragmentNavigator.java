package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.NavigatorState;
import androidx.navigation.fragment.FragmentNavigator;
import io.sentry.Session;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.Request;
import io.sentry.protocol.SentryThread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: FragmentNavigator.kt */
@Navigator.Name(Request.JsonKeys.FRAGMENT)
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0017\u0018\u0000 ;2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004:;<=B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020!H\u0000¢\u0006\u0002\b\"J\u0018\u0010#\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010$\u001a\u00020\u0002H\u0016J\u001a\u0010%\u001a\u00020&2\u0006\u0010\u001f\u001a\u00020\r2\b\u0010'\u001a\u0004\u0018\u00010(H\u0002J*\u0010)\u001a\u00020\u001e2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00122\b\u0010+\u001a\u0004\u0018\u00010,H\u0017J$\u0010-\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\r2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010/H\u0002J*\u0010-\u001a\u00020\u001c2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u00102\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\rH\u0016J\u0010\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020,H\u0016J\n\u00106\u001a\u0004\u0018\u00010,H\u0016J\u0018\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\r2\u0006\u00105\u001a\u000209H\u0016R \u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00160\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u001aX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/FragmentNavigator$Destination;", "context", "Landroid/content/Context;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "containerId", "", "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V", "backStack", "Lkotlinx/coroutines/flow/StateFlow;", "", "Landroidx/navigation/NavBackStackEntry;", "getBackStack$navigation_fragment_release", "()Lkotlinx/coroutines/flow/StateFlow;", "entriesToPop", "", "", "getEntriesToPop$navigation_fragment_release", "()Ljava/util/Set;", "fragmentObserver", "Landroidx/lifecycle/LifecycleEventObserver;", "fragmentViewObserver", "Lkotlin/Function1;", "savedIds", "", "attachClearViewModel", "", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "entry", SentryThread.JsonKeys.STATE, "Landroidx/navigation/NavigatorState;", "attachClearViewModel$navigation_fragment_release", "attachObservers", "createDestination", "createFragmentTransaction", "Landroidx/fragment/app/FragmentTransaction;", "navOptions", "Landroidx/navigation/NavOptions;", "instantiateFragment", "className", "args", "Landroid/os/Bundle;", "navigate", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "entries", "onAttach", "onLaunchSingleTop", "backStackEntry", "onRestoreState", "savedState", "onSaveState", "popBackStack", "popUpTo", "", "ClearEntryStateViewModel", "Companion", "Destination", "Extras", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class FragmentNavigator extends Navigator<Destination> {
    private static final Companion Companion = new Companion(null);
    private static final String KEY_SAVED_IDS = "androidx-nav-fragment:navigator:savedIds";
    private static final String TAG = "FragmentNavigator";
    private final int containerId;
    private final Context context;
    private final FragmentManager fragmentManager;
    private final LifecycleEventObserver fragmentObserver;
    private final Function1<NavBackStackEntry, LifecycleEventObserver> fragmentViewObserver;
    private final Set<String> savedIds;

    public FragmentNavigator(Context context, FragmentManager fragmentManager, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.containerId = i;
        this.savedIds = new LinkedHashSet();
        this.fragmentObserver = new LifecycleEventObserver() { // from class: androidx.navigation.fragment.FragmentNavigator$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                FragmentNavigator.fragmentObserver$lambda$2(FragmentNavigator.this, lifecycleOwner, event);
            }
        };
        this.fragmentViewObserver = new FragmentNavigator$fragmentViewObserver$1(this);
    }

    public final Set<String> getEntriesToPop$navigation_fragment_release() {
        Set minus = SetsKt.minus((Set) getState().getTransitionsInProgress().getValue(), (Iterable) CollectionsKt.toSet(getState().getBackStack().getValue()));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(minus, 10));
        Iterator it = minus.iterator();
        while (it.hasNext()) {
            arrayList.add(((NavBackStackEntry) it.next()).getId());
        }
        return CollectionsKt.toSet(arrayList);
    }

    public final StateFlow<List<NavBackStackEntry>> getBackStack$navigation_fragment_release() {
        return getState().getBackStack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fragmentObserver$lambda$2(FragmentNavigator this$0, LifecycleOwner source, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            Fragment fragment = (Fragment) source;
            Object obj = null;
            for (Object obj2 : this$0.getState().getTransitionsInProgress().getValue()) {
                if (Intrinsics.areEqual(((NavBackStackEntry) obj2).getId(), fragment.getTag())) {
                    obj = obj2;
                }
            }
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            if (navBackStackEntry == null || this$0.getState().getBackStack().getValue().contains(navBackStackEntry)) {
                return;
            }
            this$0.getState().markTransitionComplete(navBackStackEntry);
        }
    }

    @Override // androidx.navigation.Navigator
    public void onAttach(final NavigatorState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        super.onAttach(state);
        this.fragmentManager.addFragmentOnAttachListener(new FragmentOnAttachListener() { // from class: androidx.navigation.fragment.FragmentNavigator$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentOnAttachListener
            public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
                FragmentNavigator.onAttach$lambda$4(NavigatorState.this, this, fragmentManager, fragment);
            }
        });
        this.fragmentManager.addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: androidx.navigation.fragment.FragmentNavigator$onAttach$2
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChanged() {
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChangeStarted(Fragment fragment, boolean pop) {
                NavBackStackEntry navBackStackEntry;
                Intrinsics.checkNotNullParameter(fragment, "fragment");
                if (pop) {
                    List<NavBackStackEntry> value = NavigatorState.this.getBackStack().getValue();
                    ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            navBackStackEntry = null;
                            break;
                        } else {
                            navBackStackEntry = listIterator.previous();
                            if (Intrinsics.areEqual(navBackStackEntry.getId(), fragment.getTag())) {
                                break;
                            }
                        }
                    }
                    NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                    if (navBackStackEntry2 != null) {
                        NavigatorState.this.prepareForTransition(navBackStackEntry2);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChangeCommitted(Fragment fragment, boolean pop) {
                Object obj;
                Intrinsics.checkNotNullParameter(fragment, "fragment");
                List plus = CollectionsKt.plus((Collection) NavigatorState.this.getBackStack().getValue(), (Iterable) NavigatorState.this.getTransitionsInProgress().getValue());
                ListIterator listIterator = plus.listIterator(plus.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        obj = null;
                        break;
                    } else {
                        obj = listIterator.previous();
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj).getId(), fragment.getTag())) {
                            break;
                        }
                    }
                }
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!pop && navBackStackEntry == null) {
                    throw new IllegalArgumentException(("The fragment " + fragment + " is unknown to the FragmentNavigator. Please use the navigate() function to add fragments to the FragmentNavigator managed FragmentManager.").toString());
                }
                if (navBackStackEntry != null) {
                    this.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry, NavigatorState.this);
                    if (pop && this.getEntriesToPop$navigation_fragment_release().isEmpty() && fragment.isRemoving()) {
                        NavigatorState.this.popWithTransition(navBackStackEntry, false);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAttach$lambda$4(NavigatorState state, FragmentNavigator this$0, FragmentManager fragmentManager, Fragment fragment) {
        NavBackStackEntry navBackStackEntry;
        Intrinsics.checkNotNullParameter(state, "$state");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragmentManager, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        List<NavBackStackEntry> value = state.getBackStack().getValue();
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            } else {
                navBackStackEntry = listIterator.previous();
                if (Intrinsics.areEqual(navBackStackEntry.getId(), fragment.getTag())) {
                    break;
                }
            }
        }
        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
        if (navBackStackEntry2 != null) {
            this$0.attachObservers(navBackStackEntry2, fragment);
            this$0.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry2, state);
        }
    }

    private final void attachObservers(final NavBackStackEntry entry, final Fragment fragment) {
        fragment.getViewLifecycleOwnerLiveData().observe(fragment, new FragmentNavigator$sam$androidx_lifecycle_Observer$0(new Function1<LifecycleOwner, Unit>() { // from class: androidx.navigation.fragment.FragmentNavigator$attachObservers$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LifecycleOwner lifecycleOwner) {
                invoke2(lifecycleOwner);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LifecycleOwner lifecycleOwner) {
                Function1 function1;
                if (lifecycleOwner == null || CollectionsKt.contains(FragmentNavigator.this.getEntriesToPop$navigation_fragment_release(), fragment.getTag())) {
                    return;
                }
                Lifecycle lifecycle = fragment.getViewLifecycleOwner().getLifecycle();
                if (lifecycle.getState().isAtLeast(Lifecycle.State.CREATED)) {
                    function1 = FragmentNavigator.this.fragmentViewObserver;
                    lifecycle.addObserver((LifecycleObserver) function1.invoke(entry));
                }
            }
        }));
        fragment.getLifecycle().addObserver(this.fragmentObserver);
    }

    public final void attachClearViewModel$navigation_fragment_release(Fragment fragment, final NavBackStackEntry entry, final NavigatorState state) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(entry, "entry");
        Intrinsics.checkNotNullParameter(state, "state");
        ViewModelStore viewModelStore = fragment.getViewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "fragment.viewModelStore");
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        initializerViewModelFactoryBuilder.addInitializer(Reflection.getOrCreateKotlinClass(ClearEntryStateViewModel.class), new Function1<CreationExtras, ClearEntryStateViewModel>() { // from class: androidx.navigation.fragment.FragmentNavigator$attachClearViewModel$viewModel$1$1
            @Override // kotlin.jvm.functions.Function1
            public final FragmentNavigator.ClearEntryStateViewModel invoke(CreationExtras initializer) {
                Intrinsics.checkNotNullParameter(initializer, "$this$initializer");
                return new FragmentNavigator.ClearEntryStateViewModel();
            }
        });
        ((ClearEntryStateViewModel) new ViewModelProvider(viewModelStore, initializerViewModelFactoryBuilder.build(), CreationExtras.Empty.INSTANCE).get(ClearEntryStateViewModel.class)).setCompleteTransition(new WeakReference<>(new Function0<Unit>() { // from class: androidx.navigation.fragment.FragmentNavigator$attachClearViewModel$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NavigatorState navigatorState = state;
                Iterator<T> it = navigatorState.getTransitionsInProgress().getValue().iterator();
                while (it.hasNext()) {
                    navigatorState.markTransitionComplete((NavBackStackEntry) it.next());
                }
            }
        }));
    }

    @Override // androidx.navigation.Navigator
    public void popBackStack(NavBackStackEntry popUpTo, boolean savedState) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        List<NavBackStackEntry> subList = value.subList(value.indexOf(popUpTo), value.size());
        if (savedState) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.first((List) value);
            for (NavBackStackEntry navBackStackEntry2 : CollectionsKt.reversed(subList)) {
                if (Intrinsics.areEqual(navBackStackEntry2, navBackStackEntry)) {
                    Log.i(TAG, "FragmentManager cannot save the state of the initial destination " + navBackStackEntry2);
                } else {
                    this.fragmentManager.saveBackStack(navBackStackEntry2.getId());
                    this.savedIds.add(navBackStackEntry2.getId());
                }
            }
        } else {
            this.fragmentManager.popBackStack(popUpTo.getId(), 1);
        }
        getState().popWithTransition(popUpTo, savedState);
    }

    @Override // androidx.navigation.Navigator
    public Destination createDestination() {
        return new Destination(this);
    }

    @Deprecated(message = "Set a custom {@link androidx.fragment.app.FragmentFactory} via\n      {@link FragmentManager#setFragmentFactory(FragmentFactory)} to control\n      instantiation of Fragments.")
    public Fragment instantiateFragment(Context context, FragmentManager fragmentManager, String className, Bundle args) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(className, "className");
        Fragment instantiate = fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), className);
        Intrinsics.checkNotNullExpressionValue(instantiate, "fragmentManager.fragment…t.classLoader, className)");
        return instantiate;
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> entries, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        Iterator<NavBackStackEntry> it = entries.iterator();
        while (it.hasNext()) {
            navigate(it.next(), navOptions, navigatorExtras);
        }
    }

    private final void navigate(NavBackStackEntry entry, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        boolean isEmpty = getState().getBackStack().getValue().isEmpty();
        if (navOptions != null && !isEmpty && navOptions.getRestoreState() && this.savedIds.remove(entry.getId())) {
            this.fragmentManager.restoreBackStack(entry.getId());
            getState().pushWithTransition(entry);
            return;
        }
        FragmentTransaction createFragmentTransaction = createFragmentTransaction(entry, navOptions);
        if (!isEmpty) {
            createFragmentTransaction.addToBackStack(entry.getId());
        }
        if (navigatorExtras instanceof Extras) {
            for (Map.Entry<View, String> entry2 : ((Extras) navigatorExtras).getSharedElements().entrySet()) {
                createFragmentTransaction.addSharedElement(entry2.getKey(), entry2.getValue());
            }
        }
        createFragmentTransaction.commit();
        getState().pushWithTransition(entry);
    }

    @Override // androidx.navigation.Navigator
    public void onLaunchSingleTop(NavBackStackEntry backStackEntry) {
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state");
            return;
        }
        FragmentTransaction createFragmentTransaction = createFragmentTransaction(backStackEntry, null);
        if (getState().getBackStack().getValue().size() > 1) {
            this.fragmentManager.popBackStack(backStackEntry.getId(), 1);
            createFragmentTransaction.addToBackStack(backStackEntry.getId());
        }
        createFragmentTransaction.commit();
        getState().onLaunchSingleTop(backStackEntry);
    }

    private final FragmentTransaction createFragmentTransaction(NavBackStackEntry entry, NavOptions navOptions) {
        NavDestination destination = entry.getDestination();
        Intrinsics.checkNotNull(destination, "null cannot be cast to non-null type androidx.navigation.fragment.FragmentNavigator.Destination");
        Bundle arguments = entry.getArguments();
        String className = ((Destination) destination).getClassName();
        if (className.charAt(0) == '.') {
            className = this.context.getPackageName() + className;
        }
        Fragment instantiate = this.fragmentManager.getFragmentFactory().instantiate(this.context.getClassLoader(), className);
        Intrinsics.checkNotNullExpressionValue(instantiate, "fragmentManager.fragment…t.classLoader, className)");
        instantiate.setArguments(arguments);
        FragmentTransaction beginTransaction = this.fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "fragmentManager.beginTransaction()");
        int enterAnim = navOptions != null ? navOptions.getEnterAnim() : -1;
        int exitAnim = navOptions != null ? navOptions.getExitAnim() : -1;
        int popEnterAnim = navOptions != null ? navOptions.getPopEnterAnim() : -1;
        int popExitAnim = navOptions != null ? navOptions.getPopExitAnim() : -1;
        if (enterAnim != -1 || exitAnim != -1 || popEnterAnim != -1 || popExitAnim != -1) {
            if (enterAnim == -1) {
                enterAnim = 0;
            }
            if (exitAnim == -1) {
                exitAnim = 0;
            }
            if (popEnterAnim == -1) {
                popEnterAnim = 0;
            }
            beginTransaction.setCustomAnimations(enterAnim, exitAnim, popEnterAnim, popExitAnim != -1 ? popExitAnim : 0);
        }
        beginTransaction.replace(this.containerId, instantiate, entry.getId());
        beginTransaction.setPrimaryNavigationFragment(instantiate);
        beginTransaction.setReorderingAllowed(true);
        return beginTransaction;
    }

    @Override // androidx.navigation.Navigator
    public Bundle onSaveState() {
        if (this.savedIds.isEmpty()) {
            return null;
        }
        return BundleKt.bundleOf(TuplesKt.to(KEY_SAVED_IDS, new ArrayList(this.savedIds)));
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        ArrayList<String> stringArrayList = savedState.getStringArrayList(KEY_SAVED_IDS);
        if (stringArrayList != null) {
            this.savedIds.clear();
            CollectionsKt.addAll(this.savedIds, stringArrayList);
        }
    }

    /* compiled from: FragmentNavigator.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0017J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\b\u0010\u001a\u001a\u00020\tH\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Destination;", "Landroidx/navigation/NavDestination;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "(Landroidx/navigation/NavigatorProvider;)V", "fragmentNavigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "_className", "", "className", "getClassName", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "onInflate", "", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "setClassName", "toString", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static class Destination extends NavDestination {
        private String _className;

        public final Destination setClassName(String className) {
            Intrinsics.checkNotNullParameter(className, "className");
            this._className = className;
            return this;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> fragmentNavigator) {
            super(fragmentNavigator);
            Intrinsics.checkNotNullParameter(fragmentNavigator, "fragmentNavigator");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.getNavigator(FragmentNavigator.class));
            Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        }

        @Override // androidx.navigation.NavDestination
        public void onInflate(Context context, AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, R.styleable.FragmentNavigator);
            Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…leable.FragmentNavigator)");
            String string = obtainAttributes.getString(R.styleable.FragmentNavigator_android_name);
            if (string != null) {
                setClassName(string);
            }
            Unit unit = Unit.INSTANCE;
            obtainAttributes.recycle();
        }

        public final String getClassName() {
            String str = this._className;
            if (str == null) {
                throw new IllegalStateException("Fragment class was not set".toString());
            }
            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type kotlin.String");
            return str;
        }

        @Override // androidx.navigation.NavDestination
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this._className;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
            return sb2;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(Object other) {
            return other != null && (other instanceof Destination) && super.equals(other) && Intrinsics.areEqual(this._className, ((Destination) other)._className);
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            String str = this._className;
            return hashCode + (str != null ? str.hashCode() : 0);
        }
    }

    /* compiled from: FragmentNavigator.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\fB\u001b\b\u0000\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Extras;", "Landroidx/navigation/Navigator$Extras;", "sharedElements", "", "Landroid/view/View;", "", "(Ljava/util/Map;)V", "_sharedElements", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "getSharedElements", "()Ljava/util/Map;", "Builder", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Extras implements Navigator.Extras {
        private final LinkedHashMap<View, String> _sharedElements;

        public Extras(Map<View, String> sharedElements) {
            Intrinsics.checkNotNullParameter(sharedElements, "sharedElements");
            LinkedHashMap<View, String> linkedHashMap = new LinkedHashMap<>();
            this._sharedElements = linkedHashMap;
            linkedHashMap.putAll(sharedElements);
        }

        public final Map<View, String> getSharedElements() {
            return MapsKt.toMap(this._sharedElements);
        }

        /* compiled from: FragmentNavigator.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0006J\u001a\u0010\u000b\u001a\u00020\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\rJ\u0006\u0010\u000e\u001a\u00020\u000fR*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;", "", "()V", "_sharedElements", "Ljava/util/LinkedHashMap;", "Landroid/view/View;", "", "Lkotlin/collections/LinkedHashMap;", "addSharedElement", "sharedElement", "name", "addSharedElements", "sharedElements", "", OperatingSystem.JsonKeys.BUILD, "Landroidx/navigation/fragment/FragmentNavigator$Extras;", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class Builder {
            private final LinkedHashMap<View, String> _sharedElements = new LinkedHashMap<>();

            public final Builder addSharedElements(Map<View, String> sharedElements) {
                Intrinsics.checkNotNullParameter(sharedElements, "sharedElements");
                for (Map.Entry<View, String> entry : sharedElements.entrySet()) {
                    addSharedElement(entry.getKey(), entry.getValue());
                }
                return this;
            }

            public final Builder addSharedElement(View sharedElement, String name) {
                Intrinsics.checkNotNullParameter(sharedElement, "sharedElement");
                Intrinsics.checkNotNullParameter(name, "name");
                this._sharedElements.put(sharedElement, name);
                return this;
            }

            public final Extras build() {
                return new Extras(this._sharedElements);
            }
        }
    }

    /* compiled from: FragmentNavigator.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Companion;", "", "()V", "KEY_SAVED_IDS", "", "TAG", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: FragmentNavigator.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0014R&\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "completeTransition", "Ljava/lang/ref/WeakReference;", "Lkotlin/Function0;", "", "getCompleteTransition", "()Ljava/lang/ref/WeakReference;", "setCompleteTransition", "(Ljava/lang/ref/WeakReference;)V", "onCleared", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class ClearEntryStateViewModel extends ViewModel {
        public WeakReference<Function0<Unit>> completeTransition;

        public final void setCompleteTransition(WeakReference<Function0<Unit>> weakReference) {
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            this.completeTransition = weakReference;
        }

        public final WeakReference<Function0<Unit>> getCompleteTransition() {
            WeakReference<Function0<Unit>> weakReference = this.completeTransition;
            if (weakReference != null) {
                return weakReference;
            }
            Intrinsics.throwUninitializedPropertyAccessException("completeTransition");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            Function0<Unit> function0 = getCompleteTransition().get();
            if (function0 != null) {
                function0.invoke();
            }
        }
    }
}
