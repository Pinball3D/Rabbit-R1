package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.function.Consumer;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: SafeWindowLayoutComponentProvider.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\u0012\u0012\u0002\b\u0003 \u0012*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0016\u0010\u0017\u001a\u00020\n2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u0019H\u0002J \u0010\u001a\u001a\u0012\u0012\u0002\b\u0003 \u0012*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u001b\u001a\u0012\u0012\u0002\b\u0003 \u0012*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u001c\u001a\u0012\u0012\u0002\b\u0003 \u0012*\b\u0012\u0002\b\u0003\u0018\u00010\u00110\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u001d\u001a\u00020\n*\u00020\u000b2\n\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0002J\u0018\u0010\u001d\u001a\u00020\n*\u00020\u000b2\n\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u001fH\u0002R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\t\u001a\u00020\n*\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\f¨\u0006 "}, d2 = {"Landroidx/window/layout/SafeWindowLayoutComponentProvider;", "", "()V", "windowLayoutComponent", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "getWindowLayoutComponent", "()Landroidx/window/extensions/layout/WindowLayoutComponent;", "windowLayoutComponent$delegate", "Lkotlin/Lazy;", "isPublic", "", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)Z", "canUseWindowLayoutComponent", "classLoader", "Ljava/lang/ClassLoader;", "foldingFeatureClass", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "isFoldingFeatureValid", "isWindowExtensionsValid", "isWindowLayoutComponentValid", "isWindowLayoutProviderValid", "validate", "block", "Lkotlin/Function0;", "windowExtensionsClass", "windowExtensionsProviderClass", "windowLayoutComponentClass", "doesReturn", "clazz", "Lkotlin/reflect/KClass;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SafeWindowLayoutComponentProvider {
    public static final SafeWindowLayoutComponentProvider INSTANCE = new SafeWindowLayoutComponentProvider();

    /* renamed from: windowLayoutComponent$delegate, reason: from kotlin metadata */
    private static final Lazy windowLayoutComponent = LazyKt.lazy(new Function0<WindowLayoutComponent>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$windowLayoutComponent$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final WindowLayoutComponent invoke() {
            boolean canUseWindowLayoutComponent;
            ClassLoader classLoader = SafeWindowLayoutComponentProvider.class.getClassLoader();
            if (classLoader != null) {
                canUseWindowLayoutComponent = SafeWindowLayoutComponentProvider.INSTANCE.canUseWindowLayoutComponent(classLoader);
                if (canUseWindowLayoutComponent) {
                    try {
                        return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
                    } catch (UnsupportedOperationException unused) {
                        return null;
                    }
                }
            }
            return null;
        }
    });

    private SafeWindowLayoutComponentProvider() {
    }

    public final WindowLayoutComponent getWindowLayoutComponent() {
        return (WindowLayoutComponent) windowLayoutComponent.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean canUseWindowLayoutComponent(ClassLoader classLoader) {
        return isWindowLayoutProviderValid(classLoader) && isWindowExtensionsValid(classLoader) && isWindowLayoutComponentValid(classLoader) && isFoldingFeatureValid(classLoader);
    }

    private final boolean isWindowLayoutProviderValid(final ClassLoader classLoader) {
        return validate(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Class windowExtensionsProviderClass;
                Class windowExtensionsClass;
                boolean doesReturn;
                boolean isPublic;
                windowExtensionsProviderClass = SafeWindowLayoutComponentProvider.INSTANCE.windowExtensionsProviderClass(classLoader);
                boolean z = false;
                Method getWindowExtensionsMethod = windowExtensionsProviderClass.getDeclaredMethod("getWindowExtensions", new Class[0]);
                windowExtensionsClass = SafeWindowLayoutComponentProvider.INSTANCE.windowExtensionsClass(classLoader);
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(getWindowExtensionsMethod, "getWindowExtensionsMethod");
                Intrinsics.checkNotNullExpressionValue(windowExtensionsClass, "windowExtensionsClass");
                doesReturn = safeWindowLayoutComponentProvider.doesReturn(getWindowExtensionsMethod, (Class<?>) windowExtensionsClass);
                if (doesReturn) {
                    isPublic = SafeWindowLayoutComponentProvider.INSTANCE.isPublic(getWindowExtensionsMethod);
                    if (isPublic) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    private final boolean isWindowExtensionsValid(final ClassLoader classLoader) {
        return validate(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Class windowExtensionsClass;
                Class windowLayoutComponentClass;
                boolean isPublic;
                boolean doesReturn;
                windowExtensionsClass = SafeWindowLayoutComponentProvider.INSTANCE.windowExtensionsClass(classLoader);
                boolean z = false;
                Method getWindowLayoutComponentMethod = windowExtensionsClass.getMethod("getWindowLayoutComponent", new Class[0]);
                windowLayoutComponentClass = SafeWindowLayoutComponentProvider.INSTANCE.windowLayoutComponentClass(classLoader);
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(getWindowLayoutComponentMethod, "getWindowLayoutComponentMethod");
                isPublic = safeWindowLayoutComponentProvider.isPublic(getWindowLayoutComponentMethod);
                if (isPublic) {
                    SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider2 = SafeWindowLayoutComponentProvider.INSTANCE;
                    Intrinsics.checkNotNullExpressionValue(windowLayoutComponentClass, "windowLayoutComponentClass");
                    doesReturn = safeWindowLayoutComponentProvider2.doesReturn(getWindowLayoutComponentMethod, (Class<?>) windowLayoutComponentClass);
                    if (doesReturn) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    private final boolean isFoldingFeatureValid(final ClassLoader classLoader) {
        return validate(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Class foldingFeatureClass;
                boolean doesReturn;
                boolean isPublic;
                boolean doesReturn2;
                boolean isPublic2;
                boolean doesReturn3;
                boolean isPublic3;
                foldingFeatureClass = SafeWindowLayoutComponentProvider.INSTANCE.foldingFeatureClass(classLoader);
                boolean z = false;
                Method getBoundsMethod = foldingFeatureClass.getMethod("getBounds", new Class[0]);
                Method getTypeMethod = foldingFeatureClass.getMethod("getType", new Class[0]);
                Method getStateMethod = foldingFeatureClass.getMethod("getState", new Class[0]);
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(getBoundsMethod, "getBoundsMethod");
                doesReturn = safeWindowLayoutComponentProvider.doesReturn(getBoundsMethod, (KClass<?>) Reflection.getOrCreateKotlinClass(Rect.class));
                if (doesReturn) {
                    isPublic = SafeWindowLayoutComponentProvider.INSTANCE.isPublic(getBoundsMethod);
                    if (isPublic) {
                        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider2 = SafeWindowLayoutComponentProvider.INSTANCE;
                        Intrinsics.checkNotNullExpressionValue(getTypeMethod, "getTypeMethod");
                        doesReturn2 = safeWindowLayoutComponentProvider2.doesReturn(getTypeMethod, (KClass<?>) Reflection.getOrCreateKotlinClass(Integer.TYPE));
                        if (doesReturn2) {
                            isPublic2 = SafeWindowLayoutComponentProvider.INSTANCE.isPublic(getTypeMethod);
                            if (isPublic2) {
                                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider3 = SafeWindowLayoutComponentProvider.INSTANCE;
                                Intrinsics.checkNotNullExpressionValue(getStateMethod, "getStateMethod");
                                doesReturn3 = safeWindowLayoutComponentProvider3.doesReturn(getStateMethod, (KClass<?>) Reflection.getOrCreateKotlinClass(Integer.TYPE));
                                if (doesReturn3) {
                                    isPublic3 = SafeWindowLayoutComponentProvider.INSTANCE.isPublic(getStateMethod);
                                    if (isPublic3) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    private final boolean isWindowLayoutComponentValid(final ClassLoader classLoader) {
        return validate(new Function0<Boolean>() { // from class: androidx.window.layout.SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Class windowLayoutComponentClass;
                boolean isPublic;
                boolean isPublic2;
                windowLayoutComponentClass = SafeWindowLayoutComponentProvider.INSTANCE.windowLayoutComponentClass(classLoader);
                boolean z = false;
                Method addListenerMethod = windowLayoutComponentClass.getMethod("addWindowLayoutInfoListener", Activity.class, Consumer.class);
                Method removeListenerMethod = windowLayoutComponentClass.getMethod("removeWindowLayoutInfoListener", Consumer.class);
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(addListenerMethod, "addListenerMethod");
                isPublic = safeWindowLayoutComponentProvider.isPublic(addListenerMethod);
                if (isPublic) {
                    SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider2 = SafeWindowLayoutComponentProvider.INSTANCE;
                    Intrinsics.checkNotNullExpressionValue(removeListenerMethod, "removeListenerMethod");
                    isPublic2 = safeWindowLayoutComponentProvider2.isPublic(removeListenerMethod);
                    if (isPublic2) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    private final boolean validate(Function0<Boolean> block) {
        try {
            return block.invoke().booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isPublic(Method method) {
        return Modifier.isPublic(method.getModifiers());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean doesReturn(Method method, KClass<?> kClass) {
        return doesReturn(method, JvmClassMappingKt.getJavaClass((KClass) kClass));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean doesReturn(Method method, Class<?> cls) {
        return method.getReturnType().equals(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class<?> windowExtensionsProviderClass(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.WindowExtensionsProvider");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class<?> windowExtensionsClass(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.WindowExtensions");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class<?> foldingFeatureClass(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.layout.FoldingFeature");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class<?> windowLayoutComponentClass(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.layout.WindowLayoutComponent");
    }
}
