.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    check-cast p0, Lcom/google/android/exoplayer2/LoadControl;

    return-object p0
.end method
