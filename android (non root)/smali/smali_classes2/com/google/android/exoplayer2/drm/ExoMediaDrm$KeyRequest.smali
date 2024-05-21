.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest$RequestType;
    }
.end annotation


# static fields
.field public static final REQUEST_TYPE_INITIAL:I = 0x0

.field public static final REQUEST_TYPE_NONE:I = 0x3

.field public static final REQUEST_TYPE_RELEASE:I = 0x2

.field public static final REQUEST_TYPE_RENEWAL:I = 0x1

.field public static final REQUEST_TYPE_UNKNOWN:I = -0x80000000

.field public static final REQUEST_TYPE_UPDATE:I = 0x4


# instance fields
.field private final data:[B

.field private final licenseServerUrl:Ljava/lang/String;

.field private final requestType:I


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 277
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;I)V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->data:[B

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->requestType:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->data:[B

    return-object p0
.end method

.method public getLicenseServerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestType()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->requestType:I

    return p0
.end method
