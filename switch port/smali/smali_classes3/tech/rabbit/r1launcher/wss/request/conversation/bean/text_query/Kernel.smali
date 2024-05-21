.class public Ltech/rabbit/r1launcher/wss/request/conversation/bean/text_query/Kernel;
.super Ljava/lang/Object;
.source "Kernel.java"


# instance fields
.field private userText:Ltech/rabbit/r1launcher/wss/request/conversation/bean/text_query/UserText;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userText"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserText(Ltech/rabbit/r1launcher/wss/request/conversation/bean/text_query/UserText;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/conversation/bean/text_query/Kernel;->userText:Ltech/rabbit/r1launcher/wss/request/conversation/bean/text_query/UserText;

    return-void
.end method
