.class public final Landroidx/compose/ui/modifier/EmptyMap;
.super Landroidx/compose/ui/modifier/ModifierLocalMap;
.source "ModifierLocalModifierNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0001\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0090\u0002\u00a2\u0006\u0002\u0008\u0007J&\u0010\u0008\u001a\u0004\u0018\u0001H\t\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0006H\u0090\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ,\u0010\u000c\u001a\u00020\r\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u00062\u0006\u0010\u000e\u001a\u0002H\tH\u0090\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/modifier/EmptyMap;",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
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
        "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)Ljava/lang/Void;",
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
.field public static final INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/modifier/EmptyMap;

    invoke-direct {v0}, Landroidx/compose/ui/modifier/EmptyMap;-><init>()V

    sput-object v0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Landroidx/compose/ui/modifier/ModifierLocalMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)Z"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public get$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ""

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;TT;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ""

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/modifier/EmptyMap;->set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
