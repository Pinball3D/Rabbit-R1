package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import io.sentry.protocol.TransactionInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;
    private final Compat mCompat;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface BuilderCompat {
        ContentInfoCompat build();

        void setClip(ClipData clipData);

        void setExtras(Bundle bundle);

        void setFlags(int i);

        void setLinkUri(Uri uri);

        void setSource(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface Compat {
        ClipData getClip();

        Bundle getExtras();

        int getFlags();

        Uri getLinkUri();

        int getSource();

        ContentInfo getWrapped();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Source {
    }

    static String sourceToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    static String flagsToString(int i) {
        return (i & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i);
    }

    ContentInfoCompat(Compat compat) {
        this.mCompat = compat;
    }

    public static ContentInfoCompat toContentInfoCompat(ContentInfo contentInfo) {
        return new ContentInfoCompat(new Compat31Impl(contentInfo));
    }

    public ContentInfo toContentInfo() {
        return (ContentInfo) Objects.requireNonNull(this.mCompat.getWrapped());
    }

    public String toString() {
        return this.mCompat.toString();
    }

    public ClipData getClip() {
        return this.mCompat.getClip();
    }

    public int getSource() {
        return this.mCompat.getSource();
    }

    public int getFlags() {
        return this.mCompat.getFlags();
    }

    public Uri getLinkUri() {
        return this.mCompat.getLinkUri();
    }

    public Bundle getExtras() {
        return this.mCompat.getExtras();
    }

    public Pair<ContentInfoCompat, ContentInfoCompat> partition(Predicate<ClipData.Item> predicate) {
        ClipData clip = this.mCompat.getClip();
        if (clip.getItemCount() == 1) {
            boolean test = predicate.test(clip.getItemAt(0));
            ContentInfoCompat contentInfoCompat = test ? this : null;
            if (test) {
                this = null;
            }
            return Pair.create(contentInfoCompat, this);
        }
        Pair<ClipData, ClipData> partition = partition(clip, predicate);
        if (partition.first == null) {
            return Pair.create(null, this);
        }
        if (partition.second == null) {
            return Pair.create(this, null);
        }
        return Pair.create(new Builder(this).setClip((ClipData) partition.first).build(), new Builder(this).setClip((ClipData) partition.second).build());
    }

    static Pair<ClipData, ClipData> partition(ClipData clipData, Predicate<ClipData.Item> predicate) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i = 0; i < clipData.getItemCount(); i++) {
            ClipData.Item itemAt = clipData.getItemAt(i);
            if (predicate.test(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        if (arrayList == null) {
            return Pair.create(null, clipData);
        }
        if (arrayList2 == null) {
            return Pair.create(clipData, null);
        }
        return Pair.create(buildClipData(clipData.getDescription(), arrayList), buildClipData(clipData.getDescription(), arrayList2));
    }

    static ClipData buildClipData(ClipDescription clipDescription, List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i = 1; i < list.size(); i++) {
            clipData.addItem(list.get(i));
        }
        return clipData;
    }

    public static Pair<ContentInfo, ContentInfo> partition(ContentInfo contentInfo, java.util.function.Predicate<ClipData.Item> predicate) {
        return Api31Impl.partition(contentInfo, predicate);
    }

    /* loaded from: classes.dex */
    private static final class Api31Impl {
        private Api31Impl() {
        }

        public static Pair<ContentInfo, ContentInfo> partition(ContentInfo contentInfo, final java.util.function.Predicate<ClipData.Item> predicate) {
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() == 1) {
                boolean test = predicate.test(clip.getItemAt(0));
                ContentInfo contentInfo2 = test ? contentInfo : null;
                if (test) {
                    contentInfo = null;
                }
                return Pair.create(contentInfo2, contentInfo);
            }
            Objects.requireNonNull(predicate);
            Pair<ClipData, ClipData> partition = ContentInfoCompat.partition(clip, (Predicate<ClipData.Item>) new Predicate() { // from class: androidx.core.view.ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return predicate.test((ClipData.Item) obj);
                }
            });
            if (partition.first == null) {
                return Pair.create(null, contentInfo);
            }
            if (partition.second == null) {
                return Pair.create(contentInfo, null);
            }
            return Pair.create(new ContentInfo.Builder(contentInfo).setClip((ClipData) partition.first).build(), new ContentInfo.Builder(contentInfo).setClip((ClipData) partition.second).build());
        }
    }

    /* loaded from: classes.dex */
    private static final class CompatImpl implements Compat {
        private final ClipData mClip;
        private final Bundle mExtras;
        private final int mFlags;
        private final Uri mLinkUri;
        private final int mSource;

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public ClipData getClip() {
            return this.mClip;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public Bundle getExtras() {
            return this.mExtras;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getFlags() {
            return this.mFlags;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public Uri getLinkUri() {
            return this.mLinkUri;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getSource() {
            return this.mSource;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public ContentInfo getWrapped() {
            return null;
        }

        CompatImpl(BuilderCompatImpl builderCompatImpl) {
            this.mClip = (ClipData) Preconditions.checkNotNull(builderCompatImpl.mClip);
            this.mSource = Preconditions.checkArgumentInRange(builderCompatImpl.mSource, 0, 5, TransactionInfo.JsonKeys.SOURCE);
            this.mFlags = Preconditions.checkFlagsArgument(builderCompatImpl.mFlags, 1);
            this.mLinkUri = builderCompatImpl.mLinkUri;
            this.mExtras = builderCompatImpl.mExtras;
        }

        public String toString() {
            return "ContentInfoCompat{clip=" + this.mClip.getDescription() + ", source=" + ContentInfoCompat.sourceToString(this.mSource) + ", flags=" + ContentInfoCompat.flagsToString(this.mFlags) + (this.mLinkUri == null ? "" : ", hasLinkUri(" + this.mLinkUri.toString().length() + ")") + (this.mExtras != null ? ", hasExtras" : "") + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Compat31Impl implements Compat {
        private final ContentInfo mWrapped;

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public ContentInfo getWrapped() {
            return this.mWrapped;
        }

        Compat31Impl(ContentInfo contentInfo) {
            this.mWrapped = (ContentInfo) Preconditions.checkNotNull(contentInfo);
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public ClipData getClip() {
            return this.mWrapped.getClip();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getSource() {
            return this.mWrapped.getSource();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getFlags() {
            return this.mWrapped.getFlags();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public Uri getLinkUri() {
            return this.mWrapped.getLinkUri();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public Bundle getExtras() {
            return this.mWrapped.getExtras();
        }

        public String toString() {
            return "ContentInfoCompat{" + this.mWrapped + "}";
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private final BuilderCompat mBuilderCompat;

        public Builder(ContentInfoCompat contentInfoCompat) {
            this.mBuilderCompat = new BuilderCompat31Impl(contentInfoCompat);
        }

        public Builder(ClipData clipData, int i) {
            this.mBuilderCompat = new BuilderCompat31Impl(clipData, i);
        }

        public Builder setClip(ClipData clipData) {
            this.mBuilderCompat.setClip(clipData);
            return this;
        }

        public Builder setSource(int i) {
            this.mBuilderCompat.setSource(i);
            return this;
        }

        public Builder setFlags(int i) {
            this.mBuilderCompat.setFlags(i);
            return this;
        }

        public Builder setLinkUri(Uri uri) {
            this.mBuilderCompat.setLinkUri(uri);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mBuilderCompat.setExtras(bundle);
            return this;
        }

        public ContentInfoCompat build() {
            return this.mBuilderCompat.build();
        }
    }

    /* loaded from: classes.dex */
    private static final class BuilderCompatImpl implements BuilderCompat {
        ClipData mClip;
        Bundle mExtras;
        int mFlags;
        Uri mLinkUri;
        int mSource;

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setClip(ClipData clipData) {
            this.mClip = clipData;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setExtras(Bundle bundle) {
            this.mExtras = bundle;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setFlags(int i) {
            this.mFlags = i;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setLinkUri(Uri uri) {
            this.mLinkUri = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setSource(int i) {
            this.mSource = i;
        }

        BuilderCompatImpl(ClipData clipData, int i) {
            this.mClip = clipData;
            this.mSource = i;
        }

        BuilderCompatImpl(ContentInfoCompat contentInfoCompat) {
            this.mClip = contentInfoCompat.getClip();
            this.mSource = contentInfoCompat.getSource();
            this.mFlags = contentInfoCompat.getFlags();
            this.mLinkUri = contentInfoCompat.getLinkUri();
            this.mExtras = contentInfoCompat.getExtras();
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }
    }

    /* loaded from: classes.dex */
    private static final class BuilderCompat31Impl implements BuilderCompat {
        private final ContentInfo.Builder mPlatformBuilder;

        BuilderCompat31Impl(ClipData clipData, int i) {
            this.mPlatformBuilder = new ContentInfo.Builder(clipData, i);
        }

        BuilderCompat31Impl(ContentInfoCompat contentInfoCompat) {
            this.mPlatformBuilder = new ContentInfo.Builder(contentInfoCompat.toContentInfo());
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setClip(ClipData clipData) {
            this.mPlatformBuilder.setClip(clipData);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setSource(int i) {
            this.mPlatformBuilder.setSource(i);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setFlags(int i) {
            this.mPlatformBuilder.setFlags(i);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setLinkUri(Uri uri) {
            this.mPlatformBuilder.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setExtras(Bundle bundle) {
            this.mPlatformBuilder.setExtras(bundle);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new Compat31Impl(this.mPlatformBuilder.build()));
        }
    }
}
