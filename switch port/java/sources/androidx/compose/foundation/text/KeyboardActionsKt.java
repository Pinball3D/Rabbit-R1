package androidx.compose.foundation.text;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KeyboardActions.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"KeyboardActions", "Landroidx/compose/foundation/text/KeyboardActions;", "onAny", "Lkotlin/Function1;", "Landroidx/compose/foundation/text/KeyboardActionScope;", "", "Lkotlin/ExtensionFunctionType;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class KeyboardActionsKt {
    public static final KeyboardActions KeyboardActions(Function1<? super KeyboardActionScope, Unit> onAny) {
        Intrinsics.checkNotNullParameter(onAny, "onAny");
        return new KeyboardActions(onAny, onAny, onAny, onAny, onAny, onAny);
    }
}
