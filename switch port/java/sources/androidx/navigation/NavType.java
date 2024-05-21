package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;

/* compiled from: NavType.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u000b\b&\u0018\u0000 \u001e*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0006\u001e\u001f !\"#B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J \u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH¦\u0002¢\u0006\u0002\u0010\u000fJ%\u0010\u0010\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0012J/\u0010\u0010\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0007¢\u0006\u0002\u0010\u0014J\u0015\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\bH&¢\u0006\u0002\u0010\u0016J\u001d\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0017J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006$"}, d2 = {"Landroidx/navigation/NavType;", ExifInterface.GPS_DIRECTION_TRUE, "", "isNullableAllowed", "", "(Z)V", "()Z", "name", "", "getName", "()Ljava/lang/String;", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;", "parseAndPut", "value", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "previousValue", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "parseValue", "(Ljava/lang/String;)Ljava/lang/Object;", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V", "serializeAsValue", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "Companion", "EnumType", "ParcelableArrayType", "ParcelableType", "SerializableArrayType", "SerializableType", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class NavType<T> {
    private final boolean isNullableAllowed;
    private final String name = "nav_type";

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final NavType<Integer> IntType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$IntType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "integer";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
            put(bundle, str, num.intValue());
        }

        public void put(Bundle bundle, String key, int value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putInt(key, value);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            return (Integer) obj;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer parseValue(String value) {
            int parseInt;
            Intrinsics.checkNotNullParameter(value, "value");
            if (StringsKt.startsWith$default(value, "0x", false, 2, (Object) null)) {
                String substring = value.substring(2);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                parseInt = Integer.parseInt(substring, CharsKt.checkRadix(16));
            } else {
                parseInt = Integer.parseInt(value);
            }
            return Integer.valueOf(parseInt);
        }
    };
    public static final NavType<Integer> ReferenceType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$ReferenceType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "reference";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
            put(bundle, str, num.intValue());
        }

        public void put(Bundle bundle, String key, int value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putInt(key, value);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            return (Integer) obj;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer parseValue(String value) {
            int parseInt;
            Intrinsics.checkNotNullParameter(value, "value");
            if (StringsKt.startsWith$default(value, "0x", false, 2, (Object) null)) {
                String substring = value.substring(2);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                parseInt = Integer.parseInt(substring, CharsKt.checkRadix(16));
            } else {
                parseInt = Integer.parseInt(value);
            }
            return Integer.valueOf(parseInt);
        }
    };
    public static final NavType<int[]> IntArrayType = new NavType<int[]>() { // from class: androidx.navigation.NavType$Companion$IntArrayType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "integer[]";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, int[] value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putIntArray(key, value);
        }

        @Override // androidx.navigation.NavType
        public int[] get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (int[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public int[] parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new int[]{NavType.IntType.parseValue(value).intValue()};
        }

        @Override // androidx.navigation.NavType
        public int[] parseValue(String value, int[] previousValue) {
            int[] plus;
            Intrinsics.checkNotNullParameter(value, "value");
            return (previousValue == null || (plus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : plus;
        }
    };
    public static final NavType<Long> LongType = new NavType<Long>() { // from class: androidx.navigation.NavType$Companion$LongType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "long";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Long l) {
            put(bundle, str, l.longValue());
        }

        public void put(Bundle bundle, String key, long value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putLong(key, value);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Long");
            return (Long) obj;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long parseValue(String value) {
            String str;
            long parseLong;
            Intrinsics.checkNotNullParameter(value, "value");
            if (StringsKt.endsWith$default(value, "L", false, 2, (Object) null)) {
                str = value.substring(0, value.length() - 1);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
            } else {
                str = value;
            }
            if (StringsKt.startsWith$default(value, "0x", false, 2, (Object) null)) {
                String substring = str.substring(2);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                parseLong = Long.parseLong(substring, CharsKt.checkRadix(16));
            } else {
                parseLong = Long.parseLong(str);
            }
            return Long.valueOf(parseLong);
        }
    };
    public static final NavType<long[]> LongArrayType = new NavType<long[]>() { // from class: androidx.navigation.NavType$Companion$LongArrayType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "long[]";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, long[] value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putLongArray(key, value);
        }

        @Override // androidx.navigation.NavType
        public long[] get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (long[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public long[] parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new long[]{NavType.LongType.parseValue(value).longValue()};
        }

        @Override // androidx.navigation.NavType
        public long[] parseValue(String value, long[] previousValue) {
            long[] plus;
            Intrinsics.checkNotNullParameter(value, "value");
            return (previousValue == null || (plus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : plus;
        }
    };
    public static final NavType<Float> FloatType = new NavType<Float>() { // from class: androidx.navigation.NavType$Companion$FloatType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "float";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Float f) {
            put(bundle, str, f.floatValue());
        }

        public void put(Bundle bundle, String key, float value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putFloat(key, value);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Float");
            return (Float) obj;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return Float.valueOf(Float.parseFloat(value));
        }
    };
    public static final NavType<float[]> FloatArrayType = new NavType<float[]>() { // from class: androidx.navigation.NavType$Companion$FloatArrayType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "float[]";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, float[] value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putFloatArray(key, value);
        }

        @Override // androidx.navigation.NavType
        public float[] get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (float[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public float[] parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new float[]{NavType.FloatType.parseValue(value).floatValue()};
        }

        @Override // androidx.navigation.NavType
        public float[] parseValue(String value, float[] previousValue) {
            float[] plus;
            Intrinsics.checkNotNullParameter(value, "value");
            return (previousValue == null || (plus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : plus;
        }
    };
    public static final NavType<Boolean> BoolType = new NavType<Boolean>() { // from class: androidx.navigation.NavType$Companion$BoolType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "boolean";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Boolean bool) {
            put(bundle, str, bool.booleanValue());
        }

        public void put(Bundle bundle, String key, boolean value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putBoolean(key, value);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (Boolean) bundle.get(key);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean parseValue(String value) {
            boolean z;
            Intrinsics.checkNotNullParameter(value, "value");
            if (Intrinsics.areEqual(value, "true")) {
                z = true;
            } else {
                if (!Intrinsics.areEqual(value, "false")) {
                    throw new IllegalArgumentException("A boolean NavType only accepts \"true\" or \"false\" values.");
                }
                z = false;
            }
            return Boolean.valueOf(z);
        }
    };
    public static final NavType<boolean[]> BoolArrayType = new NavType<boolean[]>() { // from class: androidx.navigation.NavType$Companion$BoolArrayType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "boolean[]";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, boolean[] value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putBooleanArray(key, value);
        }

        @Override // androidx.navigation.NavType
        public boolean[] get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (boolean[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public boolean[] parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new boolean[]{NavType.BoolType.parseValue(value).booleanValue()};
        }

        @Override // androidx.navigation.NavType
        public boolean[] parseValue(String value, boolean[] previousValue) {
            boolean[] plus;
            Intrinsics.checkNotNullParameter(value, "value");
            return (previousValue == null || (plus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : plus;
        }
    };
    public static final NavType<String> StringType = new NavType<String>() { // from class: androidx.navigation.NavType$Companion$StringType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "string";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, String value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putString(key, value);
        }

        @Override // androidx.navigation.NavType
        public String get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (String) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public String parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            return value;
        }

        @Override // androidx.navigation.NavType
        public String serializeAsValue(String value) {
            String encode = value != null ? Uri.encode(value) : null;
            return encode == null ? "null" : encode;
        }
    };
    public static final NavType<String[]> StringArrayType = new NavType<String[]>() { // from class: androidx.navigation.NavType$Companion$StringArrayType$1
        @Override // androidx.navigation.NavType
        public String getName() {
            return "string[]";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, String[] value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putStringArray(key, value);
        }

        @Override // androidx.navigation.NavType
        public String[] get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (String[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public String[] parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new String[]{value};
        }

        @Override // androidx.navigation.NavType
        public String[] parseValue(String value, String[] previousValue) {
            String[] strArr;
            Intrinsics.checkNotNullParameter(value, "value");
            return (previousValue == null || (strArr = (String[]) ArraysKt.plus((Object[]) previousValue, (Object[]) parseValue(value))) == null) ? parseValue(value) : strArr;
        }
    };

    @JvmStatic
    public static NavType<?> fromArgType(String str, String str2) {
        return INSTANCE.fromArgType(str, str2);
    }

    @JvmStatic
    public static final NavType<Object> inferFromValue(String str) {
        return INSTANCE.inferFromValue(str);
    }

    @JvmStatic
    public static final NavType<Object> inferFromValueType(Object obj) {
        return INSTANCE.inferFromValueType(obj);
    }

    public abstract T get(Bundle bundle, String key);

    public String getName() {
        return this.name;
    }

    /* renamed from: isNullableAllowed, reason: from getter */
    public boolean getIsNullableAllowed() {
        return this.isNullableAllowed;
    }

    public abstract T parseValue(String value);

    public abstract void put(Bundle bundle, String key, T value);

    public NavType(boolean z) {
        this.isNullableAllowed = z;
    }

    public T parseValue(String value, T previousValue) {
        Intrinsics.checkNotNullParameter(value, "value");
        return parseValue(value);
    }

    public final T parseAndPut(Bundle bundle, String key, String value) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        T parseValue = parseValue(value);
        put(bundle, key, parseValue);
        return parseValue;
    }

    public final T parseAndPut(Bundle bundle, String key, String value, T previousValue) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!bundle.containsKey(key)) {
            throw new IllegalArgumentException("There is no previous value in this bundle.");
        }
        if (value == null) {
            return previousValue;
        }
        T parseValue = parseValue(value, previousValue);
        put(bundle, key, parseValue);
        return parseValue;
    }

    public String serializeAsValue(T value) {
        return String.valueOf(value);
    }

    public String toString() {
        return getName();
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0017J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u001d\u001a\u00020\u0017H\u0007J\u0018\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0007R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00160\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Landroidx/navigation/NavType$Companion;", "", "()V", "BoolArrayType", "Landroidx/navigation/NavType;", "", "BoolType", "", "FloatArrayType", "", "FloatType", "", "IntArrayType", "", "IntType", "", "LongArrayType", "", "LongType", "", "ReferenceType", "StringArrayType", "", "", "StringType", "fromArgType", "type", "packageName", "inferFromValue", "value", "inferFromValueType", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public NavType<?> fromArgType(String type, String packageName) {
            if (Intrinsics.areEqual(NavType.IntType.getName(), type)) {
                return NavType.IntType;
            }
            if (Intrinsics.areEqual(NavType.IntArrayType.getName(), type)) {
                return NavType.IntArrayType;
            }
            if (Intrinsics.areEqual(NavType.LongType.getName(), type)) {
                return NavType.LongType;
            }
            if (Intrinsics.areEqual(NavType.LongArrayType.getName(), type)) {
                return NavType.LongArrayType;
            }
            if (Intrinsics.areEqual(NavType.BoolType.getName(), type)) {
                return NavType.BoolType;
            }
            if (Intrinsics.areEqual(NavType.BoolArrayType.getName(), type)) {
                return NavType.BoolArrayType;
            }
            if (Intrinsics.areEqual(NavType.StringType.getName(), type)) {
                return NavType.StringType;
            }
            if (Intrinsics.areEqual(NavType.StringArrayType.getName(), type)) {
                return NavType.StringArrayType;
            }
            if (Intrinsics.areEqual(NavType.FloatType.getName(), type)) {
                return NavType.FloatType;
            }
            if (Intrinsics.areEqual(NavType.FloatArrayType.getName(), type)) {
                return NavType.FloatArrayType;
            }
            if (Intrinsics.areEqual(NavType.ReferenceType.getName(), type)) {
                return NavType.ReferenceType;
            }
            String str = type;
            if (str != null && str.length() != 0) {
                try {
                    String str2 = (!StringsKt.startsWith$default(type, ".", false, 2, (Object) null) || packageName == null) ? type : packageName + type;
                    if (StringsKt.endsWith$default(type, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, false, 2, (Object) null)) {
                        str2 = str2.substring(0, str2.length() - 2);
                        Intrinsics.checkNotNullExpressionValue(str2, "this as java.lang.String…ing(startIndex, endIndex)");
                        Class<?> cls = Class.forName(str2);
                        if (Parcelable.class.isAssignableFrom(cls)) {
                            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<android.os.Parcelable>");
                            return new ParcelableArrayType(cls);
                        }
                        if (Serializable.class.isAssignableFrom(cls)) {
                            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                            return new SerializableArrayType(cls);
                        }
                    } else {
                        Class<?> cls2 = Class.forName(str2);
                        if (Parcelable.class.isAssignableFrom(cls2)) {
                            Intrinsics.checkNotNull(cls2, "null cannot be cast to non-null type java.lang.Class<kotlin.Any?>");
                            return new ParcelableType(cls2);
                        }
                        if (Enum.class.isAssignableFrom(cls2)) {
                            Intrinsics.checkNotNull(cls2, "null cannot be cast to non-null type java.lang.Class<kotlin.Enum<*>>");
                            return new EnumType(cls2);
                        }
                        if (Serializable.class.isAssignableFrom(cls2)) {
                            Intrinsics.checkNotNull(cls2, "null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                            return new SerializableType(cls2);
                        }
                    }
                    throw new IllegalArgumentException(str2 + " is not Serializable or Parcelable.");
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            }
            return NavType.StringType;
        }

        @JvmStatic
        public final NavType<Object> inferFromValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                try {
                    try {
                        try {
                            NavType.IntType.parseValue(value);
                            NavType<Integer> navType = NavType.IntType;
                            Intrinsics.checkNotNull(navType, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                            return navType;
                        } catch (IllegalArgumentException unused) {
                            NavType.LongType.parseValue(value);
                            NavType<Long> navType2 = NavType.LongType;
                            Intrinsics.checkNotNull(navType2, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                            return navType2;
                        }
                    } catch (IllegalArgumentException unused2) {
                        NavType<String> navType3 = NavType.StringType;
                        Intrinsics.checkNotNull(navType3, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                        return navType3;
                    }
                } catch (IllegalArgumentException unused3) {
                    NavType.FloatType.parseValue(value);
                    NavType<Float> navType4 = NavType.FloatType;
                    Intrinsics.checkNotNull(navType4, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                    return navType4;
                }
            } catch (IllegalArgumentException unused4) {
                NavType.BoolType.parseValue(value);
                NavType<Boolean> navType5 = NavType.BoolType;
                Intrinsics.checkNotNull(navType5, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType5;
            }
        }

        @JvmStatic
        public final NavType<Object> inferFromValueType(Object value) {
            if (value instanceof Integer) {
                NavType<Integer> navType = NavType.IntType;
                Intrinsics.checkNotNull(navType, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType;
            }
            if (value instanceof int[]) {
                NavType<int[]> navType2 = NavType.IntArrayType;
                Intrinsics.checkNotNull(navType2, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType2;
            }
            if (value instanceof Long) {
                NavType<Long> navType3 = NavType.LongType;
                Intrinsics.checkNotNull(navType3, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType3;
            }
            if (value instanceof long[]) {
                NavType<long[]> navType4 = NavType.LongArrayType;
                Intrinsics.checkNotNull(navType4, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType4;
            }
            if (value instanceof Float) {
                NavType<Float> navType5 = NavType.FloatType;
                Intrinsics.checkNotNull(navType5, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType5;
            }
            if (value instanceof float[]) {
                NavType<float[]> navType6 = NavType.FloatArrayType;
                Intrinsics.checkNotNull(navType6, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType6;
            }
            if (value instanceof Boolean) {
                NavType<Boolean> navType7 = NavType.BoolType;
                Intrinsics.checkNotNull(navType7, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType7;
            }
            if (value instanceof boolean[]) {
                NavType<boolean[]> navType8 = NavType.BoolArrayType;
                Intrinsics.checkNotNull(navType8, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType8;
            }
            if ((value instanceof String) || value == null) {
                NavType<String> navType9 = NavType.StringType;
                Intrinsics.checkNotNull(navType9, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType9;
            }
            if ((value instanceof Object[]) && (((Object[]) value) instanceof String[])) {
                NavType<String[]> navType10 = NavType.StringArrayType;
                Intrinsics.checkNotNull(navType10, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any>");
                return navType10;
            }
            if (value.getClass().isArray()) {
                Class<?> componentType = value.getClass().getComponentType();
                Intrinsics.checkNotNull(componentType);
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    Class<?> componentType2 = value.getClass().getComponentType();
                    Intrinsics.checkNotNull(componentType2, "null cannot be cast to non-null type java.lang.Class<android.os.Parcelable>");
                    return new ParcelableArrayType(componentType2);
                }
            }
            if (value.getClass().isArray()) {
                Class<?> componentType3 = value.getClass().getComponentType();
                Intrinsics.checkNotNull(componentType3);
                if (Serializable.class.isAssignableFrom(componentType3)) {
                    Class<?> componentType4 = value.getClass().getComponentType();
                    Intrinsics.checkNotNull(componentType4, "null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                    return new SerializableArrayType(componentType4);
                }
            }
            if (value instanceof Parcelable) {
                return new ParcelableType(value.getClass());
            }
            if (value instanceof Enum) {
                return new EnumType(value.getClass());
            }
            if (value instanceof Serializable) {
                return new SerializableType(value.getClass());
            }
            throw new IllegalArgumentException("Object of type " + value.getClass().getName() + " is not supported for navigation arguments.");
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J \u0010\u000e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0015\u0010\u0015\u001a\u00028\u00012\u0006\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\u0017J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/navigation/NavType$ParcelableType;", "D", "Landroidx/navigation/NavType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Object;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class ParcelableType<D> extends NavType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableType(Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            if (!Parcelable.class.isAssignableFrom(type) && !Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Parcelable or Serializable.").toString());
            }
            this.type = type;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            String name = this.type.getName();
            Intrinsics.checkNotNullExpressionValue(name, "type.name");
            return name;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            this.type.cast(value);
            if (value == null || (value instanceof Parcelable)) {
                bundle.putParcelable(key, (Parcelable) value);
            } else if (value instanceof Serializable) {
                bundle.putSerializable(key, (Serializable) value);
            }
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public D parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.type, ((ParcelableType) other).type);
        }

        public int hashCode() {
            return this.type.hashCode();
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J&\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u001aJ-\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001dR\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, d2 = {"Landroidx/navigation/NavType$ParcelableArrayType;", "D", "Landroid/os/Parcelable;", "Landroidx/navigation/NavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "arrayType", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Parcelable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)[Landroid/os/Parcelable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class ParcelableArrayType<D extends Parcelable> extends NavType<D[]> {
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableArrayType(Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            if (!Parcelable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Parcelable.").toString());
            }
            try {
                Class<D[]> cls = (Class<D[]>) Class.forName("[L" + type.getName() + ';');
                Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<kotlin.Array<D of androidx.navigation.NavType.ParcelableArrayType>>");
                this.arrayType = cls;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            String name = this.arrayType.getName();
            Intrinsics.checkNotNullExpressionValue(name, "arrayType.name");
            return name;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D[] value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            this.arrayType.cast(value);
            bundle.putParcelableArray(key, value);
        }

        @Override // androidx.navigation.NavType
        public D[] get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D[]) ((Parcelable[]) bundle.get(key));
        }

        @Override // androidx.navigation.NavType
        public D[] parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((ParcelableArrayType) other).arrayType);
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006B\u001d\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\tJ\u0013\u0010\u000e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J \u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0015\u0010\u0018\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0002\u0010\u001aJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001dR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/navigation/NavType$SerializableType;", "D", "Ljava/io/Serializable;", "Landroidx/navigation/NavType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "nullableAllowed", "", "(ZLjava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "equals", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)Ljava/io/Serializable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static class SerializableType<D extends Serializable> extends NavType<D> {
        private final Class<D> type;

        @Override // androidx.navigation.NavType
        public String getName() {
            String name = this.type.getName();
            Intrinsics.checkNotNullExpressionValue(name, "type.name");
            return name;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            if (!Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
            }
            if (!(true ^ type.isEnum())) {
                throw new IllegalArgumentException((type + " is an Enum. You should use EnumType instead.").toString());
            }
            this.type = type;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(boolean z, Class<D> type) {
            super(z);
            Intrinsics.checkNotNullParameter(type, "type");
            if (!Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
            }
            this.type = type;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this.type.cast(value);
            bundle.putSerializable(key, value);
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public D parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof SerializableType) {
                return Intrinsics.areEqual(this.type, ((SerializableType) other).type);
            }
            return false;
        }

        public int hashCode() {
            return this.type.hashCode();
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000*\f\b\u0001\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u000b\u001a\u00028\u00012\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\rR\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/navigation/NavType$EnumType;", "D", "", "Landroidx/navigation/NavType$SerializableType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Enum;", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class EnumType<D extends Enum<?>> extends SerializableType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumType(Class<D> type) {
            super(false, type);
            Intrinsics.checkNotNullParameter(type, "type");
            if (!type.isEnum()) {
                throw new IllegalArgumentException((type + " is not an Enum type.").toString());
            }
            this.type = type;
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public String getName() {
            String name = this.type.getName();
            Intrinsics.checkNotNullExpressionValue(name, "type.name");
            return name;
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public D parseValue(String value) {
            D d;
            Intrinsics.checkNotNullParameter(value, "value");
            D[] enumConstants = this.type.getEnumConstants();
            Intrinsics.checkNotNullExpressionValue(enumConstants, "type.enumConstants");
            int length = enumConstants.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    d = null;
                    break;
                }
                d = enumConstants[i];
                if (StringsKt.equals(d.name(), value, true)) {
                    break;
                }
                i++;
            }
            D d2 = d;
            if (d2 != null) {
                return d2;
            }
            throw new IllegalArgumentException("Enum value " + value + " not found for type " + this.type.getName() + '.');
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J&\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u001aJ-\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001dR\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, d2 = {"Landroidx/navigation/NavType$SerializableArrayType;", "D", "Ljava/io/Serializable;", "Landroidx/navigation/NavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "arrayType", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/io/Serializable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)[Ljava/io/Serializable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;[Ljava/io/Serializable;)V", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class SerializableArrayType<D extends Serializable> extends NavType<D[]> {
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableArrayType(Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            if (!Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
            }
            try {
                Class<D[]> cls = (Class<D[]>) Class.forName("[L" + type.getName() + ';');
                Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<kotlin.Array<D of androidx.navigation.NavType.SerializableArrayType>>");
                this.arrayType = cls;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            String name = this.arrayType.getName();
            Intrinsics.checkNotNullExpressionValue(name, "arrayType.name");
            return name;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D[] value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            this.arrayType.cast(value);
            bundle.putSerializable(key, (Serializable) value);
        }

        @Override // androidx.navigation.NavType
        public D[] get(Bundle bundle, String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D[]) ((Serializable[]) bundle.get(key));
        }

        @Override // androidx.navigation.NavType
        public D[] parseValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((SerializableArrayType) other).arrayType);
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }
    }
}
