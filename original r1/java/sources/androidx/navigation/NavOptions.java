package androidx.navigation;

import io.sentry.protocol.OperatingSystem;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavOptions.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0019\u0018\u00002\u00020\u0001:\u0001\"BQ\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eBY\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\b\b\u0001\u0010\u000b\u001a\u00020\n\u0012\b\b\u0001\u0010\f\u001a\u00020\n\u0012\b\b\u0001\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u0010J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001c\u001a\u00020\nH\u0007J\b\u0010\u001d\u001a\u00020\nH\u0016J\u0006\u0010\u001e\u001a\u00020\u0003J\u0006\u0010\u001f\u001a\u00020\u0003J\u0006\u0010 \u001a\u00020\u0003J\u0006\u0010!\u001a\u00020\u0003R\u0013\u0010\t\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u000b\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0013\u0010\f\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0013\u0010\r\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0014\u0010\u000f\u001a\u00020\nX\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/navigation/NavOptions;", "", "singleTop", "", "restoreState", "popUpToRoute", "", "popUpToInclusive", "popUpToSaveState", "enterAnim", "", "exitAnim", "popEnterAnim", "popExitAnim", "(ZZLjava/lang/String;ZZIIII)V", "popUpToId", "(ZZIZZIIII)V", "getEnterAnim", "()I", "getExitAnim", "getPopEnterAnim", "getPopExitAnim", "getPopUpToId", "<set-?>", "getPopUpToRoute", "()Ljava/lang/String;", "equals", "other", "getPopUpTo", "hashCode", "isPopUpToInclusive", "shouldLaunchSingleTop", "shouldPopUpToSaveState", "shouldRestoreState", "Builder", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavOptions {
    private final int enterAnim;
    private final int exitAnim;
    private final int popEnterAnim;
    private final int popExitAnim;
    private final int popUpToId;
    private final boolean popUpToInclusive;
    private String popUpToRoute;
    private final boolean popUpToSaveState;
    private final boolean restoreState;
    private final boolean singleTop;

    public final int getEnterAnim() {
        return this.enterAnim;
    }

    public final int getExitAnim() {
        return this.exitAnim;
    }

    public final int getPopEnterAnim() {
        return this.popEnterAnim;
    }

    public final int getPopExitAnim() {
        return this.popExitAnim;
    }

    @Deprecated(message = "Use popUpToId instead.", replaceWith = @ReplaceWith(expression = "popUpToId", imports = {}))
    /* renamed from: getPopUpTo, reason: from getter */
    public final int getPopUpToId() {
        return this.popUpToId;
    }

    public final int getPopUpToId() {
        return this.popUpToId;
    }

    public final String getPopUpToRoute() {
        return this.popUpToRoute;
    }

    /* renamed from: isPopUpToInclusive, reason: from getter */
    public final boolean getPopUpToInclusive() {
        return this.popUpToInclusive;
    }

    /* renamed from: shouldLaunchSingleTop, reason: from getter */
    public final boolean getSingleTop() {
        return this.singleTop;
    }

    /* renamed from: shouldPopUpToSaveState, reason: from getter */
    public final boolean getPopUpToSaveState() {
        return this.popUpToSaveState;
    }

    /* renamed from: shouldRestoreState, reason: from getter */
    public final boolean getRestoreState() {
        return this.restoreState;
    }

    public NavOptions(boolean z, boolean z2, int i, boolean z3, boolean z4, int i2, int i3, int i4, int i5) {
        this.singleTop = z;
        this.restoreState = z2;
        this.popUpToId = i;
        this.popUpToInclusive = z3;
        this.popUpToSaveState = z4;
        this.enterAnim = i2;
        this.exitAnim = i3;
        this.popEnterAnim = i4;
        this.popExitAnim = i5;
    }

    public NavOptions(boolean z, boolean z2, String str, boolean z3, boolean z4, int i, int i2, int i3, int i4) {
        this(z, z2, NavDestination.INSTANCE.createRoute(str).hashCode(), z3, z4, i, i2, i3, i4);
        this.popUpToRoute = str;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        NavOptions navOptions = (NavOptions) other;
        return this.singleTop == navOptions.singleTop && this.restoreState == navOptions.restoreState && this.popUpToId == navOptions.popUpToId && Intrinsics.areEqual(this.popUpToRoute, navOptions.popUpToRoute) && this.popUpToInclusive == navOptions.popUpToInclusive && this.popUpToSaveState == navOptions.popUpToSaveState && this.enterAnim == navOptions.enterAnim && this.exitAnim == navOptions.exitAnim && this.popEnterAnim == navOptions.popEnterAnim && this.popExitAnim == navOptions.popExitAnim;
    }

    public int hashCode() {
        int i = (((((getSingleTop() ? 1 : 0) * 31) + (getRestoreState() ? 1 : 0)) * 31) + this.popUpToId) * 31;
        String str = this.popUpToRoute;
        return ((((((((((((i + (str != null ? str.hashCode() : 0)) * 31) + (getPopUpToInclusive() ? 1 : 0)) * 31) + (getPopUpToSaveState() ? 1 : 0)) * 31) + this.enterAnim) * 31) + this.exitAnim) * 31) + this.popEnterAnim) * 31) + this.popExitAnim;
    }

    /* compiled from: NavOptions.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\b\u0001\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\u0016\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0004J$\u0010\u0017\u001a\u00020\u00002\b\b\u0001\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\nH\u0007J$\u0010\u0017\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\nH\u0007J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\nR\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/navigation/NavOptions$Builder;", "", "()V", "enterAnim", "", "exitAnim", "popEnterAnim", "popExitAnim", "popUpToId", "popUpToInclusive", "", "popUpToRoute", "", "popUpToSaveState", "restoreState", "singleTop", OperatingSystem.JsonKeys.BUILD, "Landroidx/navigation/NavOptions;", "setEnterAnim", "setExitAnim", "setLaunchSingleTop", "setPopEnterAnim", "setPopExitAnim", "setPopUpTo", "destinationId", "inclusive", "saveState", "route", "setRestoreState", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Builder {
        private boolean popUpToInclusive;
        private String popUpToRoute;
        private boolean popUpToSaveState;
        private boolean restoreState;
        private boolean singleTop;
        private int popUpToId = -1;
        private int enterAnim = -1;
        private int exitAnim = -1;
        private int popEnterAnim = -1;
        private int popExitAnim = -1;

        public final Builder setEnterAnim(int enterAnim) {
            this.enterAnim = enterAnim;
            return this;
        }

        public final Builder setExitAnim(int exitAnim) {
            this.exitAnim = exitAnim;
            return this;
        }

        public final Builder setLaunchSingleTop(boolean singleTop) {
            this.singleTop = singleTop;
            return this;
        }

        public final Builder setPopEnterAnim(int popEnterAnim) {
            this.popEnterAnim = popEnterAnim;
            return this;
        }

        public final Builder setPopExitAnim(int popExitAnim) {
            this.popExitAnim = popExitAnim;
            return this;
        }

        public final Builder setPopUpTo(int i, boolean z) {
            return setPopUpTo$default(this, i, z, false, 4, (Object) null);
        }

        public final Builder setPopUpTo(int destinationId, boolean inclusive, boolean saveState) {
            this.popUpToId = destinationId;
            this.popUpToRoute = null;
            this.popUpToInclusive = inclusive;
            this.popUpToSaveState = saveState;
            return this;
        }

        public final Builder setPopUpTo(String str, boolean z) {
            return setPopUpTo$default(this, str, z, false, 4, (Object) null);
        }

        public final Builder setPopUpTo(String route, boolean inclusive, boolean saveState) {
            this.popUpToRoute = route;
            this.popUpToId = -1;
            this.popUpToInclusive = inclusive;
            this.popUpToSaveState = saveState;
            return this;
        }

        public final Builder setRestoreState(boolean restoreState) {
            this.restoreState = restoreState;
            return this;
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, int i, boolean z, boolean z2, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(i, z, z2);
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, String str, boolean z, boolean z2, int i, Object obj) {
            if ((i & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(str, z, z2);
        }

        public final NavOptions build() {
            if (this.popUpToRoute != null) {
                return new NavOptions(this.singleTop, this.restoreState, this.popUpToRoute, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
            }
            return new NavOptions(this.singleTop, this.restoreState, this.popUpToId, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }
    }
}
