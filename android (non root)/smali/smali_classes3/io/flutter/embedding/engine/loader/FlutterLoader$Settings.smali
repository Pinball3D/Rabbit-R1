.class public Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;
.super Ljava/lang/Object;
.source "FlutterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;->logTag:Ljava/lang/String;

    return-object p0
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;->logTag:Ljava/lang/String;

    return-void
.end method
