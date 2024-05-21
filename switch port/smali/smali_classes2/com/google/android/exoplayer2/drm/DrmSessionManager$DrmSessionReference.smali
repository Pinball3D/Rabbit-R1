.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrmSessionReference"
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    return-void
.end method

.method public static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
