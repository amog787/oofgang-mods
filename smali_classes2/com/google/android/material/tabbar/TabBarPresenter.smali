.class public Lcom/google/android/material/tabbar/TabBarPresenter;
.super Ljava/lang/Object;
.source "TabBarPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->id:I

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 53
    iput-object p2, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 54
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0, p2}, Lcom/google/android/material/tabbar/TabBarMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 121
    instance-of v0, p1, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    check-cast p1, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabbar/TabBarMenuView;->tryRestoreSelectedItemId(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    .line 125
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 124
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeUtils;->createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    .line 126
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 112
    new-instance v0, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/tabbar/TabBarMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;->selectedItemId:I

    .line 114
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeUtils;->createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/material/tabbar/TabBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->id:I

    return-void
.end method

.method public setTabBarMenuView(Lcom/google/android/material/tabbar/TabBarMenuView;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->updateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->updateSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 68
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->buildMenuView(Z)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarPresenter;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->updateMenuView()V

    :goto_0
    return-void
.end method
