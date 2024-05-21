package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParentDataModifier.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u0003*\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/ParentDataModifier;", "Landroidx/compose/ui/Modifier$Element;", "modifyParentData", "", "Landroidx/compose/ui/unit/Density;", "parentData", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ParentDataModifier extends Modifier.Element {
    Object modifyParentData(Density density, Object obj);

    /* compiled from: ParentDataModifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(ParentDataModifier parentDataModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return ParentDataModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(ParentDataModifier parentDataModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return ParentDataModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(ParentDataModifier parentDataModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) ParentDataModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(ParentDataModifier parentDataModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) ParentDataModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(ParentDataModifier parentDataModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return ParentDataModifier.super.then(other);
        }
    }
}
