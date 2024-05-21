package androidx.compose.ui.modifier;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModifierLocalModifierNode.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0001\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0090\u0002¢\u0006\u0002\b\u0007J&\u0010\b\u001a\u0004\u0018\u0001H\t\"\u0004\b\u0000\u0010\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006H\u0090\u0002¢\u0006\u0004\b\n\u0010\u000bJ,\u0010\f\u001a\u00020\r\"\u0004\b\u0000\u0010\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\t0\u00062\u0006\u0010\u000e\u001a\u0002H\tH\u0090\u0002¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/modifier/EmptyMap;", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "()V", "contains", "", "key", "Landroidx/compose/ui/modifier/ModifierLocal;", "contains$ui_release", "get", ExifInterface.GPS_DIRECTION_TRUE, "get$ui_release", "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;", "set", "", "value", "set$ui_release", "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)Ljava/lang/Void;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmptyMap extends ModifierLocalMap {
    public static final EmptyMap INSTANCE = new EmptyMap();

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public boolean contains$ui_release(ModifierLocal<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return false;
    }

    private EmptyMap() {
        super(null);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    /* renamed from: set$ui_release, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ void mo3972set$ui_release(ModifierLocal modifierLocal, Object obj) {
        set$ui_release((ModifierLocal<ModifierLocal>) modifierLocal, (ModifierLocal) obj);
    }

    public <T> Void set$ui_release(ModifierLocal<T> key, T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        throw new IllegalStateException("".toString());
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public <T> T get$ui_release(ModifierLocal<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        throw new IllegalStateException("".toString());
    }
}
