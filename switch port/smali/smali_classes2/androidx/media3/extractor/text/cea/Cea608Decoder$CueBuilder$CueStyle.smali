.class Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueStyle"
.end annotation


# instance fields
.field public start:I

.field public final style:I

.field public final underline:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    iput-boolean p2, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    iput p3, p0, Landroidx/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    return-void
.end method
