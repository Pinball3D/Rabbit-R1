package androidx.work.impl.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Preference.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\fJ$\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Landroidx/work/impl/model/Preference;", "", "key", "", "value", "", "(Ljava/lang/String;Z)V", "", "(Ljava/lang/String;Ljava/lang/Long;)V", "getKey", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Long;)Landroidx/work/impl/model/Preference;", "equals", "other", "hashCode", "", "toString", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final /* data */ class Preference {
    private final String key;
    private final Long value;

    public static /* synthetic */ Preference copy$default(Preference preference, String str, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = preference.key;
        }
        if ((i & 2) != 0) {
            l = preference.value;
        }
        return preference.copy(str, l);
    }

    /* renamed from: component1, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* renamed from: component2, reason: from getter */
    public final Long getValue() {
        return this.value;
    }

    public final Preference copy(String key, Long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new Preference(key, value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) other;
        return Intrinsics.areEqual(this.key, preference.key) && Intrinsics.areEqual(this.value, preference.value);
    }

    public final String getKey() {
        return this.key;
    }

    public final Long getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = this.key.hashCode() * 31;
        Long l = this.value;
        return hashCode + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "Preference(key=" + this.key + ", value=" + this.value + ')';
    }

    public Preference(String key, Long l) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.value = l;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Preference(String key, boolean z) {
        this(key, Long.valueOf(z ? 1L : 0L));
        Intrinsics.checkNotNullParameter(key, "key");
    }
}
