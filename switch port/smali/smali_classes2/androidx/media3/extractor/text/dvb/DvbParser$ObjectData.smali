.class final Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectData"
.end annotation


# instance fields
.field public final bottomFieldData:[B

.field public final id:I

.field public final nonModifyingColorFlag:Z

.field public final topFieldData:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    iput-boolean p2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    iput-object p3, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    iput-object p4, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    return-void
.end method
