package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OnRemeasuredModifier.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/OnRemeasuredModifier;", "Landroidx/compose/ui/Modifier$Element;", "onRemeasured", "", "size", "Landroidx/compose/ui/unit/IntSize;", "onRemeasured-ozmzZPI", "(J)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface OnRemeasuredModifier extends Modifier.Element {
    /* renamed from: onRemeasured-ozmzZPI */
    void mo260onRemeasuredozmzZPI(long size);

    /* compiled from: OnRemeasuredModifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(OnRemeasuredModifier onRemeasuredModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return OnRemeasuredModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(OnRemeasuredModifier onRemeasuredModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return OnRemeasuredModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(OnRemeasuredModifier onRemeasuredModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) OnRemeasuredModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(OnRemeasuredModifier onRemeasuredModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) OnRemeasuredModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(OnRemeasuredModifier onRemeasuredModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return OnRemeasuredModifier.super.then(other);
        }
    }
}
