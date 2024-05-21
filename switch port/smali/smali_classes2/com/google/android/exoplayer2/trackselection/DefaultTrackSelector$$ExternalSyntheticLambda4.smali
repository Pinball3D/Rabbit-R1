.class public final synthetic Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->$r8$lambda$PKRIg-Mnu5wiJ8Ai8vqpW69PiNI(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    return p0
.end method
