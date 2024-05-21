package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerEvent.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputModifier;", "Landroidx/compose/ui/Modifier$Element;", "pointerInputFilter", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "getPointerInputFilter", "()Landroidx/compose/ui/input/pointer/PointerInputFilter;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface PointerInputModifier extends Modifier.Element {
    PointerInputFilter getPointerInputFilter();

    /* compiled from: PointerEvent.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(PointerInputModifier pointerInputModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return PointerInputModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(PointerInputModifier pointerInputModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return PointerInputModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(PointerInputModifier pointerInputModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) PointerInputModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(PointerInputModifier pointerInputModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) PointerInputModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(PointerInputModifier pointerInputModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return PointerInputModifier.super.then(other);
        }
    }
}
