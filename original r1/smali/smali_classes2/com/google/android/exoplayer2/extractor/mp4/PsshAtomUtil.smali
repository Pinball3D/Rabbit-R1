.class public final Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PsshAtomUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[B)[B
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 52
    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x20

    if-eqz p1, :cond_1

    .line 55
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 57
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x70737368    # 3.013775E29f

    .line 59
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    const/high16 v1, 0x1000000

    goto :goto_1

    :cond_2
    move v1, v0

    .line 60
    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 64
    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    array-length p0, p1

    :goto_2
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    .line 66
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 70
    array-length p0, p2

    if-eqz p0, :cond_4

    .line 71
    array-length p0, p2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 74
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static isPsshAtom([B)Z
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    .locals 9

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 157
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 p0, 0x0

    .line 161
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 162
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 163
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v1, v3, :cond_1

    return-object v2

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v3, 0x70737368    # 3.013775E29f

    if-eq v1, v3, :cond_2

    return-object v2

    .line 172
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported pssh version: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PsshAtomUtil"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 177
    :cond_3
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v1, v3, :cond_4

    .line 179
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 180
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 182
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 183
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-eq v3, v5, :cond_5

    return-object v2

    .line 187
    :cond_5
    new-array v2, v3, [B

    .line 188
    invoke-virtual {v0, v2, p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 189
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B)V

    return-object p0
.end method

.method public static parseSchemeSpecificData([BLjava/util/UUID;)[B
    .locals 3

    .line 135
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UUID mismatch. Expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", got: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PsshAtomUtil"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 143
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)[B

    move-result-object p0

    return-object p0
.end method

.method public static parseUuid([B)Ljava/util/UUID;
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static parseVersion([B)I
    .locals 0

    .line 115
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)I

    move-result p0

    return p0
.end method
