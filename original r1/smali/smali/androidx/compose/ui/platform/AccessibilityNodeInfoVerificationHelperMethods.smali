.class public final Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;",
        "",
        "()V",
        "setAvailableExtraData",
        "",
        "node",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        "data",
        "",
        "",
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
.field public static final INSTANCE:Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAvailableExtraData(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "node"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3446
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    return-void
.end method
