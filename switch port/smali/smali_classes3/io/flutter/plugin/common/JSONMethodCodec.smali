.class public final Lio/flutter/plugin/common/JSONMethodCodec;
.super Ljava/lang/Object;
.source "JSONMethodCodec.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodCodec;


# static fields
.field public static final INSTANCE:Lio/flutter/plugin/common/JSONMethodCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lio/flutter/plugin/common/JSONMethodCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/JSONMethodCodec;-><init>()V

    sput-object v0, Lio/flutter/plugin/common/JSONMethodCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMethodCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeEnvelope(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 6

    const-string v0, "Invalid envelope: "

    .line 98
    :try_start_0
    sget-object v1, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-virtual {v1, p1}, Lio/flutter/plugin/common/JSONMessageCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    .line 99
    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    .line 100
    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    .line 101
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 102
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/JSONMethodCodec;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 105
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/flutter/plugin/common/JSONMethodCodec;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    .line 107
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/JSONMethodCodec;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 108
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_1

    instance-of v1, v3, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 109
    :cond_1
    new-instance p1, Lio/flutter/plugin/common/FlutterException;

    check-cast v2, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p1, v2, v3, p0}, Lio/flutter/plugin/common/FlutterException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 115
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid JSON"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public decodeMethodCall(Ljava/nio/ByteBuffer;)Lio/flutter/plugin/common/MethodCall;
    .locals 4

    const-string v0, "Invalid method call: "

    .line 47
    :try_start_0
    sget-object v1, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-virtual {v1, p1}, Lio/flutter/plugin/common/JSONMessageCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 49
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "method"

    .line 50
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "args"

    .line 51
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/JSONMethodCodec;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 52
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 53
    new-instance p1, Lio/flutter/plugin/common/MethodCall;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v2, p0}, Lio/flutter/plugin/common/MethodCall;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid JSON"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 72
    sget-object p0, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 75
    invoke-static {p2}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 76
    invoke-static {p3}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/JSONMessageCodec;->encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public encodeErrorEnvelopeWithStacktrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 86
    sget-object p0, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 88
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 89
    invoke-static {p2}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 90
    invoke-static {p3}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 91
    invoke-static {p4}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/JSONMessageCodec;->encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public encodeMethodCall(Lio/flutter/plugin/common/MethodCall;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 34
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "method"

    .line 35
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    .line 36
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {p1}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    sget-object p1, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/JSONMessageCodec;->encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid JSON"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 65
    sget-object p0, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/JSONMessageCodec;->encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
