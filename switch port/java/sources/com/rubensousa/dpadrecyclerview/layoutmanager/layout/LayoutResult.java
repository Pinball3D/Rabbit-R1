package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import kotlin.Metadata;

/* compiled from: LayoutResult.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;", "", "()V", "consumedSpace", "", "getConsumedSpace", "()I", "setConsumedSpace", "(I)V", "skipConsumption", "", "getSkipConsumption", "()Z", "setSkipConsumption", "(Z)V", "reset", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutResult {
    private int consumedSpace;
    private boolean skipConsumption;

    public final int getConsumedSpace() {
        return this.consumedSpace;
    }

    public final boolean getSkipConsumption() {
        return this.skipConsumption;
    }

    public final void reset() {
        this.consumedSpace = 0;
        this.skipConsumption = false;
    }

    public final void setConsumedSpace(int i) {
        this.consumedSpace = i;
    }

    public final void setSkipConsumption(boolean z) {
        this.skipConsumption = z;
    }
}
