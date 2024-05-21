package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusOrderModifier.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0007\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH\u0007\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0007¨\u0006\t"}, d2 = {"focusOrder", "Landroidx/compose/ui/Modifier;", "focusOrderReceiver", "Lkotlin/Function1;", "Landroidx/compose/ui/focus/FocusOrder;", "", "Lkotlin/ExtensionFunctionType;", "focusRequester", "Landroidx/compose/ui/focus/FocusRequester;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusOrderModifierKt {
    @Deprecated(message = "Use focusProperties() instead", replaceWith = @ReplaceWith(expression = "this.focusProperties(focusOrderReceiver)", imports = {"androidx.compose.ui.focus.focusProperties"}))
    public static final Modifier focusOrder(Modifier modifier, Function1<? super FocusOrder, Unit> focusOrderReceiver) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusOrderReceiver, "focusOrderReceiver");
        return FocusPropertiesKt.focusProperties(modifier, new FocusOrderToProperties(focusOrderReceiver));
    }

    @Deprecated(message = "Use focusRequester() instead", replaceWith = @ReplaceWith(expression = "this.focusRequester(focusRequester)", imports = {"androidx.compose.ui.focus.focusRequester"}))
    public static final Modifier focusOrder(Modifier modifier, FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusRequester, "focusRequester");
        return FocusRequesterModifierKt.focusRequester(modifier, focusRequester);
    }

    @Deprecated(message = "Use focusProperties() and focusRequester() instead", replaceWith = @ReplaceWith(expression = "this.focusRequester(focusRequester).focusProperties(focusOrderReceiver)", imports = {"androidx.compose.ui.focus.focusProperties, androidx.compose.ui.focus.focusRequester"}))
    public static final Modifier focusOrder(Modifier modifier, FocusRequester focusRequester, Function1<? super FocusOrder, Unit> focusOrderReceiver) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusRequester, "focusRequester");
        Intrinsics.checkNotNullParameter(focusOrderReceiver, "focusOrderReceiver");
        return FocusPropertiesKt.focusProperties(FocusRequesterModifierKt.focusRequester(modifier, focusRequester), new FocusOrderToProperties(focusOrderReceiver));
    }
}
