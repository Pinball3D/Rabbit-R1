.class public final Ltech/rabbit/r1launcher/initstep/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/utils/Constants;",
        "",
        "()V",
        "KEY_CODE_SLIDE_DOWN",
        "",
        "KEY_CODE_SLIDE_UP",
        "isSideButtonKeyCode",
        "",
        "keyCode",
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
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

.field public static final KEY_CODE_SLIDE_DOWN:I = 0x14

.field public static final KEY_CODE_SLIDE_UP:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/initstep/utils/Constants;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSideButtonKeyCode(I)Z
    .locals 0

    const/16 p0, 0x50

    if-eq p0, p1, :cond_1

    const/16 p0, 0x1a

    if-eq p0, p1, :cond_1

    const/16 p0, 0x18

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
