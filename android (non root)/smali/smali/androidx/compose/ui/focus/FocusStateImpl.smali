.class public final enum Landroidx/compose/ui/focus/FocusStateImpl;
.super Ljava/lang/Enum;
.source "FocusState.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/focus/FocusStateImpl;",
        ">;",
        "Landroidx/compose/ui/focus/FocusState;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusStateImpl;",
        "",
        "Landroidx/compose/ui/focus/FocusState;",
        "(Ljava/lang/String;I)V",
        "hasFocus",
        "",
        "getHasFocus",
        "()Z",
        "isCaptured",
        "isFocused",
        "Active",
        "ActiveParent",
        "Captured",
        "Inactive",
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
.field private static final synthetic $VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Active:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Captured:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Inactive:Landroidx/compose/ui/focus/FocusStateImpl;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 4

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    const-string v1, "Active"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 64
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    const-string v1, "ActiveParent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 70
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    const-string v1, "Captured"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 76
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    const-string v1, "Inactive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-static {}, Landroidx/compose/ui/focus/FocusStateImpl;->$values()[Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->$VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1

    const-class v0, Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusStateImpl;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->$VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/focus/FocusStateImpl;

    return-object v0
.end method


# virtual methods
.method public getHasFocus()Z
    .locals 2

    .line 85
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isCaptured()Z
    .locals 1

    .line 91
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public isFocused()Z
    .locals 2

    .line 79
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    return v0
.end method
