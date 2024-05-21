.class public Landroidx/appcompat/view/menu/MenuWrapperICS;
.super Landroidx/appcompat/view/menu/BaseMenuWrapper;
.source "MenuWrapperICS.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private final mWrappedObject:Landroidx/core/internal/view/SupportMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrapped Object can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 55
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 65
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 60
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 50
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p8

    if-eqz v1, :cond_0

    .line 94
    array-length v2, v1

    new-array v2, v2, [Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v2

    .line 98
    invoke-interface/range {v3 .. v11}, Landroidx/core/internal/view/SupportMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v3

    if-eqz v2, :cond_1

    .line 101
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 102
    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 75
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 86
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 80
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 70
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->internalClear()V

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 124
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenu;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 164
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenu;->close()V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 149
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 159
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public hasVisibleItems()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 144
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenu;->hasVisibleItems()Z

    move-result p0

    return p0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 174
    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 179
    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->performIdentifierAction(II)Z

    move-result p0

    return p0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 169
    invoke-interface {p0, p1, p2, p3}, Landroidx/core/internal/view/SupportMenu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public removeGroup(I)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->internalRemoveGroup(I)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 118
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenu;->removeGroup(I)V

    return-void
.end method

.method public removeItem(I)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->internalRemoveItem(I)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 112
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenu;->removeItem(I)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 129
    invoke-interface {p0, p1, p2, p3}, Landroidx/core/internal/view/SupportMenu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 139
    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->setGroupEnabled(IZ)V

    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 134
    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->setGroupVisible(IZ)V

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 184
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenu;->setQwertyMode(Z)V

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    .line 154
    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenu;->size()I

    move-result p0

    return p0
.end method
