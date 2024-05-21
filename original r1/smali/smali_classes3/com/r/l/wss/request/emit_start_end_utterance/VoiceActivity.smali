.class public final Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;
.super Ljava/lang/Object;
.source "VoiceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;",
        "",
        "()V",
        "imageBase64",
        "",
        "getImageBase64",
        "()Ljava/lang/String;",
        "setImageBase64",
        "(Ljava/lang/String;)V",
        "state",
        "getState",
        "setState",
        "Companion",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity$Companion;

.field public static final inactive:Ljava/lang/String; = "inactive"

.field public static final press:Ljava/lang/String; = "pttButtonPressed"

.field public static final release:Ljava/lang/String; = "pttButtonReleased"


# instance fields
.field private imageBase64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageBase64"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->Companion:Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getImageBase64()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->imageBase64:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->state:Ljava/lang/String;

    return-object p0
.end method

.method public final setImageBase64(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->imageBase64:Ljava/lang/String;

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->state:Ljava/lang/String;

    return-void
.end method
