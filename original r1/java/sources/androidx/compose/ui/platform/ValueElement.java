package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InspectableValue.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0005J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u001f\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/platform/ValueElement;", "", "name", "", "value", "(Ljava/lang/String;Ljava/lang/Object;)V", "getName", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Object;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class ValueElement {
    public static final int $stable = 8;
    private final String name;
    private final Object value;

    public static /* synthetic */ ValueElement copy$default(ValueElement valueElement, String str, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = valueElement.name;
        }
        if ((i & 2) != 0) {
            obj = valueElement.value;
        }
        return valueElement.copy(str, obj);
    }

    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component2, reason: from getter */
    public final Object getValue() {
        return this.value;
    }

    public final ValueElement copy(String name, Object value) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new ValueElement(name, value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ValueElement)) {
            return false;
        }
        ValueElement valueElement = (ValueElement) other;
        return Intrinsics.areEqual(this.name, valueElement.name) && Intrinsics.areEqual(this.value, valueElement.value);
    }

    public final String getName() {
        return this.name;
    }

    public final Object getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        Object obj = this.value;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "ValueElement(name=" + this.name + ", value=" + this.value + ')';
    }

    public ValueElement(String name, Object obj) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.value = obj;
    }
}
