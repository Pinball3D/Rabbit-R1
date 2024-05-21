package com.google.android.exoplayer2.source;

/* loaded from: classes2.dex */
public final class DefaultCompositeSequenceableLoaderFactory implements CompositeSequenceableLoaderFactory {
    @Override // com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory
    public SequenceableLoader createCompositeSequenceableLoader(SequenceableLoader... sequenceableLoaderArr) {
        return new CompositeSequenceableLoader(sequenceableLoaderArr);
    }
}
