.class final Landroidx/media3/common/util/NetworkTypeObserver$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/common/util/NetworkTypeObserver;


# direct methods
.method private constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;->this$0:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 212
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;Landroidx/media3/common/util/NetworkTypeObserver$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 216
    invoke-static {p1}, Landroidx/media3/common/util/NetworkTypeObserver;->access$100(Landroid/content/Context;)I

    move-result p2

    .line 217
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;->this$0:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 219
    invoke-static {p1, p0}, Landroidx/media3/common/util/NetworkTypeObserver$Api31;->disambiguate4gAnd5gNsa(Landroid/content/Context;Landroidx/media3/common/util/NetworkTypeObserver;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;->this$0:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 221
    invoke-static {p0, p2}, Landroidx/media3/common/util/NetworkTypeObserver;->access$200(Landroidx/media3/common/util/NetworkTypeObserver;I)V

    :goto_0
    return-void
.end method
