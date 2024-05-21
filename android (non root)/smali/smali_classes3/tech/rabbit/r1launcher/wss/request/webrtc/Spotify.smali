.class public Ltech/rabbit/r1launcher/wss/request/webrtc/Spotify;
.super Ljava/lang/Object;
.source "Spotify.java"


# instance fields
.field private playerConnect:Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayerConnect()Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/webrtc/Spotify;->playerConnect:Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;

    return-object p0
.end method

.method public setPlayerConnect(Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/webrtc/Spotify;->playerConnect:Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;

    return-void
.end method
