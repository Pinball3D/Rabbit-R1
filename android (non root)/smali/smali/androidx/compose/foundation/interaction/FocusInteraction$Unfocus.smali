.class public final Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
.super Ljava/lang/Object;
.source "FocusInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/FocusInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/interaction/FocusInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unfocus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;",
        "Landroidx/compose/foundation/interaction/FocusInteraction;",
        "focus",
        "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
        "(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V",
        "getFocus",
        "()Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
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
.field private final focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V
    .locals 1

    const-string v0, "focus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    return-void
.end method


# virtual methods
.method public final getFocus()Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    return-object p0
.end method
