package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: SelectionAdjustment.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
/* synthetic */ class SelectionAdjustment$Companion$Word$1$adjust$1 extends FunctionReferenceImpl implements Function1<Integer, TextRange> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SelectionAdjustment$Companion$Word$1$adjust$1(Object obj) {
        super(1, obj, TextLayoutResult.class, "getWordBoundary", "getWordBoundary--jx7JFs(I)J", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ TextRange invoke(Integer num) {
        return TextRange.m4402boximpl(m899invokejx7JFs(num.intValue()));
    }

    /* renamed from: invoke--jx7JFs, reason: not valid java name */
    public final long m899invokejx7JFs(int i) {
        return ((TextLayoutResult) this.receiver).m4388getWordBoundaryjx7JFs(i);
    }
}
