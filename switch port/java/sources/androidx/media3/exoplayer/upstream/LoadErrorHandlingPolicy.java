package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public interface LoadErrorHandlingPolicy {
    public static final int FALLBACK_TYPE_LOCATION = 1;
    public static final int FALLBACK_TYPE_TRACK = 2;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface FallbackType {
    }

    FallbackSelection getFallbackSelectionFor(FallbackOptions fallbackOptions, LoadErrorInfo loadErrorInfo);

    int getMinimumLoadableRetryCount(int i);

    long getRetryDelayMsFor(LoadErrorInfo loadErrorInfo);

    default void onLoadTaskConcluded(long j) {
    }

    /* loaded from: classes2.dex */
    public static final class LoadErrorInfo {
        public final int errorCount;
        public final IOException exception;
        public final LoadEventInfo loadEventInfo;
        public final MediaLoadData mediaLoadData;

        public LoadErrorInfo(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, int i) {
            this.loadEventInfo = loadEventInfo;
            this.mediaLoadData = mediaLoadData;
            this.exception = iOException;
            this.errorCount = i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class FallbackOptions {
        public final int numberOfExcludedLocations;
        public final int numberOfExcludedTracks;
        public final int numberOfLocations;
        public final int numberOfTracks;

        public boolean isFallbackAvailable(int i) {
            if (i == 1) {
                if (this.numberOfLocations - this.numberOfExcludedLocations <= 1) {
                    return false;
                }
            } else if (this.numberOfTracks - this.numberOfExcludedTracks <= 1) {
                return false;
            }
            return true;
        }

        public FallbackOptions(int i, int i2, int i3, int i4) {
            this.numberOfLocations = i;
            this.numberOfExcludedLocations = i2;
            this.numberOfTracks = i3;
            this.numberOfExcludedTracks = i4;
        }
    }

    /* loaded from: classes2.dex */
    public static final class FallbackSelection {
        public final long exclusionDurationMs;
        public final int type;

        public FallbackSelection(int i, long j) {
            Assertions.checkArgument(j >= 0);
            this.type = i;
            this.exclusionDurationMs = j;
        }
    }
}
