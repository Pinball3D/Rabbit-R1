.class public interface abstract Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onKeyStatusChange(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLjava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation
.end method
