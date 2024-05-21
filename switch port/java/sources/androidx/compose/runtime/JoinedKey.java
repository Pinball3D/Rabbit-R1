package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: JoinedKey.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0001HÆ\u0003J!\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0002J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0006¨\u0006\u0014"}, d2 = {"Landroidx/compose/runtime/JoinedKey;", "", "left", "right", "(Ljava/lang/Object;Ljava/lang/Object;)V", "getLeft", "()Ljava/lang/Object;", "getRight", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "hashCodeOf", "value", "toString", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class JoinedKey {
    private final Object left;
    private final Object right;

    public static /* synthetic */ JoinedKey copy$default(JoinedKey joinedKey, Object obj, Object obj2, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = joinedKey.left;
        }
        if ((i & 2) != 0) {
            obj2 = joinedKey.right;
        }
        return joinedKey.copy(obj, obj2);
    }

    /* renamed from: component1, reason: from getter */
    public final Object getLeft() {
        return this.left;
    }

    /* renamed from: component2, reason: from getter */
    public final Object getRight() {
        return this.right;
    }

    public final JoinedKey copy(Object left, Object right) {
        return new JoinedKey(left, right);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof JoinedKey)) {
            return false;
        }
        JoinedKey joinedKey = (JoinedKey) other;
        return Intrinsics.areEqual(this.left, joinedKey.left) && Intrinsics.areEqual(this.right, joinedKey.right);
    }

    public final Object getLeft() {
        return this.left;
    }

    public final Object getRight() {
        return this.right;
    }

    public String toString() {
        return "JoinedKey(left=" + this.left + ", right=" + this.right + ')';
    }

    public JoinedKey(Object obj, Object obj2) {
        this.left = obj;
        this.right = obj2;
    }

    public int hashCode() {
        return (hashCodeOf(this.left) * 31) + hashCodeOf(this.right);
    }

    private final int hashCodeOf(Object value) {
        if (value instanceof Enum) {
            return ((Enum) value).ordinal();
        }
        if (value != null) {
            return value.hashCode();
        }
        return 0;
    }
}
