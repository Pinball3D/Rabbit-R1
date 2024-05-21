package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutModifier.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u001c\u0010\b\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0003H\u0016J)\u0010\n\u001a\u00020\u000b*\u00020\f2\u0006\u0010\u0005\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001c\u0010\u0012\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u001c\u0010\u0013\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0003H\u0016ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/LayoutModifier;", "Landroidx/compose/ui/Modifier$Element;", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LayoutModifier extends Modifier.Element {
    /* renamed from: measure-3p2s80s */
    MeasureResult mo47measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j);

    /* compiled from: LayoutModifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(LayoutModifier layoutModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return LayoutModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(LayoutModifier layoutModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return LayoutModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(LayoutModifier layoutModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) LayoutModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(LayoutModifier layoutModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) LayoutModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(LayoutModifier layoutModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return LayoutModifier.super.then(other);
        }

        @Deprecated
        public static int minIntrinsicWidth(LayoutModifier layoutModifier, IntrinsicMeasureScope receiver, IntrinsicMeasurable measurable, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurable, "measurable");
            return LayoutModifier.super.minIntrinsicWidth(receiver, measurable, i);
        }

        @Deprecated
        public static int minIntrinsicHeight(LayoutModifier layoutModifier, IntrinsicMeasureScope receiver, IntrinsicMeasurable measurable, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurable, "measurable");
            return LayoutModifier.super.minIntrinsicHeight(receiver, measurable, i);
        }

        @Deprecated
        public static int maxIntrinsicWidth(LayoutModifier layoutModifier, IntrinsicMeasureScope receiver, IntrinsicMeasurable measurable, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurable, "measurable");
            return LayoutModifier.super.maxIntrinsicWidth(receiver, measurable, i);
        }

        @Deprecated
        public static int maxIntrinsicHeight(LayoutModifier layoutModifier, IntrinsicMeasureScope receiver, IntrinsicMeasurable measurable, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurable, "measurable");
            return LayoutModifier.super.maxIntrinsicHeight(receiver, measurable, i);
        }
    }

    default int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return MeasuringIntrinsics.INSTANCE.minWidth(this, intrinsicMeasureScope, measurable, i);
    }

    default int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return MeasuringIntrinsics.INSTANCE.minHeight(this, intrinsicMeasureScope, measurable, i);
    }

    default int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return MeasuringIntrinsics.INSTANCE.maxWidth(this, intrinsicMeasureScope, measurable, i);
    }

    default int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return MeasuringIntrinsics.INSTANCE.maxHeight(this, intrinsicMeasureScope, measurable, i);
    }
}
