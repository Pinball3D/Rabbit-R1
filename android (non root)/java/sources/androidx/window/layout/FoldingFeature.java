package androidx.window.layout;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;

/* compiled from: FoldingFeature.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001:\u0003\u0011\u0012\u0013R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004R\u0012\u0010\u0005\u001a\u00020\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00020\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0012\u0010\r\u001a\u00020\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Landroidx/window/layout/FoldingFeature;", "Landroidx/window/layout/DisplayFeature;", "isSeparating", "", "()Z", "occlusionType", "Landroidx/window/layout/FoldingFeature$OcclusionType;", "getOcclusionType", "()Landroidx/window/layout/FoldingFeature$OcclusionType;", Device.JsonKeys.ORIENTATION, "Landroidx/window/layout/FoldingFeature$Orientation;", "getOrientation", "()Landroidx/window/layout/FoldingFeature$Orientation;", SentryThread.JsonKeys.STATE, "Landroidx/window/layout/FoldingFeature$State;", "getState", "()Landroidx/window/layout/FoldingFeature$State;", "OcclusionType", ExifInterface.TAG_ORIENTATION, "State", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface FoldingFeature extends DisplayFeature {
    OcclusionType getOcclusionType();

    Orientation getOrientation();

    State getState();

    boolean isSeparating();

    /* compiled from: FoldingFeature.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/window/layout/FoldingFeature$OcclusionType;", "", "description", "", "(Ljava/lang/String;)V", "toString", "Companion", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class OcclusionType {
        private final String description;
        public static final OcclusionType NONE = new OcclusionType("NONE");
        public static final OcclusionType FULL = new OcclusionType("FULL");

        /* renamed from: toString, reason: from getter */
        public String getDescription() {
            return this.description;
        }

        private OcclusionType(String str) {
            this.description = str;
        }
    }

    /* compiled from: FoldingFeature.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/window/layout/FoldingFeature$Orientation;", "", "description", "", "(Ljava/lang/String;)V", "toString", "Companion", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Orientation {
        private final String description;
        public static final Orientation VERTICAL = new Orientation("VERTICAL");
        public static final Orientation HORIZONTAL = new Orientation("HORIZONTAL");

        /* renamed from: toString, reason: from getter */
        public String getDescription() {
            return this.description;
        }

        private Orientation(String str) {
            this.description = str;
        }
    }

    /* compiled from: FoldingFeature.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/window/layout/FoldingFeature$State;", "", "description", "", "(Ljava/lang/String;)V", "toString", "Companion", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class State {
        public static final State FLAT = new State("FLAT");
        public static final State HALF_OPENED = new State("HALF_OPENED");
        private final String description;

        /* renamed from: toString, reason: from getter */
        public String getDescription() {
            return this.description;
        }

        private State(String str) {
            this.description = str;
        }
    }
}
