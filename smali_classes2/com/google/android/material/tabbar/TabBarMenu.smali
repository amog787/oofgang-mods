.class public final Lcom/google/android/material/tabbar/TabBarMenu;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "TabBarMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xf

    if-gt v0, v2, :cond_1

    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 58
    instance-of p2, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p2, :cond_0

    .line 59
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-object p1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum number of items supported by TabBarView is 15. Limit can be checked with TabBarView#getMaxItemCount()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 45
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "TabBarView does not support submenus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
