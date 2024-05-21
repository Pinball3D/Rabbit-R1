.class public final Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
.super Lcom/google/android/exoplayer2/ParserException;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedFormatException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method
