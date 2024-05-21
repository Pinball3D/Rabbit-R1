package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import io.sentry.protocol.Message;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DrawModifier.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/draw/DrawCacheModifier;", "Landroidx/compose/ui/draw/DrawModifier;", "onBuildCache", "", Message.JsonKeys.PARAMS, "Landroidx/compose/ui/draw/BuildDrawCacheParams;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface DrawCacheModifier extends DrawModifier {
    void onBuildCache(BuildDrawCacheParams params);

    /* compiled from: DrawModifier.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(DrawCacheModifier drawCacheModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return DrawCacheModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(DrawCacheModifier drawCacheModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return DrawCacheModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(DrawCacheModifier drawCacheModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) DrawCacheModifier.super.foldIn(r, operation);
        }

        @Deprecated
        public static <R> R foldOut(DrawCacheModifier drawCacheModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) DrawCacheModifier.super.foldOut(r, operation);
        }

        @Deprecated
        public static Modifier then(DrawCacheModifier drawCacheModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return DrawCacheModifier.super.then(other);
        }
    }
}
