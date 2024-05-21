.class public final Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;
.super Ljava/lang/Object;
.source "TTSPlayer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;",
        "",
        "()V",
        "allMuted",
        "",
        "audioMuted",
        "state",
        "getState",
        "()Ljava/lang/String;",
        "setState",
        "(Ljava/lang/String;)V",
        "textMuted",
        "unmuted",
        "updateState",
        "",
        "app_productionEnvRelease"
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
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;

.field public static final allMuted:Ljava/lang/String; = "allMuted"

.field public static final audioMuted:Ljava/lang/String; = "audioMuted"

.field private static state:Ljava/lang/String; = null

.field public static final textMuted:Ljava/lang/String; = "textMuted"

.field public static final unmuted:Ljava/lang/String; = "unmuted"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;

    const-string v0, "unmuted"

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    return-object p0
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    return-void
.end method

.method public final updateState(Ljava/lang/String;)V
    .locals 1

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "unmuted"

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "allMuted"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sput-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    const-string p0, "audioMuted"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sput-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    const-string p0, "textMuted"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sput-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    goto :goto_1

    :goto_0
    sput-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->state:Ljava/lang/String;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3ed50fc2 -> :sswitch_3
        -0x10dae58e -> :sswitch_2
        0x5b5c5b35 -> :sswitch_1
        0x6a32644a -> :sswitch_0
    .end sparse-switch
.end method
