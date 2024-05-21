.class public Ltech/rabbit/r1launcher/wss/respon/global_initialization_responses/indicating_sign_in_success/Initialize;
.super Ljava/lang/Object;
.source "Initialize.java"


# instance fields
.field private clientIp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientIp"
    .end annotation
.end field

.field private currentTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currentTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
