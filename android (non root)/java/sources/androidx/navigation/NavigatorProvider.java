package androidx.navigation;

import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.Navigator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavigatorProvider.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J \u0010\f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006J*\u0010\f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u00052\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006H\u0017J'\u0010\u000f\u001a\u0002H\u0010\"\f\b\u0000\u0010\u0010*\u0006\u0012\u0002\b\u00030\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0012¢\u0006\u0002\u0010\u0013J#\u0010\u000f\u001a\u0002H\u0010\"\f\b\u0000\u0010\u0010*\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u000e\u001a\u00020\u0005H\u0017¢\u0006\u0002\u0010\u0014R\"\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\t8G¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Landroidx/navigation/NavigatorProvider;", "", "()V", "_navigators", "", "", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "navigators", "", "getNavigators", "()Ljava/util/Map;", "addNavigator", "navigator", "name", "getNavigator", ExifInterface.GPS_DIRECTION_TRUE, "navigatorClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/navigation/Navigator;", "(Ljava/lang/String;)Landroidx/navigation/Navigator;", "Companion", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class NavigatorProvider {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<Class<?>, String> annotationNames = new LinkedHashMap();
    private final Map<String, Navigator<? extends NavDestination>> _navigators = new LinkedHashMap();

    public final Map<String, Navigator<? extends NavDestination>> getNavigators() {
        return MapsKt.toMap(this._navigators);
    }

    public final <T extends Navigator<?>> T getNavigator(Class<T> navigatorClass) {
        Intrinsics.checkNotNullParameter(navigatorClass, "navigatorClass");
        return (T) getNavigator(INSTANCE.getNameForNavigator$navigation_common_release(navigatorClass));
    }

    public <T extends Navigator<?>> T getNavigator(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (!INSTANCE.validateName$navigation_common_release(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string".toString());
        }
        Navigator<? extends NavDestination> navigator = this._navigators.get(name);
        if (navigator != null) {
            return navigator;
        }
        throw new IllegalStateException("Could not find Navigator with name \"" + name + "\". You must call NavController.addNavigator() for each navigation type.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Navigator<? extends NavDestination> addNavigator(Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkNotNullParameter(navigator, "navigator");
        return addNavigator(INSTANCE.getNameForNavigator$navigation_common_release(navigator.getClass()), navigator);
    }

    public Navigator<? extends NavDestination> addNavigator(String name, Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(navigator, "navigator");
        if (!INSTANCE.validateName$navigation_common_release(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string".toString());
        }
        Navigator<? extends NavDestination> navigator2 = this._navigators.get(name);
        if (Intrinsics.areEqual(navigator2, navigator)) {
            return navigator;
        }
        boolean z = false;
        if (navigator2 != null && navigator2.getIsAttached()) {
            z = true;
        }
        if (!(!z)) {
            throw new IllegalStateException(("Navigator " + navigator + " is replacing an already attached " + navigator2).toString());
        }
        if (!(!navigator.getIsAttached())) {
            throw new IllegalStateException(("Navigator " + navigator + " is already attached to another NavController").toString());
        }
        return this._navigators.put(name, navigator);
    }

    /* compiled from: NavigatorProvider.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\u0007\u001a\u00020\u00062\u0012\u0010\b\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\t0\u0005H\u0001¢\u0006\u0002\b\nJ\u0017\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\b\u000eR \u0010\u0003\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/navigation/NavigatorProvider$Companion;", "", "()V", "annotationNames", "", "Ljava/lang/Class;", "", "getNameForNavigator", "navigatorClass", "Landroidx/navigation/Navigator;", "getNameForNavigator$navigation_common_release", "validateName", "", "name", "validateName$navigation_common_release", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean validateName$navigation_common_release(String name) {
            return name != null && name.length() > 0;
        }

        @JvmStatic
        public final String getNameForNavigator$navigation_common_release(Class<? extends Navigator<?>> navigatorClass) {
            Intrinsics.checkNotNullParameter(navigatorClass, "navigatorClass");
            String str = (String) NavigatorProvider.annotationNames.get(navigatorClass);
            if (str == null) {
                Navigator.Name name = (Navigator.Name) navigatorClass.getAnnotation(Navigator.Name.class);
                str = name != null ? name.value() : null;
                if (!validateName$navigation_common_release(str)) {
                    throw new IllegalArgumentException(("No @Navigator.Name annotation found for " + navigatorClass.getSimpleName()).toString());
                }
                NavigatorProvider.annotationNames.put(navigatorClass, str);
            }
            Intrinsics.checkNotNull(str);
            return str;
        }
    }
}
