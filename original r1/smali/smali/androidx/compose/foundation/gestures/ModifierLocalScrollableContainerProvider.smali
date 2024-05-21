.class final Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0002X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider;",
        "",
        "()V",
        "key",
        "Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "getKey",
        "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "value",
        "getValue",
        "()Ljava/lang/Boolean;",
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
.field public static final INSTANCE:Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

.field private static final key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->INSTANCE:Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    .line 628
    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getModifierLocalScrollableContainer()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->value:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object p0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 0

    sget-boolean p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->value:Z

    .line 629
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 627
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->getValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
