package kotlin.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.internal.jdk8.JDK8PlatformImplementations;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlatformImplementations.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\"\u0010\b\u001a\u0002H\t\"\n\b\u0000\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0083\b¢\u0006\u0002\u0010\f\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "apiVersionIsAtLeast", "", "major", "", "minor", "patch", "castToBaseType", ExifInterface.GPS_DIRECTION_TRUE, "", "instance", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PlatformImplementationsKt {
    public static final PlatformImplementations IMPLEMENTATIONS;

    static {
        JDK8PlatformImplementations jDK8PlatformImplementations = new JDK8PlatformImplementations();
        try {
            IMPLEMENTATIONS = jDK8PlatformImplementations;
        } catch (ClassCastException e) {
            ClassLoader classLoader = jDK8PlatformImplementations.getClass().getClassLoader();
            ClassLoader classLoader2 = PlatformImplementations.class.getClassLoader();
            if (!Intrinsics.areEqual(classLoader, classLoader2)) {
                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e);
            }
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final /* synthetic */ <T> T castToBaseType(Object obj) {
        try {
            Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
            Object obj2 = obj;
            return obj;
        } catch (ClassCastException e) {
            ClassLoader classLoader = obj.getClass().getClassLoader();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            ClassLoader classLoader2 = Object.class.getClassLoader();
            if (!Intrinsics.areEqual(classLoader, classLoader2)) {
                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e);
            }
            throw e;
        }
    }

    public static final boolean apiVersionIsAtLeast(int i, int i2, int i3) {
        return KotlinVersion.CURRENT.isAtLeast(i, i2, i3);
    }
}
