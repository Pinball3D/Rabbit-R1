package androidx.navigation;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.reflect.KClass;

/* compiled from: NavArgsLazy.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"(\u0010\u0000\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\"\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bX\u0080\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"methodMap", "Landroidx/collection/ArrayMap;", "Lkotlin/reflect/KClass;", "Landroidx/navigation/NavArgs;", "Ljava/lang/reflect/Method;", "getMethodMap", "()Landroidx/collection/ArrayMap;", "methodSignature", "", "Ljava/lang/Class;", "Landroid/os/Bundle;", "getMethodSignature", "()[Ljava/lang/Class;", "[Ljava/lang/Class;", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavArgsLazyKt {
    private static final Class<Bundle>[] methodSignature = {Bundle.class};
    private static final ArrayMap<KClass<? extends NavArgs>, Method> methodMap = new ArrayMap<>();

    public static final ArrayMap<KClass<? extends NavArgs>, Method> getMethodMap() {
        return methodMap;
    }

    public static final Class<Bundle>[] getMethodSignature() {
        return methodSignature;
    }
}
