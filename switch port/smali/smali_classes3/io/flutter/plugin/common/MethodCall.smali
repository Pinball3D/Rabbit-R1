.class public final Lio/flutter/plugin/common/MethodCall;
.super Ljava/lang/Object;
.source "MethodCall.java"


# instance fields
.field public final arguments:Ljava/lang/Object;

.field public final method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public argument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 72
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 73
    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 74
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public arguments()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    return-object p0
.end method

.method public hasArgument(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 95
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 96
    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 97
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
