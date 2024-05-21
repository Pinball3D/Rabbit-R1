.class public final Landroidx/compose/ui/semantics/Role;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/semantics/Role$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/semantics/Role;",
        "",
        "value",
        "",
        "constructor-impl",
        "(I)I",
        "equals",
        "",
        "other",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "Companion",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field private static final Button:I

.field private static final Checkbox:I

.field public static final Companion:Landroidx/compose/ui/semantics/Role$Companion;

.field private static final DropdownList:I

.field private static final Image:I

.field private static final RadioButton:I

.field private static final Switch:I

.field private static final Tab:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/semantics/Role$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/Role$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    const/4 v0, 0x0

    .line 619
    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/semantics/Role;->Button:I

    const/4 v0, 0x1

    .line 627
    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/semantics/Role;->Checkbox:I

    const/4 v0, 0x2

    .line 635
    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/semantics/Role;->Switch:I

    const/4 v0, 0x3

    .line 642
    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/semantics/Role;->RadioButton:I

    const/4 v0, 0x4

    .line 650
    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/semantics/Role;->Tab:I

    const/4 v0, 0x5

    .line 656
    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/semantics/Role;->Image:I

    const/4 v0, 0x6

    .line 663
    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/semantics/Role;->DropdownList:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/semantics/Role;->value:I

    return-void
.end method

.method public static final synthetic access$getButton$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->Button:I

    return v0
.end method

.method public static final synthetic access$getCheckbox$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->Checkbox:I

    return v0
.end method

.method public static final synthetic access$getDropdownList$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->DropdownList:I

    return v0
.end method

.method public static final synthetic access$getImage$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->Image:I

    return v0
.end method

.method public static final synthetic access$getRadioButton$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->RadioButton:I

    return v0
.end method

.method public static final synthetic access$getSwitch$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->Switch:I

    return v0
.end method

.method public static final synthetic access$getTab$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->Tab:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/semantics/Role;
    .locals 1

    new-instance v0, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v0, p0}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/semantics/Role;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/semantics/Role;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/semantics/Role;->Button:I

    .line 667
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Button"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/semantics/Role;->Checkbox:I

    .line 668
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Checkbox"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/semantics/Role;->Switch:I

    .line 669
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Switch"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/semantics/Role;->RadioButton:I

    .line 670
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "RadioButton"

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/semantics/Role;->Tab:I

    .line 671
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Tab"

    goto :goto_0

    :cond_4
    sget v0, Landroidx/compose/ui/semantics/Role;->Image:I

    .line 672
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Image"

    goto :goto_0

    :cond_5
    sget v0, Landroidx/compose/ui/semantics/Role;->DropdownList:I

    .line 673
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "DropdownList"

    goto :goto_0

    :cond_6
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/Role;->value:I

    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/Role;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/Role;->value:I

    invoke-static {p0}, Landroidx/compose/ui/semantics/Role;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/Role;->value:I

    .line 666
    invoke-static {p0}, Landroidx/compose/ui/semantics/Role;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/Role;->value:I

    return p0
.end method
