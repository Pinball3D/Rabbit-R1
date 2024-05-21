package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModalBottomSheet.android.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public /* synthetic */ class ModalBottomSheet_androidKt$modalBottomSheetSwipeable$1 extends FunctionReferenceImpl implements Function3<CoroutineScope, Float, Continuation<? super Unit>, Object>, SuspendFunction {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ModalBottomSheet_androidKt$modalBottomSheetSwipeable$1(Object obj) {
        super(3, obj, Intrinsics.Kotlin.class, "suspendConversion0", "modalBottomSheetSwipeable$suspendConversion0(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Float f, Continuation<? super Unit> continuation) {
        return invoke(coroutineScope, f.floatValue(), continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, float f, Continuation<? super Unit> continuation) {
        Object modalBottomSheetSwipeable$suspendConversion0;
        modalBottomSheetSwipeable$suspendConversion0 = ModalBottomSheet_androidKt.modalBottomSheetSwipeable$suspendConversion0((Function2) this.receiver, coroutineScope, f, continuation);
        return modalBottomSheetSwipeable$suspendConversion0;
    }
}
