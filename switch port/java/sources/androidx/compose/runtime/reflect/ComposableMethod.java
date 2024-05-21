package androidx.compose.runtime.reflect;

import androidx.compose.runtime.Composer;
import io.sentry.protocol.Request;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: ComposableMethod.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0014\u001a\u00020\u0003J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0018\u001a\u00020\bH\u0016J:\u0010\u0019\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0016\u0010\u001d\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\f\"\u0004\u0018\u00010\u0001H\u0086\u0002¢\u0006\u0002\u0010\u001eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\f8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Landroidx/compose/runtime/reflect/ComposableMethod;", "", Request.JsonKeys.METHOD, "Ljava/lang/reflect/Method;", "composableInfo", "Landroidx/compose/runtime/reflect/ComposableInfo;", "(Ljava/lang/reflect/Method;Landroidx/compose/runtime/reflect/ComposableInfo;)V", "parameterCount", "", "getParameterCount", "()I", "parameterTypes", "", "Ljava/lang/Class;", "getParameterTypes", "()[Ljava/lang/Class;", "parameters", "Ljava/lang/reflect/Parameter;", "getParameters", "()[Ljava/lang/reflect/Parameter;", "asMethod", "equals", "", "other", "hashCode", "invoke", "composer", "Landroidx/compose/runtime/Composer;", "instance", "args", "(Landroidx/compose/runtime/Composer;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableMethod {
    public static final int $stable = 8;
    private final ComposableInfo composableInfo;
    private final Method method;

    /* renamed from: asMethod, reason: from getter */
    public final Method getMethod() {
        return this.method;
    }

    public ComposableMethod(Method method, ComposableInfo composableInfo) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(composableInfo, "composableInfo");
        this.method = method;
        this.composableInfo = composableInfo;
    }

    public final int getParameterCount() {
        return this.composableInfo.getRealParamsCount();
    }

    public final Parameter[] getParameters() {
        Parameter[] parameters = this.method.getParameters();
        Intrinsics.checkNotNullExpressionValue(parameters, "method.parameters");
        return (Parameter[]) ArraysKt.copyOfRange(parameters, 0, this.composableInfo.getRealParamsCount());
    }

    public final Class<?>[] getParameterTypes() {
        Class<?>[] parameterTypes = this.method.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "method.parameterTypes");
        return (Class[]) ArraysKt.copyOfRange(parameterTypes, 0, this.composableInfo.getRealParamsCount());
    }

    public final Object invoke(Composer composer, Object instance, Object... args) {
        Object obj;
        Intrinsics.checkNotNullParameter(composer, "composer");
        Intrinsics.checkNotNullParameter(args, "args");
        ComposableInfo composableInfo = this.composableInfo;
        int realParamsCount = composableInfo.getRealParamsCount();
        int changedParams = composableInfo.getChangedParams();
        int defaultParams = composableInfo.getDefaultParams();
        int length = this.method.getParameterTypes().length;
        int i = realParamsCount + 1;
        int i2 = changedParams + i;
        Object[] objArr = new Integer[defaultParams];
        for (int i3 = 0; i3 < defaultParams; i3++) {
            int i4 = i3 * 31;
            IntRange until = RangesKt.until(i4, Math.min(i4 + 31, realParamsCount));
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                int nextInt = ((IntIterator) it).nextInt();
                arrayList.add(Integer.valueOf((nextInt >= args.length || args[nextInt] == null) ? 1 : 0));
            }
            int i5 = 0;
            int i6 = 0;
            for (Object obj2 : arrayList) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                i5 |= ((Number) obj2).intValue() << i6;
                i6 = i7;
            }
            objArr[i3] = Integer.valueOf(i5);
        }
        Object[] objArr2 = new Object[length];
        for (int i8 = 0; i8 < length; i8++) {
            if (i8 < 0 || i8 >= realParamsCount) {
                if (i8 == realParamsCount) {
                    obj = composer;
                } else if (i8 == i || (realParamsCount + 2 <= i8 && i8 < i2)) {
                    obj = 0;
                } else {
                    if (i2 > i8 || i8 >= length) {
                        throw new IllegalStateException("Unexpected index".toString());
                    }
                    obj = objArr[i8 - i2];
                }
            } else if (i8 < 0 || i8 > ArraysKt.getLastIndex(args)) {
                Class<?> cls = this.method.getParameterTypes()[i8];
                Intrinsics.checkNotNullExpressionValue(cls, "method.parameterTypes[idx]");
                obj = ComposableMethodKt.getDefaultValue(cls);
            } else {
                obj = args[i8];
            }
            objArr2[i8] = obj;
        }
        return this.method.invoke(instance, Arrays.copyOf(objArr2, length));
    }

    public boolean equals(Object other) {
        if (other instanceof ComposableMethod) {
            return Intrinsics.areEqual(this.method, ((ComposableMethod) other).method);
        }
        return false;
    }

    public int hashCode() {
        return this.method.hashCode();
    }
}
