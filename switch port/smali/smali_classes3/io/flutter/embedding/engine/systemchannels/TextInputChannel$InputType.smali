.class public Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;
.super Ljava/lang/Object;
.source "TextInputChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputType"
.end annotation


# instance fields
.field public final isDecimal:Z

.field public final isSigned:Z

.field public final type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;ZZ)V
    .locals 0

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    iput-boolean p2, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isSigned:Z

    iput-boolean p3, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isDecimal:Z

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 697
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    const-string v1, "name"

    .line 698
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    move-result-object v1

    const-string v2, "signed"

    const/4 v3, 0x0

    .line 699
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "decimal"

    .line 700
    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;-><init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;ZZ)V

    return-object v0
.end method
