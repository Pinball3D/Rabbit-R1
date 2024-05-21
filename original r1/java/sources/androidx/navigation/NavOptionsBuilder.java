package androidx.navigation;

import androidx.navigation.NavOptions;
import io.sentry.protocol.OperatingSystem;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: NavOptionsBuilder.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001f\u0010\"\u001a\u00020#2\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020#0%¢\u0006\u0002\b'J\r\u0010(\u001a\u00020)H\u0000¢\u0006\u0002\b*J+\u0010\u000e\u001a\u00020#2\b\b\u0001\u0010+\u001a\u00020\r2\u0019\b\u0002\u0010,\u001a\u0013\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020#0%¢\u0006\u0002\b'J)\u0010\u000e\u001a\u00020#2\u0006\u0010.\u001a\u00020\u00172\u0019\b\u0002\u0010,\u001a\u0013\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020#0%¢\u0006\u0002\b'R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR*\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r8F@GX\u0087\u000e¢\u0006\u0012\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r8\u0006@@X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R(\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\f\u001a\u0004\u0018\u00010\u0017@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR&\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000bR\u000e\u0010!\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Landroidx/navigation/NavOptionsBuilder;", "", "()V", "builder", "Landroidx/navigation/NavOptions$Builder;", "inclusive", "", "launchSingleTop", "getLaunchSingleTop", "()Z", "setLaunchSingleTop", "(Z)V", "value", "", "popUpTo", "getPopUpTo$annotations", "getPopUpTo", "()I", "setPopUpTo", "(I)V", "popUpToId", "getPopUpToId", "setPopUpToId$navigation_common_release", "", "popUpToRoute", "getPopUpToRoute", "()Ljava/lang/String;", "setPopUpToRoute", "(Ljava/lang/String;)V", "<set-?>", "restoreState", "getRestoreState", "setRestoreState", "saveState", "anim", "", "animBuilder", "Lkotlin/Function1;", "Landroidx/navigation/AnimBuilder;", "Lkotlin/ExtensionFunctionType;", OperatingSystem.JsonKeys.BUILD, "Landroidx/navigation/NavOptions;", "build$navigation_common_release", "id", "popUpToBuilder", "Landroidx/navigation/PopUpToBuilder;", "route", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@NavOptionsDsl
/* loaded from: classes2.dex */
public final class NavOptionsBuilder {
    private boolean inclusive;
    private boolean launchSingleTop;
    private String popUpToRoute;
    private boolean restoreState;
    private boolean saveState;
    private final NavOptions.Builder builder = new NavOptions.Builder();
    private int popUpToId = -1;

    @Deprecated(message = "Use the popUpToId property.")
    public static /* synthetic */ void getPopUpTo$annotations() {
    }

    public final boolean getLaunchSingleTop() {
        return this.launchSingleTop;
    }

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

    public final boolean getRestoreState() {
        return this.restoreState;
    }

    public final void setLaunchSingleTop(boolean z) {
        this.launchSingleTop = z;
    }

    public final void setPopUpToId$navigation_common_release(int i) {
        this.popUpToId = i;
        this.inclusive = false;
    }

    public final void setRestoreState(boolean z) {
        this.restoreState = z;
    }

    @Deprecated(message = "Use the popUpTo function and passing in the id.")
    public final void setPopUpTo(int i) {
        popUpTo$default(this, i, (Function1) null, 2, (Object) null);
    }

    private final void setPopUpToRoute(String str) {
        if (str != null) {
            if (!(!StringsKt.isBlank(str))) {
                throw new IllegalArgumentException("Cannot pop up to an empty route".toString());
            }
            this.popUpToRoute = str;
            this.inclusive = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popUpTo$default(NavOptionsBuilder navOptionsBuilder, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function1 = new Function1<PopUpToBuilder, Unit>() { // from class: androidx.navigation.NavOptionsBuilder$popUpTo$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(PopUpToBuilder popUpToBuilder) {
                    Intrinsics.checkNotNullParameter(popUpToBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PopUpToBuilder popUpToBuilder) {
                    invoke2(popUpToBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        navOptionsBuilder.popUpTo(i, (Function1<? super PopUpToBuilder, Unit>) function1);
    }

    public final void popUpTo(int id, Function1<? super PopUpToBuilder, Unit> popUpToBuilder) {
        Intrinsics.checkNotNullParameter(popUpToBuilder, "popUpToBuilder");
        setPopUpToId$navigation_common_release(id);
        setPopUpToRoute(null);
        PopUpToBuilder popUpToBuilder2 = new PopUpToBuilder();
        popUpToBuilder.invoke(popUpToBuilder2);
        this.inclusive = popUpToBuilder2.getInclusive();
        this.saveState = popUpToBuilder2.getSaveState();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popUpTo$default(NavOptionsBuilder navOptionsBuilder, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<PopUpToBuilder, Unit>() { // from class: androidx.navigation.NavOptionsBuilder$popUpTo$2
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(PopUpToBuilder popUpToBuilder) {
                    Intrinsics.checkNotNullParameter(popUpToBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PopUpToBuilder popUpToBuilder) {
                    invoke2(popUpToBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        navOptionsBuilder.popUpTo(str, (Function1<? super PopUpToBuilder, Unit>) function1);
    }

    public final void popUpTo(String route, Function1<? super PopUpToBuilder, Unit> popUpToBuilder) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(popUpToBuilder, "popUpToBuilder");
        setPopUpToRoute(route);
        setPopUpToId$navigation_common_release(-1);
        PopUpToBuilder popUpToBuilder2 = new PopUpToBuilder();
        popUpToBuilder.invoke(popUpToBuilder2);
        this.inclusive = popUpToBuilder2.getInclusive();
        this.saveState = popUpToBuilder2.getSaveState();
    }

    public final void anim(Function1<? super AnimBuilder, Unit> animBuilder) {
        Intrinsics.checkNotNullParameter(animBuilder, "animBuilder");
        AnimBuilder animBuilder2 = new AnimBuilder();
        animBuilder.invoke(animBuilder2);
        this.builder.setEnterAnim(animBuilder2.getEnter()).setExitAnim(animBuilder2.getExit()).setPopEnterAnim(animBuilder2.getPopEnter()).setPopExitAnim(animBuilder2.getPopExit());
    }

    public final NavOptions build$navigation_common_release() {
        NavOptions.Builder builder = this.builder;
        builder.setLaunchSingleTop(this.launchSingleTop);
        builder.setRestoreState(this.restoreState);
        String str = this.popUpToRoute;
        if (str != null) {
            builder.setPopUpTo(str, this.inclusive, this.saveState);
        } else {
            builder.setPopUpTo(this.popUpToId, this.inclusive, this.saveState);
        }
        return builder.build();
    }
}
