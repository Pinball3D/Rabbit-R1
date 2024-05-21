.class public Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;
.super Ljava/lang/Object;
.source "PlayerConnect.java"


# instance fields
.field private debugEnabled:Z

.field private storage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStorage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;->storage:Ljava/lang/String;

    return-object p0
.end method

.method public isDebugEnabled()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;->debugEnabled:Z

    return p0
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;->debugEnabled:Z

    return-void
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/webrtc/PlayerConnect;->storage:Ljava/lang/String;

    return-void
.end method
