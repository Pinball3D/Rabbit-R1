package androidx.navigation.fragment;

import androidx.fragment.app.DialogFragment;
import androidx.navigation.NavGraphBuilder;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: DialogFragmentNavigatorDestinationBuilder.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a#\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0087\b\u001a?\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000\u001a!\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0086\b\u001a=\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\nH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"dialog", "", "F", "Landroidx/fragment/app/DialogFragment;", "Landroidx/navigation/NavGraphBuilder;", "id", "", "builder", "Lkotlin/Function1;", "Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;", "Lkotlin/ExtensionFunctionType;", "route", "", "navigation-fragment_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DialogFragmentNavigatorDestinationBuilderKt {
    @Deprecated(message = "Use routes to create your DialogFragmentDestination instead", replaceWith = @ReplaceWith(expression = "dialog<F>(route = id.toString()) { builder.invoke() }", imports = {}))
    public static final /* synthetic */ <F extends DialogFragment> void dialog(NavGraphBuilder navGraphBuilder, int i, Function1<? super DialogFragmentNavigatorDestinationBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DialogFragmentNavigator dialogFragmentNavigator = (DialogFragmentNavigator) navGraphBuilder.getProvider().getNavigator(DialogFragmentNavigator.class);
        Intrinsics.reifiedOperationMarker(4, "F");
        DialogFragmentNavigatorDestinationBuilder dialogFragmentNavigatorDestinationBuilder = new DialogFragmentNavigatorDestinationBuilder(dialogFragmentNavigator, i, (KClass<? extends DialogFragment>) Reflection.getOrCreateKotlinClass(DialogFragment.class));
        builder.invoke(dialogFragmentNavigatorDestinationBuilder);
        navGraphBuilder.destination(dialogFragmentNavigatorDestinationBuilder);
    }

    public static final /* synthetic */ <F extends DialogFragment> void dialog(NavGraphBuilder navGraphBuilder, String route, Function1<? super DialogFragmentNavigatorDestinationBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DialogFragmentNavigator dialogFragmentNavigator = (DialogFragmentNavigator) navGraphBuilder.getProvider().getNavigator(DialogFragmentNavigator.class);
        Intrinsics.reifiedOperationMarker(4, "F");
        DialogFragmentNavigatorDestinationBuilder dialogFragmentNavigatorDestinationBuilder = new DialogFragmentNavigatorDestinationBuilder(dialogFragmentNavigator, route, (KClass<? extends DialogFragment>) Reflection.getOrCreateKotlinClass(DialogFragment.class));
        builder.invoke(dialogFragmentNavigatorDestinationBuilder);
        navGraphBuilder.destination(dialogFragmentNavigatorDestinationBuilder);
    }

    @Deprecated(message = "Use routes to create your DialogFragmentDestination instead", replaceWith = @ReplaceWith(expression = "dialog<F>(route = id.toString())", imports = {}))
    public static final /* synthetic */ <F extends DialogFragment> void dialog(NavGraphBuilder navGraphBuilder, int i) {
        Intrinsics.checkNotNullParameter(navGraphBuilder, "<this>");
        DialogFragmentNavigator dialogFragmentNavigator = (DialogFragmentNavigator) navGraphBuilder.getProvider().getNavigator(DialogFragmentNavigator.class);
        Intrinsics.reifiedOperationMarker(4, "F");
        navGraphBuilder.destination(new DialogFragmentNavigatorDestinationBuilder(dialogFragmentNavigator, i, (KClass<? extends DialogFragment>) Reflection.getOrCreateKotlinClass(DialogFragment.class)));
    }

    public static final /* synthetic */ <F extends DialogFragment> void dialog(NavGraphBuilder navGraphBuilder, String route) {
        Intrinsics.checkNotNullParameter(navGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        DialogFragmentNavigator dialogFragmentNavigator = (DialogFragmentNavigator) navGraphBuilder.getProvider().getNavigator(DialogFragmentNavigator.class);
        Intrinsics.reifiedOperationMarker(4, "F");
        navGraphBuilder.destination(new DialogFragmentNavigatorDestinationBuilder(dialogFragmentNavigator, route, (KClass<? extends DialogFragment>) Reflection.getOrCreateKotlinClass(DialogFragment.class)));
    }
}
