.class public Lio/flutter/plugin/common/ErrorLogResult;
.super Ljava/lang/Object;
.source "ErrorLogResult.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# instance fields
.field private level:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    sget v0, Lio/flutter/Log;->WARN:I

    invoke-direct {p0, p1, v0}, Lio/flutter/plugin/common/ErrorLogResult;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/common/ErrorLogResult;->tag:Ljava/lang/String;

    iput p2, p0, Lio/flutter/plugin/common/ErrorLogResult;->level:I

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " details: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget p3, p0, Lio/flutter/plugin/common/ErrorLogResult;->level:I

    .line 34
    sget v0, Lio/flutter/Log;->WARN:I

    if-ge p3, v0, :cond_1

    goto :goto_1

    :cond_1
    iget p3, p0, Lio/flutter/plugin/common/ErrorLogResult;->level:I

    iget-object p0, p0, Lio/flutter/plugin/common/ErrorLogResult;->tag:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lio/flutter/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public notImplemented()V
    .locals 2

    iget v0, p0, Lio/flutter/plugin/common/ErrorLogResult;->level:I

    .line 41
    sget v1, Lio/flutter/Log;->WARN:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/flutter/plugin/common/ErrorLogResult;->level:I

    iget-object p0, p0, Lio/flutter/plugin/common/ErrorLogResult;->tag:Ljava/lang/String;

    const-string v1, "method not implemented"

    .line 42
    invoke-static {v0, p0, v1}, Lio/flutter/Log;->println(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
