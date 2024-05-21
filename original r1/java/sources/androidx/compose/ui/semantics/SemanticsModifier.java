package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsModifier.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u00020\u00038VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0003"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsModifier;", "Landroidx/compose/ui/Modifier$Element;", "id", "", "getId$annotations", "()V", "getId", "()I", "semanticsConfiguration", "Landroidx/compose/ui/semantics/SemanticsConfiguration;", "getSemanticsConfiguration", "()Landroidx/compose/ui/semantics/SemanticsConfiguration;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SemanticsModifier extends Modifier.Element {
    default int getId() {
        return -1;
    }

    SemanticsConfiguration getSemanticsConfiguration();

    /* compiled from: SemanticsModifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated(message = "SemanticsModifier.id is now unused and has been set to a fixed value. Retrieve the id from LayoutInfo instead.", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public static /* synthetic */ void getId$annotations() {
        }

        @Deprecated
        public static boolean all(SemanticsModifier semanticsModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return SemanticsModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(SemanticsModifier semanticsModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return SemanticsModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(SemanticsModifier semanticsModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) SemanticsModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(SemanticsModifier semanticsModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) SemanticsModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(SemanticsModifier semanticsModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return SemanticsModifier.super.then(other);
        }

        @Deprecated
        public static int getId(SemanticsModifier semanticsModifier) {
            return SemanticsModifier.super.getId();
        }
    }
}
