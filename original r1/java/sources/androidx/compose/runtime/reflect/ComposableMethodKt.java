package androidx.compose.runtime.reflect;

import androidx.compose.runtime.Composer;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.profilemeasurements.ProfileMeasurement;
import io.sentry.protocol.MetricSummary;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import tech.rabbit.r1launcher.BuildConfig;

/* compiled from: ComposableMethod.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\u001a\u0018\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\f\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\b\u001a(\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u000b0\n\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u0002H\u000b2\u0006\u0010\f\u001a\u00020\u0001H\u0082\b¢\u0006\u0002\u0010\r\u001a\f\u0010\u000e\u001a\u00020\u000f*\u00020\bH\u0002\u001a7\u0010\u0010\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u001a\u0010\u0014\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00110\n\"\u0006\u0012\u0002\b\u00030\u0011¢\u0006\u0002\u0010\u0015\u001a\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u0006\u0012\u0002\b\u00030\u0011H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"BITS_PER_INT", "", "changedParamCount", "realValueParams", "thisParams", "defaultParamCount", "asComposableMethod", "Landroidx/compose/runtime/reflect/ComposableMethod;", "Ljava/lang/reflect/Method;", "dup", "", ExifInterface.GPS_DIRECTION_TRUE, MetricSummary.JsonKeys.COUNT, "(Ljava/lang/Object;I)[Ljava/lang/Object;", "getComposableInfo", "Landroidx/compose/runtime/reflect/ComposableInfo;", "getDeclaredComposableMethod", "Ljava/lang/Class;", "methodName", "", "args", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Landroidx/compose/runtime/reflect/ComposableMethod;", "getDefaultValue", "", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableMethodKt {
    private static final int BITS_PER_INT = 31;

    private static final int changedParamCount(int i, int i2) {
        if (i == 0) {
            return 1;
        }
        return (int) Math.ceil((i + i2) / 10.0d);
    }

    private static final int defaultParamCount(int i) {
        return (int) Math.ceil(i / 31.0d);
    }

    private static final ComposableInfo getComposableInfo(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "parameterTypes");
        Class<?>[] clsArr = parameterTypes;
        int length = clsArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (Intrinsics.areEqual(clsArr[length], Composer.class)) {
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
        }
        length = -1;
        if (length == -1) {
            return new ComposableInfo(false, method.getParameterTypes().length, 0, 0);
        }
        int changedParamCount = changedParamCount(length, !Modifier.isStatic(method.getModifiers()) ? 1 : 0);
        int i2 = length + 1 + changedParamCount;
        int length2 = method.getParameterTypes().length;
        int defaultParamCount = length2 != i2 ? defaultParamCount(length) : 0;
        return new ComposableInfo(i2 + defaultParamCount == length2, length, changedParamCount, defaultParamCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final Object getDefaultValue(Class<?> cls) {
        String name = cls.getName();
        if (name != null) {
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        return Double.valueOf(BuildConfig.SENTRY_SAMPLE_RATE);
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        return 0;
                    }
                    break;
                case 3039496:
                    if (name.equals(ProfileMeasurement.UNIT_BYTES)) {
                        return (byte) 0;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        return (char) 0;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        return 0L;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        return false;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        return Float.valueOf(0.0f);
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        return (short) 0;
                    }
                    break;
            }
        }
        return null;
    }

    public static final ComposableMethod asComposableMethod(Method method) {
        Intrinsics.checkNotNullParameter(method, "<this>");
        ComposableInfo composableInfo = getComposableInfo(method);
        if (composableInfo.isComposable()) {
            return new ComposableMethod(method, composableInfo);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final /* synthetic */ <T> T[] dup(T t, int i) {
        IntRange until = RangesKt.until(0, i);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
        Iterator<Integer> it = until.iterator();
        while (it.hasNext()) {
            ((IntIterator) it).nextInt();
            arrayList.add(t);
        }
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) arrayList.toArray(new Object[0]);
    }

    public static final ComposableMethod getDeclaredComposableMethod(Class<?> cls, String methodName, Class<?>... args) throws NoSuchMethodException {
        Method method;
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        int changedParamCount = changedParamCount(args.length, 0);
        try {
            SpreadBuilder spreadBuilder = new SpreadBuilder(3);
            spreadBuilder.addSpread(args);
            spreadBuilder.add(Composer.class);
            Class cls2 = Integer.TYPE;
            IntRange until = RangesKt.until(0, changedParamCount);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).nextInt();
                arrayList.add(cls2);
            }
            spreadBuilder.addSpread(arrayList.toArray(new Class[0]));
            method = cls.getDeclaredMethod(methodName, (Class[]) spreadBuilder.toArray(new Class[spreadBuilder.size()]));
        } catch (ReflectiveOperationException unused) {
            int defaultParamCount = defaultParamCount(args.length);
            try {
                SpreadBuilder spreadBuilder2 = new SpreadBuilder(4);
                spreadBuilder2.addSpread(args);
                spreadBuilder2.add(Composer.class);
                Class cls3 = Integer.TYPE;
                IntRange until2 = RangesKt.until(0, changedParamCount);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(until2, 10));
                Iterator<Integer> it2 = until2.iterator();
                while (it2.hasNext()) {
                    ((IntIterator) it2).nextInt();
                    arrayList2.add(cls3);
                }
                spreadBuilder2.addSpread(arrayList2.toArray(new Class[0]));
                Class cls4 = Integer.TYPE;
                IntRange until3 = RangesKt.until(0, defaultParamCount);
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(until3, 10));
                Iterator<Integer> it3 = until3.iterator();
                while (it3.hasNext()) {
                    ((IntIterator) it3).nextInt();
                    arrayList3.add(cls4);
                }
                spreadBuilder2.addSpread(arrayList3.toArray(new Class[0]));
                method = cls.getDeclaredMethod(methodName, (Class[]) spreadBuilder2.toArray(new Class[spreadBuilder2.size()]));
            } catch (ReflectiveOperationException unused2) {
                method = null;
            }
        }
        if (method == null) {
            throw new NoSuchMethodException(cls.getName() + '.' + methodName);
        }
        ComposableMethod asComposableMethod = asComposableMethod(method);
        Intrinsics.checkNotNull(asComposableMethod);
        return asComposableMethod;
    }
}
