.class public final Landroidx/compose/runtime/Trace;
.super Ljava/lang/Object;
.source "ActualAndroid.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/runtime/Trace;",
        "",
        "()V",
        "beginSection",
        "name",
        "",
        "endSection",
        "",
        "token",
        "runtime_release"
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
.field public static final INSTANCE:Landroidx/compose/runtime/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/Trace;

    invoke-direct {v0}, Landroidx/compose/runtime/Trace;-><init>()V

    sput-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginSection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final endSection(Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
