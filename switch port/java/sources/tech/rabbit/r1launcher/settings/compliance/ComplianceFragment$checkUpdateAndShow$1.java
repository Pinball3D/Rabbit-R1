package tech.rabbit.r1launcher.settings.compliance;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComplianceFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.compliance.ComplianceFragment$checkUpdateAndShow$1", f = "ComplianceFragment.kt", i = {}, l = {81, 87}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ComplianceFragment$checkUpdateAndShow$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ComplianceFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComplianceFragment$checkUpdateAndShow$1(ComplianceFragment complianceFragment, Continuation<? super ComplianceFragment$checkUpdateAndShow$1> continuation) {
        super(2, continuation);
        this.this$0 = complianceFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ComplianceFragment$checkUpdateAndShow$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ComplianceFragment$checkUpdateAndShow$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0057  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r5)
            goto L53
        L12:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L1a:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L2f
        L1e:
            kotlin.ResultKt.throwOnFailure(r5)
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment r5 = r4.this$0
            r1 = r4
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r4.label = r3
            java.lang.Object r5 = tech.rabbit.r1launcher.settings.compliance.ComplianceFragment.access$getDownloadCompliancePictureUrl(r5, r1)
            if (r5 != r0) goto L2f
            return r0
        L2f:
            java.lang.String r5 = (java.lang.String) r5
            r1 = r5
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            if (r1 == 0) goto L65
            int r1 = r1.length()
            if (r1 != 0) goto L3d
            goto L65
        L3d:
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment r1 = r4.this$0
            boolean r1 = tech.rabbit.r1launcher.settings.compliance.ComplianceFragment.access$checkPictureUpdate(r1, r5)
            if (r1 == 0) goto L5e
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment r1 = r4.this$0
            r3 = r4
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r4.label = r2
            java.lang.Object r5 = tech.rabbit.r1launcher.settings.compliance.ComplianceFragment.access$downloadAndGetNewPictureFile(r1, r5, r3)
            if (r5 != r0) goto L53
            return r0
        L53:
            java.io.File r5 = (java.io.File) r5
            if (r5 != 0) goto L6b
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment r5 = r4.this$0
            java.io.File r5 = tech.rabbit.r1launcher.settings.compliance.ComplianceFragment.access$getPictureCacheFile(r5)
            goto L6b
        L5e:
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment r5 = r4.this$0
            java.io.File r5 = tech.rabbit.r1launcher.settings.compliance.ComplianceFragment.access$getPictureCacheFile(r5)
            goto L6b
        L65:
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment r5 = r4.this$0
            java.io.File r5 = tech.rabbit.r1launcher.settings.compliance.ComplianceFragment.access$getPictureCacheFile(r5)
        L6b:
            if (r5 != 0) goto L70
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L70:
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment r4 = r4.this$0
            tech.rabbit.r1launcher.settings.compliance.ComplianceFragment.access$setImage(r4, r5)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.compliance.ComplianceFragment$checkUpdateAndShow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
