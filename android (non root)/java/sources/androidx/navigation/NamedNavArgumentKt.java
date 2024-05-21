package androidx.navigation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NamedNavArgument.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"navArgument", "Landroidx/navigation/NamedNavArgument;", "name", "", "builder", "Lkotlin/Function1;", "Landroidx/navigation/NavArgumentBuilder;", "", "Lkotlin/ExtensionFunctionType;", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NamedNavArgumentKt {
    public static final NamedNavArgument navArgument(String name, Function1<? super NavArgumentBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(builder, "builder");
        NavArgumentBuilder navArgumentBuilder = new NavArgumentBuilder();
        builder.invoke(navArgumentBuilder);
        return new NamedNavArgument(name, navArgumentBuilder.build());
    }
}
