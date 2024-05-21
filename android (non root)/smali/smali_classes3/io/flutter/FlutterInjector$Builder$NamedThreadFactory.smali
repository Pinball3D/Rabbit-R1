.class Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;
.super Ljava/lang/Object;
.source "FlutterInjector.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/FlutterInjector$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamedThreadFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/FlutterInjector$Builder;

.field private threadId:I


# direct methods
.method private constructor <init>(Lio/flutter/FlutterInjector$Builder;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;->this$0:Lio/flutter/FlutterInjector$Builder;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;->threadId:I

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/FlutterInjector$Builder;Lio/flutter/FlutterInjector$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;-><init>(Lio/flutter/FlutterInjector$Builder;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "flutter-worker-"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;->threadId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;->threadId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
