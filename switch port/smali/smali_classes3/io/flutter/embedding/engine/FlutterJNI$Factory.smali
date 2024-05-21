.class public Lio/flutter/embedding/engine/FlutterJNI$Factory;
.super Ljava/lang/Object;
.source "FlutterJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;
    .locals 0

    .line 127
    new-instance p0, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    return-object p0
.end method
