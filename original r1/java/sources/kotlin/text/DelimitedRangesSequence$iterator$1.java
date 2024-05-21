package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: Strings.kt */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0006\"\u0004\b\u0013\u0010\bR\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\b¨\u0006\u001c"}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "", "Lkotlin/ranges/IntRange;", "counter", "", "getCounter", "()I", "setCounter", "(I)V", "currentStartIndex", "getCurrentStartIndex", "setCurrentStartIndex", "nextItem", "getNextItem", "()Lkotlin/ranges/IntRange;", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "nextSearchIndex", "getNextSearchIndex", "setNextSearchIndex", "nextState", "getNextState", "setNextState", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DelimitedRangesSequence$iterator$1 implements Iterator<IntRange>, KMappedMarker {
    private int counter;
    private int currentStartIndex;
    private IntRange nextItem;
    private int nextSearchIndex;
    private int nextState = -1;
    final /* synthetic */ DelimitedRangesSequence this$0;

    public final int getCounter() {
        return this.counter;
    }

    public final int getCurrentStartIndex() {
        return this.currentStartIndex;
    }

    public final IntRange getNextItem() {
        return this.nextItem;
    }

    public final int getNextSearchIndex() {
        return this.nextSearchIndex;
    }

    public final int getNextState() {
        return this.nextState;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setCounter(int i) {
        this.counter = i;
    }

    public final void setCurrentStartIndex(int i) {
        this.currentStartIndex = i;
    }

    public final void setNextItem(IntRange intRange) {
        this.nextItem = intRange;
    }

    public final void setNextSearchIndex(int i) {
        this.nextSearchIndex = i;
    }

    public final void setNextState(int i) {
        this.nextState = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DelimitedRangesSequence$iterator$1(DelimitedRangesSequence delimitedRangesSequence) {
        int i;
        CharSequence charSequence;
        this.this$0 = delimitedRangesSequence;
        i = delimitedRangesSequence.startIndex;
        charSequence = delimitedRangesSequence.input;
        int coerceIn = RangesKt.coerceIn(i, 0, charSequence.length());
        this.currentStartIndex = coerceIn;
        this.nextSearchIndex = coerceIn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
    
        if (r0 < r4) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void calcNext() {
        /*
            r6 = this;
            int r0 = r6.nextSearchIndex
            r1 = 0
            if (r0 >= 0) goto Lc
            r6.nextState = r1
            r0 = 0
            r6.nextItem = r0
            goto L9e
        Lc:
            kotlin.text.DelimitedRangesSequence r0 = r6.this$0
            int r0 = kotlin.text.DelimitedRangesSequence.access$getLimit$p(r0)
            r2 = -1
            r3 = 1
            if (r0 <= 0) goto L23
            int r0 = r6.counter
            int r0 = r0 + r3
            r6.counter = r0
            kotlin.text.DelimitedRangesSequence r4 = r6.this$0
            int r4 = kotlin.text.DelimitedRangesSequence.access$getLimit$p(r4)
            if (r0 >= r4) goto L31
        L23:
            int r0 = r6.nextSearchIndex
            kotlin.text.DelimitedRangesSequence r4 = r6.this$0
            java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r4)
            int r4 = r4.length()
            if (r0 <= r4) goto L47
        L31:
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            int r1 = r6.currentStartIndex
            kotlin.text.DelimitedRangesSequence r4 = r6.this$0
            java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r4)
            int r4 = kotlin.text.StringsKt.getLastIndex(r4)
            r0.<init>(r1, r4)
            r6.nextItem = r0
            r6.nextSearchIndex = r2
            goto L9c
        L47:
            kotlin.text.DelimitedRangesSequence r0 = r6.this$0
            kotlin.jvm.functions.Function2 r0 = kotlin.text.DelimitedRangesSequence.access$getGetNextMatch$p(r0)
            kotlin.text.DelimitedRangesSequence r4 = r6.this$0
            java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r4)
            int r5 = r6.nextSearchIndex
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object r0 = r0.invoke(r4, r5)
            kotlin.Pair r0 = (kotlin.Pair) r0
            if (r0 != 0) goto L77
            kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
            int r1 = r6.currentStartIndex
            kotlin.text.DelimitedRangesSequence r4 = r6.this$0
            java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r4)
            int r4 = kotlin.text.StringsKt.getLastIndex(r4)
            r0.<init>(r1, r4)
            r6.nextItem = r0
            r6.nextSearchIndex = r2
            goto L9c
        L77:
            java.lang.Object r2 = r0.component1()
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            java.lang.Object r0 = r0.component2()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r4 = r6.currentStartIndex
            kotlin.ranges.IntRange r4 = kotlin.ranges.RangesKt.until(r4, r2)
            r6.nextItem = r4
            int r2 = r2 + r0
            r6.currentStartIndex = r2
            if (r0 != 0) goto L99
            r1 = r3
        L99:
            int r2 = r2 + r1
            r6.nextSearchIndex = r2
        L9c:
            r6.nextState = r3
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.DelimitedRangesSequence$iterator$1.calcNext():void");
    }

    @Override // java.util.Iterator
    public IntRange next() {
        if (this.nextState == -1) {
            calcNext();
        }
        if (this.nextState == 0) {
            throw new NoSuchElementException();
        }
        IntRange intRange = this.nextItem;
        Intrinsics.checkNotNull(intRange, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.nextItem = null;
        this.nextState = -1;
        return intRange;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.nextState == -1) {
            calcNext();
        }
        return this.nextState == 1;
    }
}
