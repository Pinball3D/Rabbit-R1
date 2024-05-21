package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.Bundleable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import com.google.common.base.Objects;

/* loaded from: classes2.dex */
public final class StarRating extends Rating {
    private static final int MAX_STARS_DEFAULT = 5;
    private static final int TYPE = 2;
    private final int maxStars;
    private final float starRating;
    private static final String FIELD_MAX_STARS = Util.intToStringMaxRadix(1);
    private static final String FIELD_STAR_RATING = Util.intToStringMaxRadix(2);
    public static final Bundleable.Creator<StarRating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.StarRating$$ExternalSyntheticLambda0
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            StarRating fromBundle;
            fromBundle = StarRating.fromBundle(bundle);
            return fromBundle;
        }
    };

    public int getMaxStars() {
        return this.maxStars;
    }

    public float getStarRating() {
        return this.starRating;
    }

    @Override // androidx.media3.common.Rating
    public boolean isRated() {
        return this.starRating != -1.0f;
    }

    public StarRating(int i) {
        Assertions.checkArgument(i > 0, "maxStars must be a positive integer");
        this.maxStars = i;
        this.starRating = -1.0f;
    }

    public StarRating(int i, float f) {
        Assertions.checkArgument(i > 0, "maxStars must be a positive integer");
        Assertions.checkArgument(f >= 0.0f && f <= ((float) i), "starRating is out of range [0, maxStars]");
        this.maxStars = i;
        this.starRating = f;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.maxStars), Float.valueOf(this.starRating));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        return this.maxStars == starRating.maxStars && this.starRating == starRating.starRating;
    }

    @Override // androidx.media3.common.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_RATING_TYPE, 2);
        bundle.putInt(FIELD_MAX_STARS, this.maxStars);
        bundle.putFloat(FIELD_STAR_RATING, this.starRating);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static StarRating fromBundle(Bundle bundle) {
        Assertions.checkArgument(bundle.getInt(FIELD_RATING_TYPE, -1) == 2);
        int i = bundle.getInt(FIELD_MAX_STARS, 5);
        float f = bundle.getFloat(FIELD_STAR_RATING, -1.0f);
        if (f == -1.0f) {
            return new StarRating(i);
        }
        return new StarRating(i, f);
    }
}
