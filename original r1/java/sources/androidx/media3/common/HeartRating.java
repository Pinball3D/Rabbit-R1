package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.Bundleable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import com.google.common.base.Objects;

/* loaded from: classes2.dex */
public final class HeartRating extends Rating {
    private static final int TYPE = 0;
    private final boolean isHeart;
    private final boolean rated;
    private static final String FIELD_RATED = Util.intToStringMaxRadix(1);
    private static final String FIELD_IS_HEART = Util.intToStringMaxRadix(2);
    public static final Bundleable.Creator<HeartRating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.HeartRating$$ExternalSyntheticLambda0
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            HeartRating fromBundle;
            fromBundle = HeartRating.fromBundle(bundle);
            return fromBundle;
        }
    };

    public boolean isHeart() {
        return this.isHeart;
    }

    @Override // androidx.media3.common.Rating
    public boolean isRated() {
        return this.rated;
    }

    public HeartRating() {
        this.rated = false;
        this.isHeart = false;
    }

    public HeartRating(boolean z) {
        this.rated = true;
        this.isHeart = z;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.rated), Boolean.valueOf(this.isHeart));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        return this.isHeart == heartRating.isHeart && this.rated == heartRating.rated;
    }

    @Override // androidx.media3.common.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_RATING_TYPE, 0);
        bundle.putBoolean(FIELD_RATED, this.rated);
        bundle.putBoolean(FIELD_IS_HEART, this.isHeart);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HeartRating fromBundle(Bundle bundle) {
        Assertions.checkArgument(bundle.getInt(FIELD_RATING_TYPE, -1) == 0);
        if (bundle.getBoolean(FIELD_RATED, false)) {
            return new HeartRating(bundle.getBoolean(FIELD_IS_HEART, false));
        }
        return new HeartRating();
    }
}
