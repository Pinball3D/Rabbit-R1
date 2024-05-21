.class public final Ltech/rabbit/r1launcher/ota/MarqueeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MarqueeTextView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/ota/MarqueeTextView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "isFocused",
        "",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, -0x1

    .line 18
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setMaxLines(I)V

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setSingleLine()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, -0x1

    .line 18
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setMaxLines(I)V

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setSingleLine()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, -0x1

    .line 18
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setMaxLines(I)V

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/MarqueeTextView;->setSingleLine()V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
