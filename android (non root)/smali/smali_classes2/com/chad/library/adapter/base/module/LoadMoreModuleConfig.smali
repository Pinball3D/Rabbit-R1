.class public final Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;
.super Ljava/lang/Object;
.source "LoadMoreModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;",
        "",
        "()V",
        "defLoadMoreView",
        "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "getDefLoadMoreView$annotations",
        "getDefLoadMoreView",
        "()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "setDefLoadMoreView",
        "(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V",
        "com.github.CymChad.brvah"
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
.field public static final INSTANCE:Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;

.field private static defLoadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;-><init>()V

    sput-object v0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->INSTANCE:Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;

    .line 40
    new-instance v0, Lcom/chad/library/adapter/base/loadmore/SimpleLoadMoreView;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/loadmore/SimpleLoadMoreView;-><init>()V

    check-cast v0, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    sput-object v0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->defLoadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
    .locals 1

    sget-object v0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->defLoadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-object v0
.end method

.method public static synthetic getDefLoadMoreView$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setDefLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->defLoadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-void
.end method
