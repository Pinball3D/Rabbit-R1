.class public final Lio/flutter/plugin/common/StringCodec;
.super Ljava/lang/Object;
.source "StringCodec.java"

# interfaces
.implements Lio/flutter/plugin/common/MessageCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugin/common/MessageCodec<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugin/common/StringCodec;

.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF8"

    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/flutter/plugin/common/StringCodec;->UTF8:Ljava/nio/charset/Charset;

    .line 20
    new-instance v0, Lio/flutter/plugin/common/StringCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StringCodec;-><init>()V

    sput-object v0, Lio/flutter/plugin/common/StringCodec;->INSTANCE:Lio/flutter/plugin/common/StringCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/StringCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    goto :goto_0

    .line 51
    :cond_1
    new-array v0, p0, [B

    .line 52
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 55
    :goto_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lio/flutter/plugin/common/StringCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, p1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public bridge synthetic encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/StringCodec;->encodeMessage(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public encodeMessage(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lio/flutter/plugin/common/StringCodec;->UTF8:Ljava/nio/charset/Charset;

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 32
    array-length p1, p0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method
