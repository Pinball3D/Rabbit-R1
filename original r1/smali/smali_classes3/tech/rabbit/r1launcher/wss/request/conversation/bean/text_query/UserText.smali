.class public Ltech/rabbit/r1launcher/wss/request/conversation/bean/text_query/UserText;
.super Ljava/lang/Object;
.source "UserText.java"


# instance fields
.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
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
.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/conversation/bean/text_query/UserText;->text:Ljava/lang/String;

    return-void
.end method
