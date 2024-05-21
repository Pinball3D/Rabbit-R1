package androidx.compose.ui.input.rotary;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RotaryInputModifier.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u001a\u001e\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¨\u0006\u0006"}, d2 = {"onPreRotaryScrollEvent", "Landroidx/compose/ui/Modifier;", "Lkotlin/Function1;", "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;", "", "onRotaryScrollEvent", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RotaryInputModifierKt {
    public static final Modifier onRotaryScrollEvent(Modifier modifier, Function1<? super RotaryScrollEvent, Boolean> onRotaryScrollEvent) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onRotaryScrollEvent, "onRotaryScrollEvent");
        return modifier.then(new RotaryInputElement(onRotaryScrollEvent, null));
    }

    public static final Modifier onPreRotaryScrollEvent(Modifier modifier, Function1<? super RotaryScrollEvent, Boolean> onPreRotaryScrollEvent) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onPreRotaryScrollEvent, "onPreRotaryScrollEvent");
        return modifier.then(new RotaryInputElement(null, onPreRotaryScrollEvent));
    }
}
