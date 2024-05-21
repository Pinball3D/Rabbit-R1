package com.rubensousa.dpadrecyclerview;

import kotlin.Metadata;

/* compiled from: ViewAlignment.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0005R\u0012\u0010\f\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u0005R\u0012\u0010\r\u001a\u00020\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ViewAlignment;", "", "alignToBaseline", "", "getAlignToBaseline", "()Z", "fraction", "", "getFraction", "()F", "includePadding", "getIncludePadding", "isFractionEnabled", "offset", "", "getOffset", "()I", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ViewAlignment {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final float DEFAULT_FRACTION = 0.5f;
    public static final int DEFAULT_OFFSET = 0;

    boolean getAlignToBaseline();

    float getFraction();

    boolean getIncludePadding();

    int getOffset();

    boolean isFractionEnabled();

    /* compiled from: ViewAlignment.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ViewAlignment$Companion;", "", "()V", "DEFAULT_FRACTION", "", "DEFAULT_OFFSET", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final float DEFAULT_FRACTION = 0.5f;
        public static final int DEFAULT_OFFSET = 0;

        private Companion() {
        }
    }
}
