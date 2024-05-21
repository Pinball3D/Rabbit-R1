.class public final Landroidx/media3/extractor/metadata/emsg/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID3_FORMAT:Landroidx/media3/common/Format;

.field public static final ID3_SCHEME_ID_AOM:Ljava/lang/String; = "https://aomedia.org/emsg/ID3"

.field private static final ID3_SCHEME_ID_APPLE:Ljava/lang/String; = "https://developer.apple.com/streaming/emsg-id3"

.field private static final SCTE35_FORMAT:Landroidx/media3/common/Format;

.field public static final SCTE35_SCHEME_ID:Ljava/lang/String; = "urn:scte:scte35:2014:bin"


# instance fields
.field public final durationMs:J

.field private hashCode:I

.field public final id:J

.field public final messageData:[B

.field public final schemeIdUri:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/id3"

    .line 55
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->ID3_FORMAT:Landroidx/media3/common/Format;

    .line 56
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-scte35"

    .line 57
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->SCTE35_FORMAT:Landroidx/media3/common/Format;

    .line 179
    new-instance v0, Landroidx/media3/extractor/metadata/emsg/EventMessage$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/emsg/EventMessage$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    iput-wide p5, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    iput-object p7, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    .line 144
    iget-wide v4, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    iget-wide v4, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 146
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 147
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    iget-object p1, p1, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    .line 148
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getWrappedMetadataBytes()[B
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroidx/media3/extractor/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Landroidx/media3/common/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWrappedMetadataFormat()Landroidx/media3/common/Format;
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "https://developer.apple.com/streaming/emsg-id3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "https://aomedia.org/emsg/ID3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "urn:scte:scte35:2014:bin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->ID3_FORMAT:Landroidx/media3/common/Format;

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->SCTE35_FORMAT:Landroidx/media3/common/Format;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x578730ab -> :sswitch_2
        -0x2f712a89 -> :sswitch_1
        0x4db418c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    .line 129
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->hashCode:I

    :cond_2
    iget p0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->hashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EMSG: scheme="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 173
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->id:J

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    .line 176
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
