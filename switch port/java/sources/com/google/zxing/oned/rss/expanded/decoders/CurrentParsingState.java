package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes3.dex */
final class CurrentParsingState {
    private int position = 0;
    private State encoding = State.NUMERIC;

    /* loaded from: classes3.dex */
    private enum State {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPosition() {
        return this.position;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void incrementPosition(int i) {
        this.position += i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPosition(int i) {
        this.position = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAlpha() {
        return this.encoding == State.ALPHA;
    }

    boolean isNumeric() {
        return this.encoding == State.NUMERIC;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIsoIec646() {
        return this.encoding == State.ISO_IEC_646;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNumeric() {
        this.encoding = State.NUMERIC;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAlpha() {
        this.encoding = State.ALPHA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIsoIec646() {
        this.encoding = State.ISO_IEC_646;
    }
}
