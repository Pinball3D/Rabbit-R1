package tech.rabbit.common.utils;

import android.content.SharedPreferences;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SPUtils.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\b\u001a\u00020\u0007H\u0007J!\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0001¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u000fH\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0004J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Ltech/rabbit/common/utils/SPUtils;", "", "()V", "KEY_IS_FIRST_START_MACHINE", "", "SP_NAME", "clearApply", "", "clearCommit", "get", ExifInterface.GPS_DIRECTION_TRUE, "key", "def", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "getSP", "Landroid/content/SharedPreferences;", "has", "", "put", "value", "remove", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SPUtils {
    public static final SPUtils INSTANCE = new SPUtils();
    public static final String KEY_IS_FIRST_START_MACHINE = "is_first_start_machine";
    private static final String SP_NAME = "rabbit-sp";

    private SPUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T get(String key, Object def) {
        Object obj;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(def, "def");
        try {
            if (def instanceof Integer) {
                obj = Integer.valueOf(getSP().getInt(key, ((Number) def).intValue()));
            } else if (def instanceof Boolean) {
                obj = Boolean.valueOf(getSP().getBoolean(key, ((Boolean) def).booleanValue()));
            } else if (def instanceof String) {
                Object string = getSP().getString(key, (String) def);
                obj = string;
                if (string == null) {
                    obj = (String) def;
                }
            } else if (def instanceof Float) {
                obj = Float.valueOf(getSP().getFloat(key, ((Number) def).floatValue()));
            } else {
                if (!(def instanceof Long)) {
                    return def;
                }
                obj = Long.valueOf(getSP().getLong(key, ((Number) def).longValue()));
            }
            return obj;
        } catch (Exception e) {
            e.printStackTrace();
            return def;
        }
    }

    public final void put(String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            SharedPreferences.Editor edit = getSP().edit();
            if (value instanceof Integer) {
                edit.putInt(key, ((Number) value).intValue());
            } else if (value instanceof Boolean) {
                edit.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof String) {
                edit.putString(key, (String) value);
            } else if (value instanceof Float) {
                edit.putFloat(key, ((Number) value).floatValue());
            } else if (value instanceof Long) {
                edit.putLong(key, ((Number) value).longValue());
            }
            edit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final boolean has(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSP().contains(key);
    }

    public final void remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            SharedPreferences.Editor edit = getSP().edit();
            edit.remove(key);
            edit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private final SharedPreferences getSP() {
        SharedPreferences sharedPreferences = RabbitCommon.INSTANCE.getSContext().getSharedPreferences(SP_NAME, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    public final void clearApply() {
        SharedPreferences.Editor edit = getSP().edit();
        try {
            edit.clear();
            edit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void clearCommit() {
        SharedPreferences.Editor edit = getSP().edit();
        try {
            edit.clear();
            edit.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
