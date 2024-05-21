package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.text.font.AsyncFontListLoader", f = "FontListFontFamilyTypefaceAdapter.kt", i = {0}, l = {300}, m = "loadWithTimeoutOrNull$ui_text_release", n = {"$this$loadWithTimeoutOrNull"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class AsyncFontListLoader$loadWithTimeoutOrNull$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AsyncFontListLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncFontListLoader$loadWithTimeoutOrNull$1(AsyncFontListLoader asyncFontListLoader, Continuation<? super AsyncFontListLoader$loadWithTimeoutOrNull$1> continuation) {
        super(continuation);
        this.this$0 = asyncFontListLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.loadWithTimeoutOrNull$ui_text_release(null, this);
    }
}
