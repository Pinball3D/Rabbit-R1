package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDeepLinkRequest;
import io.sentry.Session;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlin.text.Typography;

/* compiled from: NavDestination.kt */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 ]2\u00020\u0001:\u0003\\]^B\u0017\b\u0016\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\nJ\u000e\u00104\u001a\u0002012\u0006\u00105\u001a\u00020\u0014J\u000e\u00104\u001a\u0002012\u0006\u00106\u001a\u00020\u0006J\u0014\u00107\u001a\u0004\u0018\u0001082\b\u00109\u001a\u0004\u0018\u000108H\u0007J\u0014\u0010:\u001a\u00020;2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0000H\u0007J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u001a\u0010@\u001a\u0004\u0018\u00010\u00062\u0006\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u000108J\u0012\u0010D\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010\u0018\u001a\u00020\u0019J\u0010\u0010E\u001a\u00020>2\u0006\u0010F\u001a\u00020GH\u0016J\u0010\u0010E\u001a\u00020>2\u0006\u0010H\u001a\u00020IH\u0016J.\u0010J\u001a\u00020>2\u0006\u0010F\u001a\u00020\u00142\b\u0010K\u001a\u0004\u0018\u00010G2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000fH\u0002J\u001a\u0010L\u001a\u00020>2\u0006\u0010-\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u000108H\u0007J\b\u0010M\u001a\u00020\u0019H\u0016J\u0012\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010P\u001a\u00020IH\u0017J\u0012\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010-\u001a\u00020\u0006H\u0007J\u0018\u0010Q\u001a\u0002012\u0006\u0010A\u001a\u00020B2\u0006\u0010R\u001a\u00020SH\u0017J\u0018\u0010T\u001a\u0002012\b\b\u0001\u0010U\u001a\u00020\u00192\u0006\u0010V\u001a\u00020\rJ\u001a\u0010T\u001a\u0002012\b\b\u0001\u0010U\u001a\u00020\u00192\b\b\u0001\u0010W\u001a\u00020\u0019J\u0010\u0010X\u001a\u0002012\b\b\u0001\u0010U\u001a\u00020\u0019J\u000e\u0010Y\u001a\u0002012\u0006\u00102\u001a\u00020\u0006J\b\u0010Z\u001a\u00020>H\u0017J\b\u0010[\u001a\u00020\u0006H\u0016R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00068WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R(\u0010\u0018\u001a\u00020\u00192\b\b\u0001\u0010\u0018\u001a\u00020\u00198G@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0017R(\u0010(\u001a\u0004\u0018\u00010'2\b\u0010&\u001a\u0004\u0018\u00010'@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R(\u0010-\u001a\u0004\u0018\u00010\u00062\b\u0010-\u001a\u0004\u0018\u00010\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0007¨\u0006_"}, d2 = {"Landroidx/navigation/NavDestination;", "", "navigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "navigatorName", "", "(Ljava/lang/String;)V", "_arguments", "", "Landroidx/navigation/NavArgument;", "actions", "Landroidx/collection/SparseArrayCompat;", "Landroidx/navigation/NavAction;", "arguments", "", "getArguments", "()Ljava/util/Map;", "deepLinks", "", "Landroidx/navigation/NavDeepLink;", "displayName", "getDisplayName", "()Ljava/lang/String;", "id", "", "getId", "()I", "setId", "(I)V", "idName", "label", "", "getLabel", "()Ljava/lang/CharSequence;", "setLabel", "(Ljava/lang/CharSequence;)V", "getNavigatorName", "<set-?>", "Landroidx/navigation/NavGraph;", "parent", "getParent", "()Landroidx/navigation/NavGraph;", "setParent", "(Landroidx/navigation/NavGraph;)V", "route", "getRoute", "setRoute", "addArgument", "", "argumentName", "argument", "addDeepLink", "navDeepLink", "uriPattern", "addInDefaultArgs", "Landroid/os/Bundle;", "args", "buildDeepLinkIds", "", "previousDestination", "equals", "", "other", "fillInLabel", "context", "Landroid/content/Context;", "bundle", "getAction", "hasDeepLink", "deepLink", "Landroid/net/Uri;", "deepLinkRequest", "Landroidx/navigation/NavDeepLinkRequest;", "hasRequiredArguments", "uri", "hasRoute", "hashCode", "matchDeepLink", "Landroidx/navigation/NavDestination$DeepLinkMatch;", "navDeepLinkRequest", "onInflate", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "putAction", "actionId", "action", "destId", "removeAction", "removeArgument", "supportsActions", "toString", "ClassType", "Companion", "DeepLinkMatch", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class NavDestination {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<String, Class<?>> classes = new LinkedHashMap();
    private Map<String, NavArgument> _arguments;
    private final SparseArrayCompat<NavAction> actions;
    private final List<NavDeepLink> deepLinks;
    private int id;
    private String idName;
    private CharSequence label;
    private final String navigatorName;
    private NavGraph parent;
    private String route;

    /* compiled from: NavDestination.kt */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0002\u0018\u00002\u00020\u0001B\f\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003R\u0013\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/NavDestination$ClassType;", "", "value", "Lkotlin/reflect/KClass;", "()Ljava/lang/Class;", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS, AnnotationTarget.CLASS})
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    /* loaded from: classes2.dex */
    public @interface ClassType {
        Class<?> value();
    }

    @JvmStatic
    public static final String getDisplayName(Context context, int i) {
        return INSTANCE.getDisplayName(context, i);
    }

    public static final Sequence<NavDestination> getHierarchy(NavDestination navDestination) {
        return INSTANCE.getHierarchy(navDestination);
    }

    @JvmStatic
    protected static final <C> Class<? extends C> parseClassFromName(Context context, String str, Class<? extends C> cls) {
        return INSTANCE.parseClassFromName(context, str, cls);
    }

    @JvmStatic
    public static final <C> Class<? extends C> parseClassFromNameInternal(Context context, String str, Class<? extends C> cls) {
        return INSTANCE.parseClassFromNameInternal(context, str, cls);
    }

    public final int[] buildDeepLinkIds() {
        return buildDeepLinkIds$default(this, null, 1, null);
    }

    public final int getId() {
        return this.id;
    }

    public final CharSequence getLabel() {
        return this.label;
    }

    public final String getNavigatorName() {
        return this.navigatorName;
    }

    public final NavGraph getParent() {
        return this.parent;
    }

    public final String getRoute() {
        return this.route;
    }

    public final void setId(int i) {
        this.id = i;
        this.idName = null;
    }

    public final void setLabel(CharSequence charSequence) {
        this.label = charSequence;
    }

    public final void setParent(NavGraph navGraph) {
        this.parent = navGraph;
    }

    public boolean supportsActions() {
        return true;
    }

    public NavDestination(String navigatorName) {
        Intrinsics.checkNotNullParameter(navigatorName, "navigatorName");
        this.navigatorName = navigatorName;
        this.deepLinks = new ArrayList();
        this.actions = new SparseArrayCompat<>();
        this._arguments = new LinkedHashMap();
    }

    /* compiled from: NavDestination.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\u0011\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0000H\u0096\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/navigation/NavDestination$DeepLinkMatch;", "", "destination", "Landroidx/navigation/NavDestination;", "matchingArgs", "Landroid/os/Bundle;", "isExactDeepLink", "", "matchingPathSegments", "", "hasMatchingAction", "mimeTypeMatchLevel", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V", "getDestination", "()Landroidx/navigation/NavDestination;", "getMatchingArgs", "()Landroid/os/Bundle;", "compareTo", "other", "hasMatchingArgs", "arguments", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {
        private final NavDestination destination;
        private final boolean hasMatchingAction;
        private final boolean isExactDeepLink;
        private final Bundle matchingArgs;
        private final int matchingPathSegments;
        private final int mimeTypeMatchLevel;

        public final NavDestination getDestination() {
            return this.destination;
        }

        public final Bundle getMatchingArgs() {
            return this.matchingArgs;
        }

        public DeepLinkMatch(NavDestination destination, Bundle bundle, boolean z, int i, boolean z2, int i2) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            this.destination = destination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z;
            this.matchingPathSegments = i;
            this.hasMatchingAction = z2;
            this.mimeTypeMatchLevel = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(DeepLinkMatch other) {
            Intrinsics.checkNotNullParameter(other, "other");
            boolean z = this.isExactDeepLink;
            if (z && !other.isExactDeepLink) {
                return 1;
            }
            if (!z && other.isExactDeepLink) {
                return -1;
            }
            int i = this.matchingPathSegments - other.matchingPathSegments;
            if (i > 0) {
                return 1;
            }
            if (i < 0) {
                return -1;
            }
            Bundle bundle = this.matchingArgs;
            if (bundle != null && other.matchingArgs == null) {
                return 1;
            }
            if (bundle == null && other.matchingArgs != null) {
                return -1;
            }
            if (bundle != null) {
                int size = bundle.size();
                Bundle bundle2 = other.matchingArgs;
                Intrinsics.checkNotNull(bundle2);
                int size2 = size - bundle2.size();
                if (size2 > 0) {
                    return 1;
                }
                if (size2 < 0) {
                    return -1;
                }
            }
            boolean z2 = this.hasMatchingAction;
            if (z2 && !other.hasMatchingAction) {
                return 1;
            }
            if (z2 || !other.hasMatchingAction) {
                return this.mimeTypeMatchLevel - other.mimeTypeMatchLevel;
            }
            return -1;
        }

        public final boolean hasMatchingArgs(Bundle arguments) {
            Bundle bundle;
            Object obj;
            if (arguments == null || (bundle = this.matchingArgs) == null) {
                return false;
            }
            Set<String> keySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "matchingArgs.keySet()");
            for (String key : keySet) {
                if (!arguments.containsKey(key)) {
                    return false;
                }
                NavArgument navArgument = this.destination.getArguments().get(key);
                Object obj2 = null;
                NavType<Object> type = navArgument != null ? navArgument.getType() : null;
                if (type != null) {
                    Bundle bundle2 = this.matchingArgs;
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    obj = type.get(bundle2, key);
                } else {
                    obj = null;
                }
                if (type != null) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    obj2 = type.get(arguments, key);
                }
                if (!Intrinsics.areEqual(obj, obj2)) {
                    return false;
                }
            }
            return true;
        }
    }

    public final Map<String, NavArgument> getArguments() {
        return MapsKt.toMap(this._arguments);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavDestination(Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.INSTANCE.getNameForNavigator$navigation_common_release(navigator.getClass()));
        Intrinsics.checkNotNullParameter(navigator, "navigator");
    }

    public void onInflate(Context context, AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R.styleable.Navigator);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…s, R.styleable.Navigator)");
        setRoute(obtainAttributes.getString(androidx.navigation.common.R.styleable.Navigator_route));
        if (obtainAttributes.hasValue(androidx.navigation.common.R.styleable.Navigator_android_id)) {
            setId(obtainAttributes.getResourceId(androidx.navigation.common.R.styleable.Navigator_android_id, 0));
            this.idName = INSTANCE.getDisplayName(context, this.id);
        }
        this.label = obtainAttributes.getText(androidx.navigation.common.R.styleable.Navigator_android_label);
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    public final void setRoute(String str) {
        Object obj;
        if (str == null) {
            setId(0);
        } else {
            if (!(!StringsKt.isBlank(str))) {
                throw new IllegalArgumentException("Cannot have an empty route".toString());
            }
            String createRoute = INSTANCE.createRoute(str);
            setId(createRoute.hashCode());
            addDeepLink(createRoute);
        }
        List<NavDeepLink> list = this.deepLinks;
        List<NavDeepLink> list2 = list;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (Intrinsics.areEqual(((NavDeepLink) obj).getUriPattern(), INSTANCE.createRoute(this.route))) {
                    break;
                }
            }
        }
        TypeIntrinsics.asMutableCollection(list2).remove(obj);
        this.route = str;
    }

    public String getDisplayName() {
        String str = this.idName;
        return str == null ? String.valueOf(this.id) : str;
    }

    public boolean hasDeepLink(Uri deepLink) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        return hasDeepLink(new NavDeepLinkRequest(deepLink, null, null));
    }

    public boolean hasDeepLink(NavDeepLinkRequest deepLinkRequest) {
        Intrinsics.checkNotNullParameter(deepLinkRequest, "deepLinkRequest");
        return matchDeepLink(deepLinkRequest) != null;
    }

    public final void addDeepLink(String uriPattern) {
        Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
        addDeepLink(new NavDeepLink.Builder().setUriPattern(uriPattern).build());
    }

    public final void addDeepLink(final NavDeepLink navDeepLink) {
        Intrinsics.checkNotNullParameter(navDeepLink, "navDeepLink");
        List<String> missingRequiredArguments = NavArgumentKt.missingRequiredArguments(getArguments(), new Function1<String, Boolean>() { // from class: androidx.navigation.NavDestination$addDeepLink$missingRequiredArguments$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String key) {
                Intrinsics.checkNotNullParameter(key, "key");
                return Boolean.valueOf(!NavDeepLink.this.getArgumentsNames$navigation_common_release().contains(key));
            }
        });
        if (!missingRequiredArguments.isEmpty()) {
            throw new IllegalArgumentException(("Deep link " + navDeepLink.getUriPattern() + " can't be used to open destination " + this + ".\nFollowing required arguments are missing: " + missingRequiredArguments).toString());
        }
        this.deepLinks.add(navDeepLink);
    }

    public final DeepLinkMatch matchDeepLink(String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        NavDeepLinkRequest.Builder.Companion companion = NavDeepLinkRequest.Builder.INSTANCE;
        Uri parse = Uri.parse(INSTANCE.createRoute(route));
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(this)");
        NavDeepLinkRequest build = companion.fromUri(parse).build();
        if (this instanceof NavGraph) {
            return ((NavGraph) this).matchDeepLinkExcludingChildren(build);
        }
        return matchDeepLink(build);
    }

    public DeepLinkMatch matchDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        Intrinsics.checkNotNullParameter(navDeepLinkRequest, "navDeepLinkRequest");
        if (this.deepLinks.isEmpty()) {
            return null;
        }
        DeepLinkMatch deepLinkMatch = null;
        for (NavDeepLink navDeepLink : this.deepLinks) {
            Uri uri = navDeepLinkRequest.getUri();
            Bundle matchingArguments = uri != null ? navDeepLink.getMatchingArguments(uri, getArguments()) : null;
            int calculateMatchingPathSegments$navigation_common_release = navDeepLink.calculateMatchingPathSegments$navigation_common_release(uri);
            String action = navDeepLinkRequest.getAction();
            boolean z = action != null && Intrinsics.areEqual(action, navDeepLink.getAction());
            String mimeType = navDeepLinkRequest.getMimeType();
            int mimeTypeMatchRating = mimeType != null ? navDeepLink.getMimeTypeMatchRating(mimeType) : -1;
            if (matchingArguments == null) {
                if (z || mimeTypeMatchRating > -1) {
                    if (hasRequiredArguments(navDeepLink, uri, getArguments())) {
                    }
                }
            }
            DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(this, matchingArguments, navDeepLink.getIsExactDeepLink(), calculateMatchingPathSegments$navigation_common_release, z, mimeTypeMatchRating);
            if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                deepLinkMatch = deepLinkMatch2;
            }
        }
        return deepLinkMatch;
    }

    private final boolean hasRequiredArguments(NavDeepLink deepLink, Uri uri, Map<String, NavArgument> arguments) {
        final Bundle matchingPathAndQueryArgs$navigation_common_release = deepLink.getMatchingPathAndQueryArgs$navigation_common_release(uri, arguments);
        return NavArgumentKt.missingRequiredArguments(arguments, new Function1<String, Boolean>() { // from class: androidx.navigation.NavDestination$hasRequiredArguments$missingRequiredArguments$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String key) {
                Intrinsics.checkNotNullParameter(key, "key");
                return Boolean.valueOf(!matchingPathAndQueryArgs$navigation_common_release.containsKey(key));
            }
        }).isEmpty();
    }

    public static /* synthetic */ int[] buildDeepLinkIds$default(NavDestination navDestination, NavDestination navDestination2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
        }
        if ((i & 1) != 0) {
            navDestination2 = null;
        }
        return navDestination.buildDeepLinkIds(navDestination2);
    }

    public final int[] buildDeepLinkIds(NavDestination previousDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            Intrinsics.checkNotNull(this);
            NavGraph navGraph = this.parent;
            if ((previousDestination != null ? previousDestination.parent : null) != null) {
                NavGraph navGraph2 = previousDestination.parent;
                Intrinsics.checkNotNull(navGraph2);
                if (navGraph2.findNode(this.id) == this) {
                    arrayDeque.addFirst(this);
                    break;
                }
            }
            if (navGraph == null || navGraph.getStartDestId() != this.id) {
                arrayDeque.addFirst(this);
            }
            if (Intrinsics.areEqual(navGraph, previousDestination) || (this = navGraph) == null) {
                break;
            }
        }
        List list = CollectionsKt.toList(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).id));
        }
        return CollectionsKt.toIntArray(arrayList);
    }

    public final boolean hasRoute(String route, Bundle arguments) {
        Intrinsics.checkNotNullParameter(route, "route");
        if (Intrinsics.areEqual(this.route, route)) {
            return true;
        }
        DeepLinkMatch matchDeepLink = matchDeepLink(route);
        if (Intrinsics.areEqual(this, matchDeepLink != null ? matchDeepLink.getDestination() : null)) {
            return matchDeepLink.hasMatchingArgs(arguments);
        }
        return false;
    }

    public final NavAction getAction(int id) {
        NavAction navAction = this.actions.isEmpty() ? null : this.actions.get(id);
        if (navAction != null) {
            return navAction;
        }
        NavGraph navGraph = this.parent;
        if (navGraph != null) {
            return navGraph.getAction(id);
        }
        return null;
    }

    public final void putAction(int actionId, int destId) {
        putAction(actionId, new NavAction(destId, null, null, 6, null));
    }

    public final void putAction(int actionId, NavAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (!supportsActions()) {
            throw new UnsupportedOperationException("Cannot add action " + actionId + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
        }
        if (actionId == 0) {
            throw new IllegalArgumentException("Cannot have an action with actionId 0".toString());
        }
        this.actions.put(actionId, action);
    }

    public final void removeAction(int actionId) {
        this.actions.remove(actionId);
    }

    public final void addArgument(String argumentName, NavArgument argument) {
        Intrinsics.checkNotNullParameter(argumentName, "argumentName");
        Intrinsics.checkNotNullParameter(argument, "argument");
        this._arguments.put(argumentName, argument);
    }

    public final void removeArgument(String argumentName) {
        Intrinsics.checkNotNullParameter(argumentName, "argumentName");
        this._arguments.remove(argumentName);
    }

    public final Bundle addInDefaultArgs(Bundle args) {
        Map<String, NavArgument> map;
        if (args == null && ((map = this._arguments) == null || map.isEmpty())) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, NavArgument> entry : this._arguments.entrySet()) {
            entry.getValue().putDefaultValue(entry.getKey(), bundle);
        }
        if (args != null) {
            bundle.putAll(args);
            for (Map.Entry<String, NavArgument> entry2 : this._arguments.entrySet()) {
                String key = entry2.getKey();
                NavArgument value = entry2.getValue();
                if (!value.verify(key, bundle)) {
                    throw new IllegalArgumentException(("Wrong argument type for '" + key + "' in argument bundle. " + value.getType().getName() + " expected.").toString());
                }
            }
        }
        return bundle;
    }

    public final String fillInLabel(Context context, Bundle bundle) {
        NavArgument navArgument;
        Intrinsics.checkNotNullParameter(context, "context");
        CharSequence charSequence = this.label;
        if (charSequence == null) {
            return null;
        }
        Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(charSequence);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (bundle != null && bundle.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, "");
                if (Intrinsics.areEqual((group == null || (navArgument = getArguments().get(group)) == null) ? null : navArgument.getType(), NavType.ReferenceType)) {
                    String string = context.getString(bundle.getInt(group));
                    Intrinsics.checkNotNullExpressionValue(string, "context.getString(bundle.getInt(argName))");
                    stringBuffer.append(string);
                } else {
                    stringBuffer.append(bundle.getString(group));
                }
            } else {
                throw new IllegalArgumentException("Could not find \"" + group + "\" in " + bundle + " to fill label \"" + ((Object) charSequence) + Typography.quote);
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        String str = this.idName;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(this.id));
        } else {
            sb.append(str);
        }
        sb.append(")");
        String str2 = this.route;
        if (str2 != null && !StringsKt.isBlank(str2)) {
            sb.append(" route=");
            sb.append(this.route);
        }
        if (this.label != null) {
            sb.append(" label=");
            sb.append(this.label);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    public boolean equals(Object other) {
        boolean z;
        boolean z2;
        if (other == null || !(other instanceof NavDestination)) {
            return false;
        }
        NavDestination navDestination = (NavDestination) other;
        boolean z3 = CollectionsKt.intersect(this.deepLinks, navDestination.deepLinks).size() == this.deepLinks.size();
        if (this.actions.size() == navDestination.actions.size()) {
            Iterator it = SequencesKt.asSequence(SparseArrayKt.valueIterator(this.actions)).iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!navDestination.actions.containsValue((NavAction) it.next())) {
                        break;
                    }
                } else {
                    Iterator it2 = SequencesKt.asSequence(SparseArrayKt.valueIterator(navDestination.actions)).iterator();
                    while (it2.hasNext()) {
                        if (!this.actions.containsValue((NavAction) it2.next())) {
                        }
                    }
                    z = true;
                }
            }
        }
        z = false;
        if (getArguments().size() == navDestination.getArguments().size()) {
            Iterator it3 = MapsKt.asSequence(getArguments()).iterator();
            while (true) {
                if (it3.hasNext()) {
                    Map.Entry entry = (Map.Entry) it3.next();
                    if (!navDestination.getArguments().containsKey(entry.getKey()) || !Intrinsics.areEqual(navDestination.getArguments().get(entry.getKey()), entry.getValue())) {
                        break;
                    }
                } else {
                    for (Map.Entry entry2 : MapsKt.asSequence(navDestination.getArguments())) {
                        if (getArguments().containsKey(entry2.getKey()) && Intrinsics.areEqual(getArguments().get(entry2.getKey()), entry2.getValue())) {
                        }
                    }
                    z2 = true;
                }
            }
        }
        z2 = false;
        return this.id == navDestination.id && Intrinsics.areEqual(this.route, navDestination.route) && z3 && z && z2;
    }

    public int hashCode() {
        Set<String> keySet;
        int i = this.id * 31;
        String str = this.route;
        int hashCode = i + (str != null ? str.hashCode() : 0);
        for (NavDeepLink navDeepLink : this.deepLinks) {
            int i2 = hashCode * 31;
            String uriPattern = navDeepLink.getUriPattern();
            int hashCode2 = (i2 + (uriPattern != null ? uriPattern.hashCode() : 0)) * 31;
            String action = navDeepLink.getAction();
            int hashCode3 = (hashCode2 + (action != null ? action.hashCode() : 0)) * 31;
            String mimeType = navDeepLink.getMimeType();
            hashCode = hashCode3 + (mimeType != null ? mimeType.hashCode() : 0);
        }
        Iterator valueIterator = SparseArrayKt.valueIterator(this.actions);
        while (valueIterator.hasNext()) {
            NavAction navAction = (NavAction) valueIterator.next();
            int destinationId = ((hashCode * 31) + navAction.getDestinationId()) * 31;
            NavOptions navOptions = navAction.getNavOptions();
            hashCode = destinationId + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle defaultArguments = navAction.getDefaultArguments();
            if (defaultArguments != null && (keySet = defaultArguments.keySet()) != null) {
                Intrinsics.checkNotNullExpressionValue(keySet, "keySet()");
                for (String str2 : keySet) {
                    int i3 = hashCode * 31;
                    Bundle defaultArguments2 = navAction.getDefaultArguments();
                    Intrinsics.checkNotNull(defaultArguments2);
                    Object obj = defaultArguments2.get(str2);
                    hashCode = i3 + (obj != null ? obj.hashCode() : 0);
                }
            }
        }
        for (String str3 : getArguments().keySet()) {
            int hashCode4 = ((hashCode * 31) + str3.hashCode()) * 31;
            NavArgument navArgument = getArguments().get(str3);
            hashCode = hashCode4 + (navArgument != null ? navArgument.hashCode() : 0);
        }
        return hashCode;
    }

    /* compiled from: NavDestination.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0007J\u0018\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J:\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00052\u0010\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006H\u0005J:\u0010\u0019\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00052\u0010\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006H\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Landroidx/navigation/NavDestination$Companion;", "", "()V", "classes", "", "", "Ljava/lang/Class;", "hierarchy", "Lkotlin/sequences/Sequence;", "Landroidx/navigation/NavDestination;", "getHierarchy$annotations", "(Landroidx/navigation/NavDestination;)V", "getHierarchy", "(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;", "createRoute", "route", "getDisplayName", "context", "Landroid/content/Context;", "id", "", "parseClassFromName", "C", "name", "expectedClassType", "parseClassFromNameInternal", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getHierarchy$annotations(NavDestination navDestination) {
        }

        private Companion() {
        }

        @JvmStatic
        protected final <C> Class<? extends C> parseClassFromName(Context context, String name, Class<? extends C> expectedClassType) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(expectedClassType, "expectedClassType");
            String str = name.charAt(0) == '.' ? context.getPackageName() + name : name;
            Class<? extends C> cls = (Class) NavDestination.classes.get(str);
            if (cls == null) {
                try {
                    cls = (Class<? extends C>) Class.forName(str, true, context.getClassLoader());
                    NavDestination.classes.put(name, cls);
                } catch (ClassNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            }
            Intrinsics.checkNotNull(cls);
            if (expectedClassType.isAssignableFrom(cls)) {
                return cls;
            }
            throw new IllegalArgumentException((str + " must be a subclass of " + expectedClassType).toString());
        }

        @JvmStatic
        public final <C> Class<? extends C> parseClassFromNameInternal(Context context, String name, Class<? extends C> expectedClassType) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(expectedClassType, "expectedClassType");
            return NavDestination.parseClassFromName(context, name, expectedClassType);
        }

        @JvmStatic
        public final String getDisplayName(Context context, int id) {
            String valueOf;
            Intrinsics.checkNotNullParameter(context, "context");
            if (id <= 16777215) {
                return String.valueOf(id);
            }
            try {
                valueOf = context.getResources().getResourceName(id);
            } catch (Resources.NotFoundException unused) {
                valueOf = String.valueOf(id);
            }
            Intrinsics.checkNotNullExpressionValue(valueOf, "try {\n                co….toString()\n            }");
            return valueOf;
        }

        public final String createRoute(String route) {
            return route != null ? "android-app://androidx.navigation/" + route : "";
        }

        public final Sequence<NavDestination> getHierarchy(NavDestination navDestination) {
            Intrinsics.checkNotNullParameter(navDestination, "<this>");
            return SequencesKt.generateSequence(navDestination, new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavDestination$Companion$hierarchy$1
                @Override // kotlin.jvm.functions.Function1
                public final NavDestination invoke(NavDestination it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getParent();
                }
            });
        }
    }
}
