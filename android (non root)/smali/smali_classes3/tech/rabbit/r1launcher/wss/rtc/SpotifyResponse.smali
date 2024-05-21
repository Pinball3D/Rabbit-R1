.class public Ltech/rabbit/r1launcher/wss/rtc/SpotifyResponse;
.super Ljava/lang/Object;
.source "SpotifyResponse.java"


# instance fields
.field private spotify:Ltech/rabbit/r1launcher/wss/rtc/SpotifyData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spotify"
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
.method public getSpotify()Ltech/rabbit/r1launcher/wss/rtc/SpotifyData;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/SpotifyResponse;->spotify:Ltech/rabbit/r1launcher/wss/rtc/SpotifyData;

    return-object p0
.end method
