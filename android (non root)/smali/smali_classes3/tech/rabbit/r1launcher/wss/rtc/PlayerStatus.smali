.class public Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;
.super Ljava/lang/Object;
.source "PlayerStatus.java"


# instance fields
.field private albumImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumImageUrl"
    .end annotation
.end field

.field private artistName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistName"
    .end annotation
.end field

.field private durationSeconds:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "durationSeconds"
    .end annotation
.end field

.field private matchingStartPlayingTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "matchingStartPlayingTime"
    .end annotation
.end field

.field private playedSeconds:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playedSeconds"
    .end annotation
.end field

.field private playing:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playing"
    .end annotation
.end field

.field private repeatMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeatMode"
    .end annotation
.end field

.field private shuffle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shuffle"
    .end annotation
.end field

.field private trackName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackName"
    .end annotation
.end field

.field private trackSpotifyUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackSpotifyUri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->albumImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->artistName:Ljava/lang/String;

    return-object p0
.end method

.method public getDurationSeconds()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->durationSeconds:I

    return p0
.end method

.method public getMatchingStartPlayingTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->matchingStartPlayingTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayedSeconds()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->playedSeconds:I

    return p0
.end method

.method public getRepeatMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->repeatMode:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->trackName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackSpotifyUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->trackSpotifyUri:Ljava/lang/String;

    return-object p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->playing:Z

    return p0
.end method

.method public isShuffle()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->shuffle:Z

    return p0
.end method

.method public setAlbumImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->albumImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->artistName:Ljava/lang/String;

    return-void
.end method

.method public setDurationSeconds(I)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->durationSeconds:I

    return-void
.end method

.method public setMatchingStartPlayingTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->matchingStartPlayingTime:Ljava/lang/String;

    return-void
.end method

.method public setPlayedSeconds(I)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->playedSeconds:I

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->playing:Z

    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->repeatMode:Ljava/lang/String;

    return-void
.end method

.method public setShuffle(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->shuffle:Z

    return-void
.end method

.method public setTrackName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->trackName:Ljava/lang/String;

    return-void
.end method

.method public setTrackSpotifyUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->trackSpotifyUri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MusicName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->getTrackName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
