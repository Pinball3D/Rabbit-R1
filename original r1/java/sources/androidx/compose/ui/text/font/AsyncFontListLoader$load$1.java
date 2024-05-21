package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.text.font.AsyncFontListLoader", f = "FontListFontFamilyTypefaceAdapter.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {268, 281}, m = "load", n = {"this", "$this$fastForEach$iv", "font", "index$iv", "this", "$this$fastForEach$iv", "index$iv"}, s = {"L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "I$0"})
/* loaded from: classes.dex */
public final class AsyncFontListLoader$load$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AsyncFontListLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncFontListLoader$load$1(AsyncFontListLoader asyncFontListLoader, Continuation<? super AsyncFontListLoader$load$1> continuation) {
        super(continuation);
        this.this$0 = asyncFontListLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.load(this);
    }
}
