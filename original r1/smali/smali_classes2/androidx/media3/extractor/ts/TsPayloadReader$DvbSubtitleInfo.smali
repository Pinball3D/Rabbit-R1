.class public final Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DvbSubtitleInfo"
.end annotation


# instance fields
.field public final initializationData:[B

.field public final language:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->type:I

    iput-object p3, p0, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    return-void
.end method
