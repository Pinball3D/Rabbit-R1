.class final Landroidx/activity/EdgeToEdgeApi21;
.super Ljava/lang/Object;
.source "EdgeToEdge.kt"

# interfaces
.implements Landroidx/activity/EdgeToEdgeImpl;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0017\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/activity/EdgeToEdgeApi21;",
        "Landroidx/activity/EdgeToEdgeImpl;",
        "()V",
        "setUp",
        "",
        "statusBarStyle",
        "Landroidx/activity/SystemBarStyle;",
        "navigationBarStyle",
        "window",
        "Landroid/view/Window;",
        "view",
        "Landroid/view/View;",
        "statusBarIsDark",
        "",
        "navigationBarIsDark",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 0

    const-string/jumbo p0, "statusBarStyle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "navigationBarStyle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "window"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "view"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 229
    invoke-static {p3, p0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const/high16 p0, 0x4000000

    .line 230
    invoke-virtual {p3, p0}, Landroid/view/Window;->addFlags(I)V

    const/high16 p0, 0x8000000

    .line 231
    invoke-virtual {p3, p0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
