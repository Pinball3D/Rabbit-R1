.class final Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final score:I

.field public final style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILandroidx/media3/extractor/text/webvtt/WebvttCssStyle;)V
    .locals 0

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    iput-object p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;)I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    .line 921
    iget p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 909
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->compareTo(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;)I

    move-result p0

    return p0
.end method
