package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusRequesterModifier.kt */
@Deprecated(message = "Use FocusRequesterModifierNode instead")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/focus/FocusRequesterModifier;", "Landroidx/compose/ui/Modifier$Element;", "focusRequester", "Landroidx/compose/ui/focus/FocusRequester;", "getFocusRequester", "()Landroidx/compose/ui/focus/FocusRequester;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface FocusRequesterModifier extends Modifier.Element {
    FocusRequester getFocusRequester();

    /* compiled from: FocusRequesterModifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(FocusRequesterModifier focusRequesterModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return FocusRequesterModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(FocusRequesterModifier focusRequesterModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return FocusRequesterModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(FocusRequesterModifier focusRequesterModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) FocusRequesterModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(FocusRequesterModifier focusRequesterModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) FocusRequesterModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(FocusRequesterModifier focusRequesterModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return FocusRequesterModifier.super.then(other);
        }
    }
}
