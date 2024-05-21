.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPlayerEmsgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 1294
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public onDashManifestPublishTimeExpired(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1303
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onDashManifestPublishTimeExpired(J)V

    return-void
.end method

.method public onDashManifestRefreshRequested()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 1298
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onDashManifestRefreshRequested()V

    return-void
.end method
