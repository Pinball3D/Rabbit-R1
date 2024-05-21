package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Hoverable.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"hoverable", "Landroidx/compose/ui/Modifier;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "enabled", "", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HoverableKt {
    public static /* synthetic */ Modifier hoverable$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return hoverable(modifier, mutableInteractionSource, z);
    }

    public static final Modifier hoverable(Modifier modifier, MutableInteractionSource interactionSource, boolean z) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        return modifier.then(z ? new HoverableElement(interactionSource) : Modifier.INSTANCE);
    }
}
