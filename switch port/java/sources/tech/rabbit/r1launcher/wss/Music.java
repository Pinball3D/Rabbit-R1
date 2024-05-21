package tech.rabbit.r1launcher.wss;

import io.sentry.protocol.Request;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RabbitEngine.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003JG\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001e"}, d2 = {"Ltech/rabbit/r1launcher/wss/Music;", "", "name", "", "album", "artist", "cover", Request.JsonKeys.URL, "lyrics", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAlbum", "()Ljava/lang/String;", "getArtist", "getCover", "getLyrics", "getName", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class Music {
    public static final int $stable = 0;
    private final String album;
    private final String artist;
    private final String cover;
    private final String lyrics;
    private final String name;
    private final String url;

    public static /* synthetic */ Music copy$default(Music music, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = music.name;
        }
        if ((i & 2) != 0) {
            str2 = music.album;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = music.artist;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = music.cover;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            str5 = music.url;
        }
        String str10 = str5;
        if ((i & 32) != 0) {
            str6 = music.lyrics;
        }
        return music.copy(str, str7, str8, str9, str10, str6);
    }

    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component2, reason: from getter */
    public final String getAlbum() {
        return this.album;
    }

    /* renamed from: component3, reason: from getter */
    public final String getArtist() {
        return this.artist;
    }

    /* renamed from: component4, reason: from getter */
    public final String getCover() {
        return this.cover;
    }

    /* renamed from: component5, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* renamed from: component6, reason: from getter */
    public final String getLyrics() {
        return this.lyrics;
    }

    public final Music copy(String name, String album, String artist, String cover, String url, String lyrics) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(album, "album");
        Intrinsics.checkNotNullParameter(artist, "artist");
        Intrinsics.checkNotNullParameter(cover, "cover");
        Intrinsics.checkNotNullParameter(url, "url");
        return new Music(name, album, artist, cover, url, lyrics);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Music)) {
            return false;
        }
        Music music = (Music) other;
        return Intrinsics.areEqual(this.name, music.name) && Intrinsics.areEqual(this.album, music.album) && Intrinsics.areEqual(this.artist, music.artist) && Intrinsics.areEqual(this.cover, music.cover) && Intrinsics.areEqual(this.url, music.url) && Intrinsics.areEqual(this.lyrics, music.lyrics);
    }

    public final String getAlbum() {
        return this.album;
    }

    public final String getArtist() {
        return this.artist;
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getLyrics() {
        return this.lyrics;
    }

    public final String getName() {
        return this.name;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((((((((this.name.hashCode() * 31) + this.album.hashCode()) * 31) + this.artist.hashCode()) * 31) + this.cover.hashCode()) * 31) + this.url.hashCode()) * 31;
        String str = this.lyrics;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "Music(name=" + this.name + ", album=" + this.album + ", artist=" + this.artist + ", cover=" + this.cover + ", url=" + this.url + ", lyrics=" + this.lyrics + ')';
    }

    public Music(String name, String album, String artist, String cover, String url, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(album, "album");
        Intrinsics.checkNotNullParameter(artist, "artist");
        Intrinsics.checkNotNullParameter(cover, "cover");
        Intrinsics.checkNotNullParameter(url, "url");
        this.name = name;
        this.album = album;
        this.artist = artist;
        this.cover = cover;
        this.url = url;
        this.lyrics = str;
    }
}
