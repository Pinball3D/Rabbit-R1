package androidx.compose.ui.modifier;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ModifierLocal.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0015\b\u0004\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0001\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/modifier/ModifierLocal;", ExifInterface.GPS_DIRECTION_TRUE, "", "defaultFactory", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "getDefaultFactory$ui_release", "()Lkotlin/jvm/functions/Function0;", "Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class ModifierLocal<T> {
    public static final int $stable = 0;
    private final Function0<T> defaultFactory;

    public /* synthetic */ ModifierLocal(Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0);
    }

    public final Function0<T> getDefaultFactory$ui_release() {
        return this.defaultFactory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ModifierLocal(Function0<? extends T> function0) {
        this.defaultFactory = function0;
    }
}
