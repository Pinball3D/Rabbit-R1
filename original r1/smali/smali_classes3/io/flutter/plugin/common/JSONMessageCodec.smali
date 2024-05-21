.class public final Lio/flutter/plugin/common/JSONMessageCodec;
.super Ljava/lang/Object;
.source "JSONMessageCodec.java"

# interfaces
.implements Lio/flutter/plugin/common/MessageCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugin/common/MessageCodec<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/JSONMessageCodec;-><init>()V

    sput-object v0, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    const-string p0, "Invalid JSON"

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    :try_start_0
    sget-object v0, Lio/flutter/plugin/common/StringCodec;->INSTANCE:Lio/flutter/plugin/common/StringCodec;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/StringCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONTokener;->more()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    invoke-static {p1}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 38
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 39
    sget-object p1, Lio/flutter/plugin/common/StringCodec;->INSTANCE:Lio/flutter/plugin/common/StringCodec;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/StringCodec;->encodeMessage(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    sget-object p1, Lio/flutter/plugin/common/StringCodec;->INSTANCE:Lio/flutter/plugin/common/StringCodec;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/StringCodec;->encodeMessage(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
