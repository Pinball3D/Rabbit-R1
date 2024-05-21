.class public interface abstract Lcom/google/android/exoplayer2/text/TextOutput;
.super Ljava/lang/Object;
.source "TextOutput.java"


# virtual methods
.method public abstract onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
