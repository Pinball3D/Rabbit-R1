.class Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;
.super Ljava/lang/Object;
.source "QueuingEventSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/QueuingEventSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorEvent"
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field details:Ljava/lang/Object;

.field message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->code:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->message:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->details:Ljava/lang/Object;

    return-void
.end method
