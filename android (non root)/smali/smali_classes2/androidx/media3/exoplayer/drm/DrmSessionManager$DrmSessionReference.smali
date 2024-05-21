.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrmSessionReference"
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    return-void
.end method

.method public static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
