.class public final Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackIdGenerator"
.end annotation


# static fields
.field private static final ID_UNSET:I = -0x80000000


# instance fields
.field private final firstTrackId:I

.field private formatId:Ljava/lang/String;

.field private final formatIdPrefix:Ljava/lang/String;

.field private trackId:I

.field private final trackIdIncrement:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 128
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    iput p3, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    iput v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method

.method private maybeThrowUninitializedError()V
    .locals 1

    iget p0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    return-void

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateNewId() must be called before retrieving ids."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateNewId()V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method

.method public getFormatId()Ljava/lang/String;
    .locals 0

    .line 168
    invoke-direct {p0}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object p0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackId()I
    .locals 0

    .line 155
    invoke-direct {p0}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget p0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    return p0
.end method
