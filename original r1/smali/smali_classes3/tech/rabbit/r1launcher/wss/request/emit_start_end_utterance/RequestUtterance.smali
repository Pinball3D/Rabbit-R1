.class public Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;
.super Ljava/lang/Object;
.source "RequestUtterance.java"


# instance fields
.field private kernel:Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kernel"
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
.method public getKernel()Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;->kernel:Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;

    return-object p0
.end method

.method public setKernel(Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;->kernel:Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;

    return-void
.end method
