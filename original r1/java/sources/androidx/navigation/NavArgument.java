package androidx.navigation;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.OperatingSystem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavArgument.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u001bB1\b\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\b\u0010\u0019\u001a\u00020\u0016H\u0016J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\fR\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001c"}, d2 = {"Landroidx/navigation/NavArgument;", "", "type", "Landroidx/navigation/NavType;", "isNullable", "", "defaultValue", "defaultValuePresent", "(Landroidx/navigation/NavType;ZLjava/lang/Object;Z)V", "getDefaultValue", "()Ljava/lang/Object;", "isDefaultValuePresent", "()Z", "getType", "()Landroidx/navigation/NavType;", "equals", "other", "hashCode", "", "putDefaultValue", "", "name", "", "bundle", "Landroid/os/Bundle;", "toString", "verify", "Builder", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavArgument {
    private final Object defaultValue;
    private final boolean isDefaultValuePresent;
    private final boolean isNullable;
    private final NavType<Object> type;

    public final Object getDefaultValue() {
        return this.defaultValue;
    }

    public final NavType<Object> getType() {
        return this.type;
    }

    /* renamed from: isDefaultValuePresent, reason: from getter */
    public final boolean getIsDefaultValuePresent() {
        return this.isDefaultValuePresent;
    }

    /* renamed from: isNullable, reason: from getter */
    public final boolean getIsNullable() {
        return this.isNullable;
    }

    public NavArgument(NavType<Object> type, boolean z, Object obj, boolean z2) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (!type.getIsNullableAllowed() && z) {
            throw new IllegalArgumentException((type.getName() + " does not allow nullable values").toString());
        }
        if (!z && z2 && obj == null) {
            throw new IllegalArgumentException(("Argument with type " + type.getName() + " has null value but is not nullable.").toString());
        }
        this.type = type;
        this.isNullable = z;
        this.defaultValue = obj;
        this.isDefaultValuePresent = z2;
    }

    public final void putDefaultValue(String name, Bundle bundle) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        if (this.isDefaultValuePresent) {
            this.type.put(bundle, name, this.defaultValue);
        }
    }

    public final boolean verify(String name, Bundle bundle) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        if (!this.isNullable && bundle.containsKey(name) && bundle.get(name) == null) {
            return false;
        }
        try {
            this.type.get(bundle, name);
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" Type: " + this.type);
        sb.append(" Nullable: " + this.isNullable);
        if (this.isDefaultValuePresent) {
            sb.append(" DefaultValue: " + this.defaultValue);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        NavArgument navArgument = (NavArgument) other;
        if (this.isNullable != navArgument.isNullable || this.isDefaultValuePresent != navArgument.isDefaultValuePresent || !Intrinsics.areEqual(this.type, navArgument.type)) {
            return false;
        }
        Object obj = this.defaultValue;
        if (obj != null) {
            return Intrinsics.areEqual(obj, navArgument.defaultValue);
        }
        return navArgument.defaultValue == null;
    }

    public int hashCode() {
        int hashCode = ((((this.type.hashCode() * 31) + (this.isNullable ? 1 : 0)) * 31) + (this.isDefaultValuePresent ? 1 : 0)) * 31;
        Object obj = this.defaultValue;
        return hashCode + (obj != null ? obj.hashCode() : 0);
    }

    /* compiled from: NavArgument.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u001a\u0010\r\u001a\u00020\u0000\"\u0004\b\u0000\u0010\u000e2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u000e0\bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/navigation/NavArgument$Builder;", "", "()V", "defaultValue", "defaultValuePresent", "", "isNullable", "type", "Landroidx/navigation/NavType;", OperatingSystem.JsonKeys.BUILD, "Landroidx/navigation/NavArgument;", "setDefaultValue", "setIsNullable", "setType", ExifInterface.GPS_DIRECTION_TRUE, "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Builder {
        private Object defaultValue;
        private boolean defaultValuePresent;
        private boolean isNullable;
        private NavType<Object> type;

        public final Builder setDefaultValue(Object defaultValue) {
            this.defaultValue = defaultValue;
            this.defaultValuePresent = true;
            return this;
        }

        public final Builder setIsNullable(boolean isNullable) {
            this.isNullable = isNullable;
            return this;
        }

        public final <T> Builder setType(NavType<T> type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final NavArgument build() {
            NavType<Object> navType = this.type;
            if (navType == null) {
                navType = NavType.INSTANCE.inferFromValueType(this.defaultValue);
                Intrinsics.checkNotNull(navType, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any?>");
            }
            return new NavArgument(navType, this.isNullable, this.defaultValue, this.defaultValuePresent);
        }
    }
}
