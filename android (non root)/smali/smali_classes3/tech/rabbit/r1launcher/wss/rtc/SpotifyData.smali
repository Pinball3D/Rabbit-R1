.class public Ltech/rabbit/r1launcher/wss/rtc/SpotifyData;
.super Ljava/lang/Object;
.source "SpotifyData.java"


# instance fields
.field private playerStatus:Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playerStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayerStatus()Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/SpotifyData;->playerStatus:Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;

    return-object p0
.end method
