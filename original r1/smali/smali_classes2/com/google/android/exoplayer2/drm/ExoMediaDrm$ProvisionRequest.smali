.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionRequest"
.end annotation


# instance fields
.field private final data:[B

.field private final defaultUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    return-object p0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-object p0
.end method
