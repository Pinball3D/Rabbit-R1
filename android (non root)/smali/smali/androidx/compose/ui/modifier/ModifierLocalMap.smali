.class public abstract Landroidx/compose/ui/modifier/ModifierLocalMap;
.super Ljava/lang/Object;
.source "ModifierLocalModifierNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u00a0\u0002\u00a2\u0006\u0002\u0008\u0007J&\u0010\u0008\u001a\u0004\u0018\u0001H\t\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0006H\u00a0\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ,\u0010\u000c\u001a\u00020\r\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u00062\u0006\u0010\u000e\u001a\u0002H\tH\u00a0\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u0082\u0001\u0004\u0011\u0012\u0013\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "",
        "()V",
        "contains",
        "",
        "key",
        "Landroidx/compose/ui/modifier/ModifierLocal;",
        "contains$ui_release",
        "get",
        "T",
        "get$ui_release",
        "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;",
        "set",
        "",
        "value",
        "set$ui_release",
        "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V",
        "Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;",
        "Landroidx/compose/ui/modifier/EmptyMap;",
        "Landroidx/compose/ui/modifier/MultiLocalMap;",
        "Landroidx/compose/ui/modifier/SingleLocalMap;",
        "ui_release"
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/modifier/ModifierLocalMap;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract get$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
