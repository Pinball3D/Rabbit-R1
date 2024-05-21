package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import io.sentry.protocol.TransactionInfo;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RelocationModifier.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "Please use BringIntoViewResponder instead.")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J!\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H¦@ø\u0001\u0000¢\u0006\u0002\u0010\nø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/RelocationModifier;", "Landroidx/compose/ui/Modifier$Element;", "computeDestination", "Landroidx/compose/ui/geometry/Rect;", TransactionInfo.JsonKeys.SOURCE, "layoutCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "performRelocation", "", "destination", "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface RelocationModifier extends Modifier.Element {
    Rect computeDestination(Rect source, LayoutCoordinates layoutCoordinates);

    Object performRelocation(Rect rect, Rect rect2, Continuation<? super Unit> continuation);

    /* compiled from: RelocationModifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(RelocationModifier relocationModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return RelocationModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(RelocationModifier relocationModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return RelocationModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(RelocationModifier relocationModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) RelocationModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(RelocationModifier relocationModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) RelocationModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(RelocationModifier relocationModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return RelocationModifier.super.then(other);
        }
    }
}
