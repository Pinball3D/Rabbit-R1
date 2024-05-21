.class public final Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation


# instance fields
.field public final descriptorBytes:[B

.field public final dvbSubtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final streamType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;[B)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    return-void
.end method
