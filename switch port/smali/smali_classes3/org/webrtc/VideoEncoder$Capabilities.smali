.class public Lorg/webrtc/VideoEncoder$Capabilities;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# instance fields
.field public final lossNotification:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/webrtc/VideoEncoder$Capabilities;->lossNotification:Z

    return-void
.end method
