package androidx.compose.ui.focus;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusOrderModifier.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001e\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0002\b\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002R\"\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0002\b\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Landroidx/compose/ui/focus/FocusOrderToProperties;", "Lkotlin/Function1;", "Landroidx/compose/ui/focus/FocusProperties;", "", "focusOrderReceiver", "Landroidx/compose/ui/focus/FocusOrder;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "getFocusOrderReceiver", "()Lkotlin/jvm/functions/Function1;", "invoke", "focusProperties", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusOrderToProperties implements Function1<FocusProperties, Unit> {
    private final Function1<FocusOrder, Unit> focusOrderReceiver;

    public final Function1<FocusOrder, Unit> getFocusOrderReceiver() {
        return this.focusOrderReceiver;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FocusOrderToProperties(Function1<? super FocusOrder, Unit> focusOrderReceiver) {
        Intrinsics.checkNotNullParameter(focusOrderReceiver, "focusOrderReceiver");
        this.focusOrderReceiver = focusOrderReceiver;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(FocusProperties focusProperties) {
        invoke2(focusProperties);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(FocusProperties focusProperties) {
        Intrinsics.checkNotNullParameter(focusProperties, "focusProperties");
        this.focusOrderReceiver.invoke(new FocusOrder(focusProperties));
    }
}
