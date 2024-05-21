package androidx.compose.ui.modifier;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModifierLocalModifierNode.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u001a\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a'\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0005\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040\u0006\"\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0007\u001a?\u0010\u0000\u001a\u00020\u000122\u0010\b\u001a\u001a\u0012\u0016\b\u0001\u0012\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0004\u0012\u00020\n0\t0\u0006\"\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000b\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0004\u0012\u0002H\u00020\t¨\u0006\r"}, d2 = {"modifierLocalMapOf", "Landroidx/compose/ui/modifier/ModifierLocalMap;", ExifInterface.GPS_DIRECTION_TRUE, "key", "Landroidx/compose/ui/modifier/ModifierLocal;", "keys", "", "([Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalMap;", "entries", "Lkotlin/Pair;", "", "([Lkotlin/Pair;)Landroidx/compose/ui/modifier/ModifierLocalMap;", "entry", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ModifierLocalModifierNodeKt {
    public static final ModifierLocalMap modifierLocalMapOf() {
        return EmptyMap.INSTANCE;
    }

    public static final <T> ModifierLocalMap modifierLocalMapOf(ModifierLocal<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new SingleLocalMap(key);
    }

    public static final <T> ModifierLocalMap modifierLocalMapOf(Pair<? extends ModifierLocal<T>, ? extends T> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        SingleLocalMap singleLocalMap = new SingleLocalMap(entry.getFirst());
        singleLocalMap.mo3972set$ui_release(entry.getFirst(), entry.getSecond());
        return singleLocalMap;
    }

    public static final ModifierLocalMap modifierLocalMapOf(Pair<? extends ModifierLocal<?>, ? extends Object>... entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        return new MultiLocalMap((Pair[]) Arrays.copyOf(entries, entries.length));
    }

    public static final ModifierLocalMap modifierLocalMapOf(ModifierLocal<?>... keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        ArrayList arrayList = new ArrayList(keys.length);
        for (ModifierLocal<?> modifierLocal : keys) {
            arrayList.add(TuplesKt.to(modifierLocal, null));
        }
        Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        return new MultiLocalMap((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
    }
}
