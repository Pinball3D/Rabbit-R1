.class public final Landroidx/work/NoOpInputMergerFactory;
.super Landroidx/work/InputMergerFactory;
.source "InputMergerFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/work/NoOpInputMergerFactory;",
        "Landroidx/work/InputMergerFactory;",
        "()V",
        "createInputMerger",
        "",
        "className",
        "",
        "work-runtime_release"
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
.field public static final INSTANCE:Landroidx/work/NoOpInputMergerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/NoOpInputMergerFactory;

    invoke-direct {v0}, Landroidx/work/NoOpInputMergerFactory;-><init>()V

    sput-object v0, Landroidx/work/NoOpInputMergerFactory;->INSTANCE:Landroidx/work/NoOpInputMergerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/work/InputMergerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInputMerger(Ljava/lang/String;)Landroidx/work/InputMerger;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Landroidx/work/NoOpInputMergerFactory;->createInputMerger(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Landroidx/work/InputMerger;

    return-object p0
.end method

.method public createInputMerger(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    const-string p0, "className"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
