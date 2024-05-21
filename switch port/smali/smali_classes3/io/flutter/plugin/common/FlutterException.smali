.class public Lio/flutter/plugin/common/FlutterException;
.super Ljava/lang/RuntimeException;
.source "FlutterException.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterException#"


# instance fields
.field public final code:Ljava/lang/String;

.field public final details:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/flutter/plugin/common/FlutterException;->code:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/plugin/common/FlutterException;->details:Ljava/lang/Object;

    return-void
.end method
