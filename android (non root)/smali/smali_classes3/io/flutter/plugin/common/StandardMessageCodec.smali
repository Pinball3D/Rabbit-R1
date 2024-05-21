.class public Lio/flutter/plugin/common/StandardMessageCodec;
.super Ljava/lang/Object;
.source "StandardMessageCodec.java"

# interfaces
.implements Lio/flutter/plugin/common/MessageCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugin/common/MessageCodec<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final BIGINT:B = 0x5t

.field private static final BYTE_ARRAY:B = 0x8t

.field private static final DOUBLE:B = 0x6t

.field private static final DOUBLE_ARRAY:B = 0xbt

.field private static final FALSE:B = 0x2t

.field private static final FLOAT_ARRAY:B = 0xet

.field public static final INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

.field private static final INT:B = 0x3t

.field private static final INT_ARRAY:B = 0x9t

.field private static final LIST:B = 0xct

.field private static final LITTLE_ENDIAN:Z

.field private static final LONG:B = 0x4t

.field private static final LONG_ARRAY:B = 0xat

.field private static final MAP:B = 0xdt

.field private static final NULL:B = 0x0t

.field private static final STRING:B = 0x7t

.field private static final TAG:Ljava/lang/String; = "StandardMessageCodec#"

.field private static final TRUE:B = 0x1t

