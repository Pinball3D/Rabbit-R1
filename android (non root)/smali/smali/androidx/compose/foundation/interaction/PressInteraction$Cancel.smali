.class public final Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
.super Ljava/lang/Object;
.source "PressInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/PressInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/interaction/PressInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/interaction/PressInteraction$Cancel;",
        "Landroidx/compose/foundation/interaction/PressInteraction;",
        "press",
        "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V",
        "getPress",
        "()Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final press:Landroidx/compose/foundation/interaction/PressInteraction$Press;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 1

    const-string v0, "press"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method


# virtual methods
.method public final getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object p0
.end method
