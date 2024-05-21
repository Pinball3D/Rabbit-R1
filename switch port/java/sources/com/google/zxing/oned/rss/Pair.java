package com.google.zxing.oned.rss;

/* loaded from: classes3.dex */
final class Pair extends DataCharacter {
    private int count;
    private final FinderPattern finderPattern;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCount() {
        return this.count;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinderPattern getFinderPattern() {
        return this.finderPattern;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void incrementCount() {
        this.count++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair(int i, int i2, FinderPattern finderPattern) {
        super(i, i2);
        this.finderPattern = finderPattern;
    }
}
