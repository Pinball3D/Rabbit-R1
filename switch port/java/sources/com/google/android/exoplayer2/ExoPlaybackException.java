package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.source.MediaPeriodId;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class ExoPlaybackException extends PlaybackException {
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;
    public final MediaPeriodId mediaPeriodId;
    public final Format rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;
    public final String rendererName;
    public final int type;
    public static final Bundleable.Creator<ExoPlaybackException> CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.ExoPlaybackException$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            return ExoPlaybackException.$r8$lambda$mXbXdGG_PHMarv0ObcHmIhB4uIw(bundle);
        }
    };
    private static final String FIELD_TYPE = Util.intToStringMaxRadix(1001);
    private static final String FIELD_RENDERER_NAME = Util.intToStringMaxRadix(1002);
    private static final String FIELD_RENDERER_INDEX = Util.intToStringMaxRadix(1003);
    private static final String FIELD_RENDERER_FORMAT = Util.intToStringMaxRadix(1004);
    private static final String FIELD_RENDERER_FORMAT_SUPPORT = Util.intToStringMaxRadix(1005);
    private static final String FIELD_IS_RECOVERABLE = Util.intToStringMaxRadix(1006);

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Type {
    }

    public static /* synthetic */ ExoPlaybackException $r8$lambda$mXbXdGG_PHMarv0ObcHmIhB4uIw(Bundle bundle) {
        return new ExoPlaybackException(bundle);
    }

    public static ExoPlaybackException createForSource(IOException iOException, int i) {
        return new ExoPlaybackException(0, iOException, i);
    }

    public static ExoPlaybackException createForRenderer(Throwable th, String str, int i, Format format, int i2, boolean z, int i3) {
        return new ExoPlaybackException(1, th, null, i3, str, i, format, format == null ? 4 : i2, z);
    }

    @Deprecated
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return createForUnexpected(runtimeException, 1000);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException, int i) {
        return new ExoPlaybackException(2, runtimeException, i);
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, null, str, 1001, null, -1, null, 4, false);
    }

    private ExoPlaybackException(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    private ExoPlaybackException(int i, Throwable th, String str, int i2, String str2, int i3, Format format, int i4, boolean z) {
        this(deriveMessage(i, str, str2, i3, format, i4), th, i2, i, str2, i3, format, i4, null, SystemClock.elapsedRealtime(), z);
    }

    private ExoPlaybackException(Bundle bundle) {
        super(bundle);
        this.type = bundle.getInt(FIELD_TYPE, 2);
        this.rendererName = bundle.getString(FIELD_RENDERER_NAME);
        this.rendererIndex = bundle.getInt(FIELD_RENDERER_INDEX, -1);
        Bundle bundle2 = bundle.getBundle(FIELD_RENDERER_FORMAT);
        this.rendererFormat = bundle2 == null ? null : Format.CREATOR.fromBundle(bundle2);
        this.rendererFormatSupport = bundle.getInt(FIELD_RENDERER_FORMAT_SUPPORT, 4);
        this.isRecoverable = bundle.getBoolean(FIELD_IS_RECOVERABLE, false);
        this.mediaPeriodId = null;
    }

    private ExoPlaybackException(String str, Throwable th, int i, int i2, String str2, int i3, Format format, int i4, MediaPeriodId mediaPeriodId, long j, boolean z) {
        super(str, th, i, j);
        Assertions.checkArgument(!z || i2 == 1);
        Assertions.checkArgument(th != null || i2 == 3);
        this.type = i2;
        this.rendererName = str2;
        this.rendererIndex = i3;
        this.rendererFormat = format;
        this.rendererFormatSupport = i4;
        this.mediaPeriodId = mediaPeriodId;
        this.isRecoverable = z;
    }

    public IOException getSourceException() {
        Assertions.checkState(this.type == 0);
        return (IOException) Assertions.checkNotNull(getCause());
    }

    public Exception getRendererException() {
        Assertions.checkState(this.type == 1);
        return (Exception) Assertions.checkNotNull(getCause());
    }

    public RuntimeException getUnexpectedException() {
        Assertions.checkState(this.type == 2);
        return (RuntimeException) Assertions.checkNotNull(getCause());
    }

    @Override // com.google.android.exoplayer2.PlaybackException
    public boolean errorInfoEquals(PlaybackException playbackException) {
        if (!super.errorInfoEquals(playbackException)) {
            return false;
        }
        ExoPlaybackException exoPlaybackException = (ExoPlaybackException) Util.castNonNull(playbackException);
        return this.type == exoPlaybackException.type && Util.areEqual(this.rendererName, exoPlaybackException.rendererName) && this.rendererIndex == exoPlaybackException.rendererIndex && Util.areEqual(this.rendererFormat, exoPlaybackException.rendererFormat) && this.rendererFormatSupport == exoPlaybackException.rendererFormatSupport && Util.areEqual(this.mediaPeriodId, exoPlaybackException.mediaPeriodId) && this.isRecoverable == exoPlaybackException.isRecoverable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExoPlaybackException copyWithMediaPeriodId(MediaPeriodId mediaPeriodId) {
        return new ExoPlaybackException((String) Util.castNonNull(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, mediaPeriodId, this.timestampMs, this.isRecoverable);
    }

    private static String deriveMessage(int i, String str, String str2, int i2, Format format, int i3) {
        String str3;
        if (i == 0) {
            str3 = "Source error";
        } else if (i != 1) {
            str3 = i != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i2 + ", format=" + format + ", format_supported=" + Util.getFormatSupportString(i3);
        }
        return !TextUtils.isEmpty(str) ? str3 + ": " + str : str3;
    }

    @Override // com.google.android.exoplayer2.PlaybackException, com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putInt(FIELD_TYPE, this.type);
        bundle.putString(FIELD_RENDERER_NAME, this.rendererName);
        bundle.putInt(FIELD_RENDERER_INDEX, this.rendererIndex);
        Format format = this.rendererFormat;
        if (format != null) {
            bundle.putBundle(FIELD_RENDERER_FORMAT, format.toBundle());
        }
        bundle.putInt(FIELD_RENDERER_FORMAT_SUPPORT, this.rendererFormatSupport);
        bundle.putBoolean(FIELD_IS_RECOVERABLE, this.isRecoverable);
        return bundle;
    }
}
