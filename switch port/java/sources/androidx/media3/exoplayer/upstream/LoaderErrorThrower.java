package androidx.media3.exoplayer.upstream;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface LoaderErrorThrower {

    /* loaded from: classes2.dex */
    public static final class Placeholder implements LoaderErrorThrower {
        @Override // androidx.media3.exoplayer.upstream.LoaderErrorThrower
        public void maybeThrowError() {
        }

        @Override // androidx.media3.exoplayer.upstream.LoaderErrorThrower
        public void maybeThrowError(int i) {
        }
    }

    void maybeThrowError() throws IOException;

    void maybeThrowError(int i) throws IOException;
}
