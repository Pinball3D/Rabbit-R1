.class final Landroidx/compose/foundation/FocusableKt$focusGroup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt;->focusGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/FocusableKt$focusGroup$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/FocusableKt$focusGroup$1;

    invoke-direct {v0}, Landroidx/compose/foundation/FocusableKt$focusGroup$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/FocusableKt$focusGroup$1;->INSTANCE:Landroidx/compose/foundation/FocusableKt$focusGroup$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Landroidx/compose/ui/focus/FocusProperties;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusGroup$1;->invoke(Landroidx/compose/ui/focus/FocusProperties;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 0

    const-string p0, "$this$focusProperties"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 108
    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusProperties;->setCanFocus(Z)V

    return-void
.end method
