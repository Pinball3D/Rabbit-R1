.class public final Lcom/google/android/exoplayer2/FormatHolder;
.super Ljava/lang/Object;
.source "FormatHolder.java"


# instance fields
.field public drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field public format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
