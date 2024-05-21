package tech.rabbit.r1launcher.settings.disclaimer;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: DisclaimerFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.disclaimer.DisclaimerFragment$getDownloadDisclaimerPictureUrl$2", f = "DisclaimerFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class DisclaimerFragment$getDownloadDisclaimerPictureUrl$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DisclaimerFragment$getDownloadDisclaimerPictureUrl$2(Continuation<? super DisclaimerFragment$getDownloadDisclaimerPictureUrl$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DisclaimerFragment$getDownloadDisclaimerPictureUrl$2 disclaimerFragment$getDownloadDisclaimerPictureUrl$2 = new DisclaimerFragment$getDownloadDisclaimerPictureUrl$2(continuation);
        disclaimerFragment$getDownloadDisclaimerPictureUrl$2.L$0 = obj;
        return disclaimerFragment$getDownloadDisclaimerPictureUrl$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((DisclaimerFragment$getDownloadDisclaimerPictureUrl$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r3) {
        /*
            r2 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r2.label
            if (r0 != 0) goto L66
            kotlin.ResultKt.throwOnFailure(r3)
            java.lang.Object r2 = r2.L$0
            kotlinx.coroutines.CoroutineScope r2 = (kotlinx.coroutines.CoroutineScope) r2
            r2 = 0
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L52
            okhttp3.OkHttpClient r3 = tech.rabbit.r1launcher.utils.OkHttpUtil.client()     // Catch: java.lang.Throwable -> L52
            okhttp3.Request$Builder r0 = new okhttp3.Request$Builder     // Catch: java.lang.Throwable -> L52
            r0.<init>()     // Catch: java.lang.Throwable -> L52
            java.lang.String r1 = "https://r1-assets.transactional.pub/disclaimer.json"
            okhttp3.Request$Builder r0 = r0.url(r1)     // Catch: java.lang.Throwable -> L52
            okhttp3.Request r0 = r0.build()     // Catch: java.lang.Throwable -> L52
            okhttp3.Call r3 = r3.newCall(r0)     // Catch: java.lang.Throwable -> L52
            okhttp3.Response r3 = r3.execute()     // Catch: java.lang.Throwable -> L52
            boolean r0 = r3.isSuccessful()     // Catch: java.lang.Throwable -> L52
            if (r0 != 0) goto L34
        L32:
            r3 = r2
            goto L4d
        L34:
            okhttp3.ResponseBody r3 = r3.body()     // Catch: java.lang.Throwable -> L52
            if (r3 == 0) goto L3f
            java.lang.String r3 = r3.string()     // Catch: java.lang.Throwable -> L52
            goto L40
        L3f:
            r3 = r2
        L40:
            com.alibaba.fastjson.JSONObject r3 = com.alibaba.fastjson.JSON.parseObject(r3)     // Catch: java.lang.Throwable -> L52
            if (r3 != 0) goto L47
            goto L32
        L47:
            java.lang.String r0 = "disclaimer_img"
            java.lang.String r3 = r3.getString(r0)     // Catch: java.lang.Throwable -> L52
        L4d:
            java.lang.Object r3 = kotlin.Result.m5698constructorimpl(r3)     // Catch: java.lang.Throwable -> L52
            goto L5d
        L52:
            r3 = move-exception
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            java.lang.Object r3 = kotlin.ResultKt.createFailure(r3)
            java.lang.Object r3 = kotlin.Result.m5698constructorimpl(r3)
        L5d:
            boolean r0 = kotlin.Result.m5704isFailureimpl(r3)
            if (r0 == 0) goto L64
            goto L65
        L64:
            r2 = r3
        L65:
            return r2
        L66:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.disclaimer.DisclaimerFragment$getDownloadDisclaimerPictureUrl$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
