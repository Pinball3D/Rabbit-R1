package tech.rabbit.r1launcher.initstep.scanqrcode;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.HttpUrl;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.initstep.model.ScanQrCodeResult;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;

/* compiled from: ScanQrCodeActivity.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.initstep.scanqrcode.ScanQrCodeActivity$onScanResult$1", f = "ScanQrCodeActivity.kt", i = {}, l = {139}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class ScanQrCodeActivity$onScanResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ HttpUrl $url;
    Object L$0;
    int label;
    final /* synthetic */ ScanQrCodeActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScanQrCodeActivity$onScanResult$1(ScanQrCodeActivity scanQrCodeActivity, HttpUrl httpUrl, Continuation<? super ScanQrCodeActivity$onScanResult$1> continuation) {
        super(2, continuation);
        this.this$0 = scanQrCodeActivity;
        this.$url = httpUrl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ScanQrCodeActivity$onScanResult$1(this.this$0, this.$url, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ScanQrCodeActivity$onScanResult$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        R1CaptureManager r1CaptureManager;
        R1CaptureManager r1CaptureManager2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HttpUrl build = this.$url.newBuilder().addQueryParameter("deviceId", SystemControllerUtil.INSTANCE.getImei(this.this$0)).build();
            r1CaptureManager = this.this$0.capture;
            if (r1CaptureManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("capture");
                r1CaptureManager = null;
            }
            this.L$0 = r1CaptureManager;
            this.label = 1;
            obj = this.this$0.fetchLinkAccount(build, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            r1CaptureManager2 = r1CaptureManager;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r1CaptureManager2 = (R1CaptureManager) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        ScanQrCodeResult scanQrCodeResult = (ScanQrCodeResult) obj;
        StringBuilder append = new StringBuilder("Scan QrCode Result: username = ").append(scanQrCodeResult.getUsername()).append(", error = ");
        ScanQrCodeResult.ErrorType errorType = scanQrCodeResult.getErrorType();
        StringBuilder append2 = append.append(errorType != null ? errorType.name() : null).append(", error order = #");
        ScanQrCodeResult.ErrorType errorType2 = scanQrCodeResult.getErrorType();
        RLog.i(append2.append(errorType2 != null ? Boxing.boxInt(errorType2.ordinal() + 1) : null).toString());
        r1CaptureManager2.finish(scanQrCodeResult);
        return Unit.INSTANCE;
    }
}
