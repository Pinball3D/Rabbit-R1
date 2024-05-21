package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusProperties.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001e\u0012\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0005H\u0016R+\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/focus/FocusPropertiesNode;", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "focusPropertiesScope", "Lkotlin/Function1;", "Landroidx/compose/ui/focus/FocusProperties;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "getFocusPropertiesScope", "()Lkotlin/jvm/functions/Function1;", "setFocusPropertiesScope", "applyFocusProperties", "focusProperties", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class FocusPropertiesNode extends Modifier.Node implements FocusPropertiesModifierNode {
    private Function1<? super FocusProperties, Unit> focusPropertiesScope;

    public final Function1<FocusProperties, Unit> getFocusPropertiesScope() {
        return this.focusPropertiesScope;
    }

    public final void setFocusPropertiesScope(Function1<? super FocusProperties, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.focusPropertiesScope = function1;
    }

    public FocusPropertiesNode(Function1<? super FocusProperties, Unit> focusPropertiesScope) {
        Intrinsics.checkNotNullParameter(focusPropertiesScope, "focusPropertiesScope");
        this.focusPropertiesScope = focusPropertiesScope;
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public void applyFocusProperties(FocusProperties focusProperties) {
        Intrinsics.checkNotNullParameter(focusProperties, "focusProperties");
        this.focusPropertiesScope.invoke(focusProperties);
    }
}
