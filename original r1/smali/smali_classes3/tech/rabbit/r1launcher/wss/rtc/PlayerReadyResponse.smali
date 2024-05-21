.class public Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse;
.super Ljava/lang/Object;
.source "PlayerReadyResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;,
        Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;
    }
.end annotation


# instance fields
.field private spotify:Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpotify()Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse;->spotify:Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;

    return-object p0
.end method

.method public setSpotify(Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse;->spotify:Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;

    return-void
.end method
