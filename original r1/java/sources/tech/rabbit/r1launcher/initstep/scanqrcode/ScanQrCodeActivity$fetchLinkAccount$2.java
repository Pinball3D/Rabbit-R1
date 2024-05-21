package tech.rabbit.r1launcher.initstep.scanqrcode;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.r1launcher.initstep.model.ScanQrCodeResult;
import tech.rabbit.r1launcher.utils.OkHttpUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ScanQrCodeActivity.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.initstep.scanqrcode.ScanQrCodeActivity$fetchLinkAccount$2", f = "ScanQrCodeActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ScanQrCodeActivity$fetchLinkAccount$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ScanQrCodeResult>, Object> {
    final /* synthetic */ HttpUrl $url;
    int label;
    final /* synthetic */ ScanQrCodeActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScanQrCodeActivity$fetchLinkAccount$2(HttpUrl httpUrl, ScanQrCodeActivity scanQrCodeActivity, Continuation<? super ScanQrCodeActivity$fetchLinkAccount$2> continuation) {
        super(2, continuation);
        this.$url = httpUrl;
        this.this$0 = scanQrCodeActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ScanQrCodeActivity$fetchLinkAccount$2(this.$url, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ScanQrCodeResult> continuation) {
        return ((ScanQrCodeActivity$fetchLinkAccount$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean isTimeoutException;
        boolean isNoNetworkException;
        String str;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                Response execute = OkHttpUtil.client().newCall(new Request.Builder().url(this.$url).build()).execute();
                if (!execute.isSuccessful()) {
                    return new ScanQrCodeResult(null, null, null, ScanQrCodeResult.ErrorType.RequestError, 7, null);
                }
                ResponseBody body = execute.body();
                JSONObject parseObject = JSON.parseObject(body != null ? body.string() : null);
                Integer num = parseObject != null ? KotlinUtilKt.getInt(parseObject, "statusCode") : null;
                if (num != null && num.intValue() != 200) {
                    return new ScanQrCodeResult(null, null, null, ScanQrCodeResult.ErrorType.ServerError, 7, null);
                }
                String string = parseObject != null ? parseObject.getString("actualUserId") : null;
                String string2 = parseObject != null ? parseObject.getString("accountKey") : null;
                String string3 = parseObject != null ? parseObject.getString("userName") : null;
                String str2 = string2;
                if (str2 != null && str2.length() != 0 && (str = string3) != null && str.length() != 0) {
                    return new ScanQrCodeResult(string3, string2, string, null, 8, null);
                }
                return new ScanQrCodeResult(null, null, null, ScanQrCodeResult.ErrorType.ResponseError, 7, null);
            } catch (Exception e) {
                Exception exc = e;
                isTimeoutException = this.this$0.isTimeoutException(exc);
                if (!isTimeoutException) {
                    isNoNetworkException = this.this$0.isNoNetworkException(exc);
                    if (!isNoNetworkException) {
                        return new ScanQrCodeResult(null, null, null, ScanQrCodeResult.ErrorType.ResultError, 7, null);
                    }
                }
                return new ScanQrCodeResult(null, null, null, ScanQrCodeResult.ErrorType.NetworkError, 7, null);
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
