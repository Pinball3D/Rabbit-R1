.class Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->ensureInitialized(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 3743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 3751
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4200(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    return-void
.end method

.method public onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 3746
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4200(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    return-void
.end method
