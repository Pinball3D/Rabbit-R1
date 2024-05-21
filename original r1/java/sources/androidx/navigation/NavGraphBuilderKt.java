package androidx.navigation;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavGraphBuilder.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a9\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u000b*\u00020\f2\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u000b*\u00020\f2\u0006\u0010\u0005\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"navigation", "", "Landroidx/navigation/NavGraphBuilder;", "id", "", "startDestination", "builder", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "", "route", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavigatorProvider;", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavGraphBuilderKt {
    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, int i, int i2, Function1 builder, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i, i2);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    @Deprecated(message = "Use routes to build your NavGraph instead", replaceWith = @ReplaceWith(expression = "navigation(startDestination = startDestination.toString(), route = id.toString()) { builder.invoke() }", imports = {}))
    public static final NavGraph navigation(NavigatorProvider navigatorProvider, int i, int i2, Function1<? super NavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i, i2);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, String startDestination, String str, Function1 builder, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(startDestination, "startDestination");
        Intrinsics.checkNotNullParameter(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, startDestination, str);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph navigation(NavigatorProvider navigatorProvider, String startDestination, String str, Function1<? super NavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(startDestination, "startDestination");
        Intrinsics.checkNotNullParameter(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, startDestination, str);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    @Deprecated(message = "Use routes to build your nested NavGraph instead", replaceWith = @ReplaceWith(expression = "navigation(startDestination = startDestination.toString(), route = id.toString()) { builder.invoke() }", imports = {}))
    public static final void navigation(NavGraphBuilder navGraphBuilder, int i, int i2, Function1<? super NavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), i, i2);
        builder.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static final void navigation(NavGraphBuilder navGraphBuilder, String startDestination, String route, Function1<? super NavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(startDestination, "startDestination");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(builder, "builder");
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), startDestination, route);
        builder.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }
}
