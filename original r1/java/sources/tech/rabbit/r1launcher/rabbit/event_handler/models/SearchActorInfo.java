package tech.rabbit.r1launcher.rabbit.event_handler.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchActor.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchActorInfo;", "", "name", "", "brief", "photoUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBrief", "()Ljava/lang/String;", "getName", "getPhotoUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SearchActorInfo {
    public static final int $stable = 0;
    private final String brief;
    private final String name;
    private final String photoUrl;

    public static /* synthetic */ SearchActorInfo copy$default(SearchActorInfo searchActorInfo, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = searchActorInfo.name;
        }
        if ((i & 2) != 0) {
            str2 = searchActorInfo.brief;
        }
        if ((i & 4) != 0) {
            str3 = searchActorInfo.photoUrl;
        }
        return searchActorInfo.copy(str, str2, str3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component2, reason: from getter */
    public final String getBrief() {
        return this.brief;
    }

    /* renamed from: component3, reason: from getter */
    public final String getPhotoUrl() {
        return this.photoUrl;
    }

    public final SearchActorInfo copy(String name, String brief, String photoUrl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(brief, "brief");
        Intrinsics.checkNotNullParameter(photoUrl, "photoUrl");
        return new SearchActorInfo(name, brief, photoUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchActorInfo)) {
            return false;
        }
        SearchActorInfo searchActorInfo = (SearchActorInfo) other;
        return Intrinsics.areEqual(this.name, searchActorInfo.name) && Intrinsics.areEqual(this.brief, searchActorInfo.brief) && Intrinsics.areEqual(this.photoUrl, searchActorInfo.photoUrl);
    }

    public final String getBrief() {
        return this.brief;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPhotoUrl() {
        return this.photoUrl;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.brief.hashCode()) * 31) + this.photoUrl.hashCode();
    }

    public String toString() {
        return "SearchActorInfo(name=" + this.name + ", brief=" + this.brief + ", photoUrl=" + this.photoUrl + ')';
    }

    public SearchActorInfo(String name, String brief, String photoUrl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(brief, "brief");
        Intrinsics.checkNotNullParameter(photoUrl, "photoUrl");
        this.name = name;
        this.brief = brief;
        this.photoUrl = photoUrl;
    }
}
