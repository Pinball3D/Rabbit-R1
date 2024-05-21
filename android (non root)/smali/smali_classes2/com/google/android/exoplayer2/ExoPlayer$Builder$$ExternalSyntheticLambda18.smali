.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/LoadControl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/LoadControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda18;->f$0:Lcom/google/android/exoplayer2/LoadControl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda18;->f$0:Lcom/google/android/exoplayer2/LoadControl;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setLoadControl$19(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;

    move-result-object p0

    return-object p0
.end method
