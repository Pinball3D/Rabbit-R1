package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavDestination;
import io.sentry.protocol.SentryThread;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* compiled from: Navigator.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0002%&B\u0005¢\u0006\u0002\u0010\u0004J\r\u0010\u000e\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u000fJ5\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00028\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0002\u0010\u0018J*\u0010\u0010\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u0006H\u0017J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0013H\u0016J\n\u0010\"\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010#\u001a\u00020\bH\u0016J\u0018\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\bH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006'"}, d2 = {"Landroidx/navigation/Navigator;", "D", "Landroidx/navigation/NavDestination;", "", "()V", "_state", "Landroidx/navigation/NavigatorState;", "<set-?>", "", "isAttached", "()Z", SentryThread.JsonKeys.STATE, "getState", "()Landroidx/navigation/NavigatorState;", "createDestination", "()Landroidx/navigation/NavDestination;", "navigate", "destination", "args", "Landroid/os/Bundle;", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;", "", "entries", "", "Landroidx/navigation/NavBackStackEntry;", "onAttach", "onLaunchSingleTop", "backStackEntry", "onRestoreState", "savedState", "onSaveState", "popBackStack", "popUpTo", "Extras", "Name", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class Navigator<D extends NavDestination> {
    private NavigatorState _state;
    private boolean isAttached;

    /* compiled from: Navigator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/navigation/Navigator$Extras;", "", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public interface Extras {
    }

    /* compiled from: Navigator.kt */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\u0002\u0018\u00002\u00020\u0001B\b\u0012\u0006\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/Navigator$Name;", "", "value", "", "()Ljava/lang/String;", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS, AnnotationTarget.CLASS})
    @Retention(RetentionPolicy.RUNTIME)
    @kotlin.annotation.Retention(AnnotationRetention.RUNTIME)
    /* loaded from: classes2.dex */
    public @interface Name {
        String value();
    }

    public abstract D createDestination();

    /* renamed from: isAttached, reason: from getter */
    public final boolean getIsAttached() {
        return this.isAttached;
    }

    public NavDestination navigate(D destination, Bundle args, NavOptions navOptions, Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        return destination;
    }

    public void onAttach(NavigatorState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this._state = state;
        this.isAttached = true;
    }

    public void onRestoreState(Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
    }

    public Bundle onSaveState() {
        return null;
    }

    public boolean popBackStack() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final NavigatorState getState() {
        NavigatorState navigatorState = this._state;
        if (navigatorState != null) {
            return navigatorState;
        }
        throw new IllegalStateException("You cannot access the Navigator's state until the Navigator is attached".toString());
    }

    public void navigate(List<NavBackStackEntry> entries, final NavOptions navOptions, final Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        Iterator it = SequencesKt.filterNotNull(SequencesKt.map(CollectionsKt.asSequence(entries), new Function1<NavBackStackEntry, NavBackStackEntry>(this) { // from class: androidx.navigation.Navigator$navigate$1
            final /* synthetic */ Navigator<D> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final NavBackStackEntry invoke(NavBackStackEntry backStackEntry) {
                NavDestination navigate;
                Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
                NavDestination destination = backStackEntry.getDestination();
                if (!(destination instanceof NavDestination)) {
                    destination = null;
                }
                if (destination != null && (navigate = this.this$0.navigate(destination, backStackEntry.getArguments(), navOptions, navigatorExtras)) != null) {
                    return Intrinsics.areEqual(navigate, destination) ? backStackEntry : this.this$0.getState().createBackStackEntry(navigate, navigate.addInDefaultArgs(backStackEntry.getArguments()));
                }
                return null;
            }
        })).iterator();
        while (it.hasNext()) {
            getState().push((NavBackStackEntry) it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onLaunchSingleTop(NavBackStackEntry backStackEntry) {
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        NavDestination destination = backStackEntry.getDestination();
        if (!(destination instanceof NavDestination)) {
            destination = null;
        }
        if (destination == null) {
            return;
        }
        navigate(destination, null, NavOptionsBuilderKt.navOptions(new Function1<NavOptionsBuilder, Unit>() { // from class: androidx.navigation.Navigator$onLaunchSingleTop$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NavOptionsBuilder navOptionsBuilder) {
                invoke2(navOptionsBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NavOptionsBuilder navOptions) {
                Intrinsics.checkNotNullParameter(navOptions, "$this$navOptions");
                navOptions.setLaunchSingleTop(true);
            }
        }), null);
        getState().onLaunchSingleTop(backStackEntry);
    }

    public void popBackStack(NavBackStackEntry popUpTo, boolean savedState) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        if (!value.contains(popUpTo)) {
            throw new IllegalStateException(("popBackStack was called with " + popUpTo + " which does not exist in back stack " + value).toString());
        }
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        NavBackStackEntry navBackStackEntry = null;
        while (popBackStack()) {
            navBackStackEntry = listIterator.previous();
            if (Intrinsics.areEqual(navBackStackEntry, popUpTo)) {
                break;
            }
        }
        if (navBackStackEntry != null) {
            getState().pop(navBackStackEntry, savedState);
        }
    }
}
