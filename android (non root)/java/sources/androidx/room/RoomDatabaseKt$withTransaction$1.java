package androidx.room;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import tech.rabbit.r1systemupdater.model.UpdateEngineErrorCodes;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomDatabaseExt.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "androidx.room.RoomDatabaseKt", f = "RoomDatabaseExt.kt", i = {0, 0}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG, UpdateEngineErrorCodes.UPDATED_BUT_NOT_ACTIVE}, m = "withTransaction", n = {"$this$withTransaction", "block"}, s = {"L$0", "L$1"})
/* loaded from: classes2.dex */
public final class RoomDatabaseKt$withTransaction$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomDatabaseKt$withTransaction$1(Continuation<? super RoomDatabaseKt$withTransaction$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return RoomDatabaseKt.withTransaction(null, null, this);
    }
}
