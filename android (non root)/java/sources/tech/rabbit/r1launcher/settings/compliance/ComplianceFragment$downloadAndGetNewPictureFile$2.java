package tech.rabbit.r1launcher.settings.compliance;

import android.webkit.URLUtil;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.r1launcher.utils.OkHttpUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComplianceFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.compliance.ComplianceFragment$downloadAndGetNewPictureFile$2", f = "ComplianceFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ComplianceFragment$downloadAndGetNewPictureFile$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super File>, Object> {
    final /* synthetic */ String $compliancePictureUrl;
    int label;
    final /* synthetic */ ComplianceFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComplianceFragment$downloadAndGetNewPictureFile$2(String str, ComplianceFragment complianceFragment, Continuation<? super ComplianceFragment$downloadAndGetNewPictureFile$2> continuation) {
        super(2, continuation);
        this.$compliancePictureUrl = str;
        this.this$0 = complianceFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ComplianceFragment$downloadAndGetNewPictureFile$2(this.$compliancePictureUrl, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super File> continuation) {
        return ((ComplianceFragment$downloadAndGetNewPictureFile$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        File pictureCacheFolder;
        Unit unit;
        File pictureCacheFile;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Response execute = OkHttpUtil.client().newCall(new Request.Builder().url(this.$compliancePictureUrl).build()).execute();
            if (!execute.isSuccessful()) {
                return null;
            }
            pictureCacheFolder = this.this$0.getPictureCacheFolder();
            File file = new File(pictureCacheFolder, URLUtil.guessFileName(this.$compliancePictureUrl, null, null));
            KotlinUtilKt.deleteIfExists(file);
            ResponseBody body = execute.body();
            if (body != null) {
                pictureCacheFile = this.this$0.getPictureCacheFile();
                if (pictureCacheFile != null) {
                    Boxing.boxBoolean(pictureCacheFile.delete());
                }
                FilesKt.writeBytes(file, body.bytes());
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                return null;
            }
            return file;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
