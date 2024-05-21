package androidx.navigation;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* compiled from: NavigatorProvider.kt */
@Metadata(d1 = {"\u0000*\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a,\u0010\u0000\u001a\u0002H\u0001\"\u0010\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\n¢\u0006\u0002\u0010\u0007\u001a2\u0010\u0000\u001a\u0002H\u0001\"\u0010\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002*\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00010\tH\u0086\n¢\u0006\u0002\u0010\n\u001a\u001d\u0010\u000b\u001a\u00020\f*\u00020\u00042\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002H\u0086\n\u001a/\u0010\u000e\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0003\u0018\u00010\u0002*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002H\u0086\n¨\u0006\u000f"}, d2 = {"get", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/NavigatorProvider;", "name", "", "(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)Landroidx/navigation/Navigator;", "clazz", "Lkotlin/reflect/KClass;", "(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;)Landroidx/navigation/Navigator;", "plusAssign", "", "navigator", "set", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavigatorProviderKt {
    public static final <T extends Navigator<? extends NavDestination>> T get(NavigatorProvider navigatorProvider, String name) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        return (T) navigatorProvider.getNavigator(name);
    }

    public static final <T extends Navigator<? extends NavDestination>> T get(NavigatorProvider navigatorProvider, KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) navigatorProvider.getNavigator(JvmClassMappingKt.getJavaClass((KClass) clazz));
    }

    public static final Navigator<? extends NavDestination> set(NavigatorProvider navigatorProvider, String name, Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(navigator, "navigator");
        return navigatorProvider.addNavigator(name, navigator);
    }

    public static final void plusAssign(NavigatorProvider navigatorProvider, Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "<this>");
        Intrinsics.checkNotNullParameter(navigator, "navigator");
        navigatorProvider.addNavigator(navigator);
    }
}