.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    sput-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    const-string v0, "UTF8"

    .line 97
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final readAlignment(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 327
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method protected static final readBytes(Ljava/nio/ByteBuffer;)[B
    .locals 1

    .line 319
    invoke-static {p0}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 320
    new-array v0, v0, [B

    .line 321
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected static final readSize(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 303
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfe

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 310
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    return p0

    .line 312
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    .line 304
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message corrupted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static final writeAlignment(Ljava/io/ByteArrayOutputStream;I)V
    .locals 4

    .line 205
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sub-int v3, p1, v0

    if-ge v2, v3, :cond_0

    .line 208
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static final writeBytes(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 2

    .line 195
    array-length v0, p1

    invoke-static {p0, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v0, 0x0

    .line 196
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method protected static final writeChar(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    sget-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    .line 137
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x8

    .line 139
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method protected static final writeDouble(Ljava/io/ByteArrayOutputStream;D)V
    .locals 0

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeLong(Ljava/io/ByteArrayOutputStream;J)V

    return-void
.end method

.method protected static final writeFloat(Ljava/io/ByteArrayOutputStream;F)V
    .locals 0

    .line 184
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    return-void
.end method

.method protected static final writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    sget-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    .line 148
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    .line 149
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    .line 150
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x18

    .line 152
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    .line 153
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    .line 154
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method protected static final writeLong(Ljava/io/ByteArrayOutputStream;J)V
    .locals 9

    sget-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x20

    const/16 v5, 0x28

    const/16 v6, 0x30

    const/16 v7, 0x38

    if-eqz v0, :cond_0

    long-to-int v0, p1

    int-to-byte v0, v0

    .line 162
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 163
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 164
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 165
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 166
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 167
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 168
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long/2addr p1, v7

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 169
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    ushr-long v7, p1, v7

    long-to-int v0, v7

    int-to-byte v0, v0

    .line 171
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v6, p1, v6

    long-to-int v0, v6

    int-to-byte v0, v0

    .line 172
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v5, p1, v5

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 173
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v4, p1, v4

    long-to-int v0, v4

    int-to-byte v0, v0

    .line 174
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v3, p1, v3

    long-to-int v0, v3

    int-to-byte v0, v0

    .line 175
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v2, p1, v2

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 176
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 177
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 178
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method protected static final writeSize(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    const/16 v0, 0xfe

    if-ge p1, v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const v1, 0xffff

    if-gt p1, v1, :cond_1

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    invoke-static {p0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeChar(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    invoke-static {p0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 91
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message corrupted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;-><init>()V

    .line 76
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;->size()I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 78
    invoke-virtual {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;->buffer()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected final readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    .line 336
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 340
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message corrupted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    .line 450
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message corrupted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 441
    :pswitch_0
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 442
    new-array p1, p0, [F

    .line 443
    invoke-static {p2, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 444
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 446
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 431
    :pswitch_1
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 434
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :pswitch_2
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 422
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p1, :cond_0

    .line 424
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move-object p1, v1

    goto/16 :goto_2

    .line 411
    :pswitch_3
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 412
    new-array p1, p0, [D

    .line 413
    invoke-static {p2, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 414
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    .line 416
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    mul-int/2addr p0, v2

    add-int/2addr v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 401
    :pswitch_4
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 402
    new-array p1, p0, [J

    .line 403
    invoke-static {p2, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 404
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 406
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    mul-int/2addr p0, v2

    add-int/2addr v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 391
    :pswitch_5
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 392
    new-array p1, p0, [I

    .line 393
    invoke-static {p2, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 394
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 396
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 386
    :pswitch_6
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    goto :goto_2

    .line 380
    :pswitch_7
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 381
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 375
    :pswitch_8
    invoke-static {p2, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 376
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_2

    .line 370
    :pswitch_9
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 371
    new-instance p1, Ljava/math/BigInteger;

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 p0, 0x10

    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 366
    :pswitch_a
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    .line 363
    :pswitch_b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 360
    :pswitch_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :pswitch_d
    const/4 p0, 0x1

    .line 357
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :pswitch_e
    const/4 p1, 0x0

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    .line 223
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 224
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_a

    .line 225
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_9

    .line 226
    instance-of p0, p2, Ljava/lang/Integer;

    if-nez p0, :cond_8

    instance-of p0, p2, Ljava/lang/Short;

    if-nez p0, :cond_8

    instance-of p0, p2, Ljava/lang/Byte;

    if-eqz p0, :cond_3

    goto :goto_2

    .line 229
    :cond_3
    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_4

    .line 230
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 231
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeLong(Ljava/io/ByteArrayOutputStream;J)V

    goto/16 :goto_a

    .line 232
    :cond_4
    instance-of p0, p2, Ljava/lang/Float;

    if-nez p0, :cond_7

    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_5

    goto :goto_1

    .line 236
    :cond_5
    instance-of p0, p2, Ljava/math/BigInteger;

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    .line 237
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    check-cast p2, Ljava/math/BigInteger;

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_a

    .line 240
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported Number type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    const/4 p0, 0x6

    .line 233
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 235
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeDouble(Ljava/io/ByteArrayOutputStream;D)V

    goto/16 :goto_a

    :cond_8
    :goto_2
    const/4 p0, 0x3

    .line 227
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    goto/16 :goto_a

    .line 242
    :cond_9
    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    const/4 p0, 0x7

    .line 243
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 244
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_a

    .line 245
    :cond_a
    instance-of v1, p2, [B

    if-eqz v1, :cond_b

    .line 246
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    check-cast p2, [B

    invoke-static {p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_a

    .line 248
    :cond_b
    instance-of v1, p2, [I

    if-eqz v1, :cond_c

    const/16 p0, 0x9

    .line 249
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 250
    check-cast p2, [I

    .line 251
    array-length p0, p2

    invoke-static {p1, p0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 252
    invoke-static {p1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 253
    array-length p0, p2

    :goto_3
    if-ge v0, p0, :cond_13

    aget v1, p2, v0

    .line 254
    invoke-static {p1, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 256
    :cond_c
    instance-of v1, p2, [J

    if-eqz v1, :cond_d

    const/16 p0, 0xa

    .line 257
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    check-cast p2, [J

    .line 259
    array-length p0, p2

    invoke-static {p1, p0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 260
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 261
    array-length p0, p2

    :goto_4
    if-ge v0, p0, :cond_13

    aget-wide v1, p2, v0

    .line 262
    invoke-static {p1, v1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeLong(Ljava/io/ByteArrayOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 264
    :cond_d
    instance-of v1, p2, [D

    if-eqz v1, :cond_e

    const/16 p0, 0xb

    .line 265
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 266
    check-cast p2, [D

    .line 267
    array-length p0, p2

    invoke-static {p1, p0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 268
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 269
    array-length p0, p2

    :goto_5
    if-ge v0, p0, :cond_13

    aget-wide v1, p2, v0

    .line 270
    invoke-static {p1, v1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeDouble(Ljava/io/ByteArrayOutputStream;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 272
    :cond_e
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_f

    const/16 v0, 0xc

    .line 273
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    check-cast p2, Ljava/util/List;

    .line 275
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 276
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 277
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_6

    .line 279
    :cond_f
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_10

    const/16 v0, 0xd

    .line 280
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 281
    check-cast p2, Ljava/util/Map;

    .line 282
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 283
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_7

    .line 287
    :cond_10
    instance-of p0, p2, [F

    if-eqz p0, :cond_11

    const/16 p0, 0xe

    .line 288
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 289
    check-cast p2, [F

    .line 290
    array-length p0, p2

    invoke-static {p1, p0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 291
    invoke-static {p1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 292
    array-length p0, p2

    :goto_8
    if-ge v0, p0, :cond_13

    aget v1, p2, v0

    .line 293
    invoke-static {p1, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeFloat(Ljava/io/ByteArrayOutputStream;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 296
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported value: \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' of type \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 297
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_12
    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_13
    :goto_a
    return-void
.end method
