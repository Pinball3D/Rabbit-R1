.class Landroidx/transition/ViewUtilsApi23;
.super Landroidx/transition/ViewUtilsApi22;
.source "ViewUtilsApi23.java"


# static fields
.field private static sTryHiddenSetTransitionVisibility:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi22;-><init>()V

    return-void
.end method


# virtual methods
.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 0

    sget-boolean p0, Landroidx/transition/ViewUtilsApi23;->sTryHiddenSetTransitionVisibility:Z

    if-eqz p0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Landroidx/transition/ViewUtilsApi23;->sTryHiddenSetTransitionVisibility:Z

    :cond_0
    :goto_0
    return-void
.end method
