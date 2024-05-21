package androidx.media3.exoplayer.source;

/* loaded from: classes2.dex */
public class CompositeSequenceableLoader implements SequenceableLoader {
    protected final SequenceableLoader[] loaders;

    public CompositeSequenceableLoader(SequenceableLoader[] sequenceableLoaderArr) {
        this.loaders = sequenceableLoaderArr;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long getBufferedPositionUs() {
        long j = Long.MAX_VALUE;
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            long bufferedPositionUs = sequenceableLoader.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                j = Math.min(j, bufferedPositionUs);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long getNextLoadPositionUs() {
        long j = Long.MAX_VALUE;
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            long nextLoadPositionUs = sequenceableLoader.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                j = Math.min(j, nextLoadPositionUs);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void reevaluateBuffer(long j) {
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            sequenceableLoader.reevaluateBuffer(j);
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j) {
        boolean z;
        boolean z2 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (SequenceableLoader sequenceableLoader : this.loaders) {
                long nextLoadPositionUs2 = sequenceableLoader.getNextLoadPositionUs();
                boolean z3 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z3) {
                    z |= sequenceableLoader.continueLoading(j);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            if (sequenceableLoader.isLoading()) {
                return true;
            }
        }
        return false;
    }
}
