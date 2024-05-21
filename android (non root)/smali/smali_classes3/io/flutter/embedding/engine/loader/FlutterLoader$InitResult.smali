.class Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
.super Ljava/lang/Object;
.source "FlutterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitResult"
.end annotation


# instance fields
.field final appStoragePath:Ljava/lang/String;

.field final dataDirPath:Ljava/lang/String;

.field final engineCachesPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->appStoragePath:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->engineCachesPath:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->dataDirPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
