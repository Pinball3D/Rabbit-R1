package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.bluetooth.BluetoothDevice;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager;

/* compiled from: BluetoothAdvanceFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$onRemoveDevice$1", f = "BluetoothAdvanceFragment.kt", i = {}, l = {216, 217}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class BluetoothAdvanceFragment$onRemoveDevice$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BluetoothDevice $device;
    int label;
    final /* synthetic */ BluetoothAdvanceFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothAdvanceFragment$onRemoveDevice$1(BluetoothDevice bluetoothDevice, BluetoothAdvanceFragment bluetoothAdvanceFragment, Continuation<? super BluetoothAdvanceFragment$onRemoveDevice$1> continuation) {
        super(2, continuation);
        this.$device = bluetoothDevice;
        this.this$0 = bluetoothAdvanceFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothAdvanceFragment$onRemoveDevice$1(this.$device, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothAdvanceFragment$onRemoveDevice$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (BluetoothManager.INSTANCE.disconnectAndRemoveDevice(this.$device, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        this.label = 2;
        if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass1(this.this$0, null), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BluetoothAdvanceFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$onRemoveDevice$1$1", f = "BluetoothAdvanceFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$onRemoveDevice$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ BluetoothAdvanceFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BluetoothAdvanceFragment bluetoothAdvanceFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = bluetoothAdvanceFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                FragmentActivity activity = this.this$0.getActivity();
                if (activity != null) {
                    activity.finish();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
