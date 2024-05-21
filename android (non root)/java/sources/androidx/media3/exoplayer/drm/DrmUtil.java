package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class DrmUtil {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ErrorSource {
    }

    public static int getErrorCodeForMediaDrmException(Exception exc, int i) {
        if (Util.SDK_INT >= 21 && Api21.isMediaDrmStateException(exc)) {
            return Api21.mediaDrmStateExceptionToErrorCode(exc);
        }
        if (Util.SDK_INT >= 23 && Api23.isMediaDrmResetException(exc)) {
            return 6006;
        }
        if (Util.SDK_INT >= 18 && Api18.isNotProvisionedException(exc)) {
            return 6002;
        }
        if (Util.SDK_INT >= 18 && Api18.isDeniedByServerException(exc)) {
            return 6007;
        }
        if (exc instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (exc instanceof KeysExpiredException) {
            return 6008;
        }
        if (i == 1) {
            return 6006;
        }
        if (i == 2) {
            return 6004;
        }
        if (i == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Api18 {
        private Api18() {
        }

        public static boolean isNotProvisionedException(Throwable th) {
            return th instanceof NotProvisionedException;
        }

        public static boolean isDeniedByServerException(Throwable th) {
            return th instanceof DeniedByServerException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Api21 {
        private Api21() {
        }

        public static boolean isMediaDrmStateException(Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        public static int mediaDrmStateExceptionToErrorCode(Throwable th) {
            return Util.getErrorCodeForMediaDrmErrorCode(Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Api23 {
        private Api23() {
        }

        public static boolean isMediaDrmResetException(Throwable th) {
            return th instanceof MediaDrmResetException;
        }
    }

    private DrmUtil() {
    }
}
