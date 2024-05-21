package androidx.compose.ui;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Modifier.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004J\u001c\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\t0\u000bH\u0016J\u001c\u0010\r\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\t0\u000bH\u0016J\u0013\u0010\u000e\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J5\u0010\u0011\u001a\u0002H\u0012\"\u0004\b\u0000\u0010\u00122\u0006\u0010\u0013\u001a\u0002H\u00122\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016¢\u0006\u0002\u0010\u0016J5\u0010\u0017\u001a\u0002H\u0012\"\u0004\b\u0000\u0010\u00122\u0006\u0010\u0013\u001a\u0002H\u00122\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016¢\u0006\u0002\u0010\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0006¨\u0006\u001c"}, d2 = {"Landroidx/compose/ui/CombinedModifier;", "Landroidx/compose/ui/Modifier;", "outer", "inner", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)V", "getInner$ui_release", "()Landroidx/compose/ui/Modifier;", "getOuter$ui_release", "all", "", "predicate", "Lkotlin/Function1;", "Landroidx/compose/ui/Modifier$Element;", "any", "equals", "other", "", "foldIn", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "foldOut", "hashCode", "", "toString", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CombinedModifier implements Modifier {
    public static final int $stable = 0;
    private final Modifier inner;
    private final Modifier outer;

    /* renamed from: getInner$ui_release, reason: from getter */
    public final Modifier getInner() {
        return this.inner;
    }

    /* renamed from: getOuter$ui_release, reason: from getter */
    public final Modifier getOuter() {
        return this.outer;
    }

    public CombinedModifier(Modifier outer, Modifier inner) {
        Intrinsics.checkNotNullParameter(outer, "outer");
        Intrinsics.checkNotNullParameter(inner, "inner");
        this.outer = outer;
        this.inner = inner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.Modifier
    public <R> R foldIn(R initial, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        return (R) this.inner.foldIn(this.outer.foldIn(initial, operation), operation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.Modifier
    public <R> R foldOut(R initial, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        return (R) this.outer.foldOut(this.inner.foldOut(initial, operation), operation);
    }

    @Override // androidx.compose.ui.Modifier
    public boolean any(Function1<? super Modifier.Element, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return this.outer.any(predicate) || this.inner.any(predicate);
    }

    @Override // androidx.compose.ui.Modifier
    public boolean all(Function1<? super Modifier.Element, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return this.outer.all(predicate) && this.inner.all(predicate);
    }

    public boolean equals(Object other) {
        if (other instanceof CombinedModifier) {
            CombinedModifier combinedModifier = (CombinedModifier) other;
            if (Intrinsics.areEqual(this.outer, combinedModifier.outer) && Intrinsics.areEqual(this.inner, combinedModifier.inner)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.outer.hashCode() + (this.inner.hashCode() * 31);
    }

    public String toString() {
        return "[" + ((String) foldIn("", new Function2<String, Modifier.Element, String>() { // from class: androidx.compose.ui.CombinedModifier$toString$1
            @Override // kotlin.jvm.functions.Function2
            public final String invoke(String acc, Modifier.Element element) {
                Intrinsics.checkNotNullParameter(acc, "acc");
                Intrinsics.checkNotNullParameter(element, "element");
                return acc.length() == 0 ? element.toString() : acc + ", " + element;
            }
        })) + ']';
    }
}
