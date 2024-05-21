.class public final Ltech/rabbit/r1launcher/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static CanBackLabelView:[I = null

.field public static CanBackLabelView_canBackLabelViewFocusedLabel:I = 0x0

.field public static CanBackLabelView_canBackLabelViewUnfocusedLabel:I = 0x1

.field public static CanBackLabelView_visibleFadeBackground:I = 0x2

.field public static RoundRectProgressBar:[I = null

.field public static RoundRectProgressBar_progress:I = 0x0

.field public static SettingTitle:[I = null

.field public static SettingTitle_st_focus_title:I = 0x0

.field public static SettingTitle_st_normal_title:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f03009a

    const v1, 0x7f0304c3

    const v2, 0x7f030099

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView:[I

    const v0, 0x7f030396

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/R$styleable;->RoundRectProgressBar:[I

    const v0, 0x7f0303ec

    const v1, 0x7f0303ed

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/R$styleable;->SettingTitle:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
