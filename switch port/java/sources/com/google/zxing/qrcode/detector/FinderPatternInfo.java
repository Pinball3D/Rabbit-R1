package com.google.zxing.qrcode.detector;

/* loaded from: classes3.dex */
public final class FinderPatternInfo {
    private final FinderPattern bottomLeft;
    private final FinderPattern topLeft;
    private final FinderPattern topRight;

    public FinderPattern getBottomLeft() {
        return this.bottomLeft;
    }

    public FinderPattern getTopLeft() {
        return this.topLeft;
    }

    public FinderPattern getTopRight() {
        return this.topRight;
    }

    public FinderPatternInfo(FinderPattern[] finderPatternArr) {
        this.bottomLeft = finderPatternArr[0];
        this.topLeft = finderPatternArr[1];
        this.topRight = finderPatternArr[2];
    }
}
