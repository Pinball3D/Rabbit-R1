.class public final Landroidx/compose/foundation/text/DeadKeyCombiner;
.super Ljava/lang/Object;
.source "DeadKeyCombiner.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeadKeyCombiner.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeadKeyCombiner.android.kt\nandroidx/compose/foundation/text/DeadKeyCombiner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\nR\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/foundation/text/DeadKeyCombiner;",
        "",
        "()V",
        "deadKeyCode",
        "",
        "Ljava/lang/Integer;",
        "consume",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "consume-ZmokQxo",
        "(Landroid/view/KeyEvent;)Ljava/lang/Integer;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private deadKeyCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final consume-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getUtf16CodePoint-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iput-object v1, p0, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 39
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    return-object v1

    .line 42
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
