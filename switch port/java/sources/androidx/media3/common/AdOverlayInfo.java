package androidx.media3.common;

import android.view.View;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class AdOverlayInfo {
    public static final int PURPOSE_CLOSE_AD = 2;
    public static final int PURPOSE_CONTROLS = 1;
    public static final int PURPOSE_NOT_VISIBLE = 4;
    public static final int PURPOSE_OTHER = 3;
    public final int purpose;
    public final String reasonDetail;
    public final View view;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Purpose {
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String detailedReason;
        private final int purpose;
        private final View view;

        public Builder setDetailedReason(String str) {
            this.detailedReason = str;
            return this;
        }

        public Builder(View view, int i) {
            this.view = view;
            this.purpose = i;
        }

        public AdOverlayInfo build() {
            return new AdOverlayInfo(this.view, this.purpose, this.detailedReason);
        }
    }

    @Deprecated
    public AdOverlayInfo(View view, int i) {
        this(view, i, null);
    }

    @Deprecated
    public AdOverlayInfo(View view, int i, String str) {
        this.view = view;
        this.purpose = i;
        this.reasonDetail = str;
    }
}
