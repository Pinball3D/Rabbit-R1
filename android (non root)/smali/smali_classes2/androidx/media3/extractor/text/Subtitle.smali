.class public interface abstract Landroidx/media3/extractor/text/Subtitle;
.super Ljava/lang/Object;
.source "Subtitle.java"


# virtual methods
.method public abstract getCues(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventTime(I)J
.end method

.method public abstract getEventTimeCount()I
.end method

.method public abstract getNextEventTimeIndex(J)I
.end method
