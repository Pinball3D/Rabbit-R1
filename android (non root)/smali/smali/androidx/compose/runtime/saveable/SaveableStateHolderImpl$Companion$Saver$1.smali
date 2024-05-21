.class final Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion$Saver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SaveableStateHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Object;",
        ">;>;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a$\u0012\u0004\u0012\u00020\u0002\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00050\u0003\u0018\u00010\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "",
        "",
        "",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "it",
        "Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;",
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
.field public static final INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion$Saver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion$Saver$1;

    invoke-direct {v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion$Saver$1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion$Saver$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion$Saver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion$Saver$1;->invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaverScope;",
            "Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    const-string p0, "$this$Saver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {p2}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->access$saveAll(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
