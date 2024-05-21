package androidx.compose.ui.modifier;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModifierLocalModifierNode.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u000e\u001a\u00020\u000f2\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0090\u0002¢\u0006\u0002\b\u0010J\u0017\u0010\u0011\u001a\u00020\u00122\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\b\u0013J&\u0010\u0014\u001a\u0004\u0018\u0001H\u0015\"\u0004\b\u0000\u0010\u00152\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00150\u0003H\u0090\u0002¢\u0006\u0004\b\u0016\u0010\u0017J,\u0010\u0018\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u00152\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00150\u00032\u0006\u0010\u0007\u001a\u0002H\u0015H\u0090\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00068B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u001b"}, d2 = {"Landroidx/compose/ui/modifier/SingleLocalMap;", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "key", "Landroidx/compose/ui/modifier/ModifierLocal;", "(Landroidx/compose/ui/modifier/ModifierLocal;)V", "<set-?>", "", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "value$delegate", "Landroidx/compose/runtime/MutableState;", "contains", "", "contains$ui_release", "forceValue", "", "forceValue$ui_release", "get", ExifInterface.GPS_DIRECTION_TRUE, "get$ui_release", "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;", "set", "set$ui_release", "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SingleLocalMap extends ModifierLocalMap {
    private final ModifierLocal<?> key;

    /* renamed from: value$delegate, reason: from kotlin metadata */
    private final MutableState value;

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public boolean contains$ui_release(ModifierLocal<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return key == this.key;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleLocalMap(ModifierLocal<?> key) {
        super(null);
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.value = mutableStateOf$default;
    }

    private final Object getValue() {
        return this.value.getValue();
    }

    public final void forceValue$ui_release(Object value) {
        setValue(value);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    /* renamed from: set$ui_release */
    public <T> void mo3972set$ui_release(ModifierLocal<T> key, T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (key != this.key) {
            throw new IllegalStateException("Check failed.".toString());
        }
        setValue(value);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public <T> T get$ui_release(ModifierLocal<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (key != this.key) {
            throw new IllegalStateException("Check failed.".toString());
        }
        T t = (T) getValue();
        if (t == null) {
            return null;
        }
        return t;
    }

    private final void setValue(Object obj) {
        this.value.setValue(obj);
    }
}
