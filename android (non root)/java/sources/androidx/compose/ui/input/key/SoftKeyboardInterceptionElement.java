package androidx.compose.ui.input.key;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SoftwareKeyboardInterceptionModifier.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B4\u0012\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001a\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004HÆ\u0003ø\u0001\u0000J\u001a\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004HÆ\u0003ø\u0001\u0000J<\u0010\u000e\u001a\u00020\u00002\u0016\b\u0002\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00042\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004HÆ\u0001ø\u0001\u0000J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0013\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0002H\u0016J\f\u0010\u001a\u001a\u00020\u0018*\u00020\u001bH\u0016R\"\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Landroidx/compose/ui/input/key/SoftKeyboardInterceptionElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/key/InterceptedKeyInputModifierNodeImpl;", "onKeyEvent", "Lkotlin/Function1;", "Landroidx/compose/ui/input/key/KeyEvent;", "", "onPreKeyEvent", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getOnKeyEvent", "()Lkotlin/jvm/functions/Function1;", "getOnPreKeyEvent", "component1", "component2", "copy", "create", "equals", "other", "", "hashCode", "", "toString", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final /* data */ class SoftKeyboardInterceptionElement extends ModifierNodeElement<InterceptedKeyInputModifierNodeImpl> {
    private final Function1<KeyEvent, Boolean> onKeyEvent;
    private final Function1<KeyEvent, Boolean> onPreKeyEvent;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SoftKeyboardInterceptionElement copy$default(SoftKeyboardInterceptionElement softKeyboardInterceptionElement, Function1 function1, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = softKeyboardInterceptionElement.onKeyEvent;
        }
        if ((i & 2) != 0) {
            function12 = softKeyboardInterceptionElement.onPreKeyEvent;
        }
        return softKeyboardInterceptionElement.copy(function1, function12);
    }

    public final Function1<KeyEvent, Boolean> component1() {
        return this.onKeyEvent;
    }

    public final Function1<KeyEvent, Boolean> component2() {
        return this.onPreKeyEvent;
    }

    public final SoftKeyboardInterceptionElement copy(Function1<? super KeyEvent, Boolean> onKeyEvent, Function1<? super KeyEvent, Boolean> onPreKeyEvent) {
        return new SoftKeyboardInterceptionElement(onKeyEvent, onPreKeyEvent);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SoftKeyboardInterceptionElement)) {
            return false;
        }
        SoftKeyboardInterceptionElement softKeyboardInterceptionElement = (SoftKeyboardInterceptionElement) other;
        return Intrinsics.areEqual(this.onKeyEvent, softKeyboardInterceptionElement.onKeyEvent) && Intrinsics.areEqual(this.onPreKeyEvent, softKeyboardInterceptionElement.onPreKeyEvent);
    }

    public final Function1<KeyEvent, Boolean> getOnKeyEvent() {
        return this.onKeyEvent;
    }

    public final Function1<KeyEvent, Boolean> getOnPreKeyEvent() {
        return this.onPreKeyEvent;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        Function1<KeyEvent, Boolean> function1 = this.onKeyEvent;
        int hashCode = (function1 == null ? 0 : function1.hashCode()) * 31;
        Function1<KeyEvent, Boolean> function12 = this.onPreKeyEvent;
        return hashCode + (function12 != null ? function12.hashCode() : 0);
    }

    public String toString() {
        return "SoftKeyboardInterceptionElement(onKeyEvent=" + this.onKeyEvent + ", onPreKeyEvent=" + this.onPreKeyEvent + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SoftKeyboardInterceptionElement(Function1<? super KeyEvent, Boolean> function1, Function1<? super KeyEvent, Boolean> function12) {
        this.onKeyEvent = function1;
        this.onPreKeyEvent = function12;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public InterceptedKeyInputModifierNodeImpl create() {
        return new InterceptedKeyInputModifierNodeImpl(this.onKeyEvent, this.onPreKeyEvent);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(InterceptedKeyInputModifierNodeImpl node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setOnEvent(this.onKeyEvent);
        node.setOnPreEvent(this.onPreKeyEvent);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        Function1<KeyEvent, Boolean> function1 = this.onKeyEvent;
        if (function1 != null) {
            inspectorInfo.setName("onKeyToSoftKeyboardInterceptedEvent");
            inspectorInfo.getProperties().set("onKeyToSoftKeyboardInterceptedEvent", function1);
        }
        Function1<KeyEvent, Boolean> function12 = this.onPreKeyEvent;
        if (function12 != null) {
            inspectorInfo.setName("onPreKeyToSoftKeyboardInterceptedEvent");
            inspectorInfo.getProperties().set("onPreKeyToSoftKeyboardInterceptedEvent", function12);
        }
    }
}
