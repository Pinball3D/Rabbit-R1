.class public Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;
.super Ljava/lang/Object;
.source "PlayerReadyResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spotify"
.end annotation


# instance fields
.field private playerReady:Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayerReady()Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;->playerReady:Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;

    return-object p0
.end method

.method public setPlayerReady(Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$Spotify;->playerReady:Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;

    return-void
.end method
