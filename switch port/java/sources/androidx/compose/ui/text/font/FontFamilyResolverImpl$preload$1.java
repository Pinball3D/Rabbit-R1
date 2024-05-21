package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontFamilyResolver.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.text.font.FontFamilyResolverImpl", f = "FontFamilyResolver.kt", i = {0, 0}, l = {45}, m = "preload", n = {"this", "fontFamily"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class FontFamilyResolverImpl$preload$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FontFamilyResolverImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontFamilyResolverImpl$preload$1(FontFamilyResolverImpl fontFamilyResolverImpl, Continuation<? super FontFamilyResolverImpl$preload$1> continuation) {
        super(continuation);
        this.this$0 = fontFamilyResolverImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.preload(null, this);
    }
}
