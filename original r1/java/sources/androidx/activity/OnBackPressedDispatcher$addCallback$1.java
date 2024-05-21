package androidx.activity;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OnBackPressedDispatcher.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public /* synthetic */ class OnBackPressedDispatcher$addCallback$1 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public OnBackPressedDispatcher$addCallback$1(Object obj) {
        super(0, obj, OnBackPressedDispatcher.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((OnBackPressedDispatcher) this.receiver).updateEnabledCallbacks();
    }
}
