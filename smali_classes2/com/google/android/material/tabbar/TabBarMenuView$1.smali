.class Lcom/google/android/material/tabbar/TabBarMenuView$1;
.super Ljava/lang/Object;
.source "TabBarMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabbar/TabBarMenuView;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarMenuView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView$1;->this$0:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    check-cast p1, Lcom/google/android/material/tabbar/TabBarItemView;

    .line 127
    invoke-virtual {p1}, Lcom/google/android/material/tabbar/TabBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView$1;->this$0:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->access$100(Lcom/google/android/material/tabbar/TabBarMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView$1;->this$0:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-static {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->access$000(Lcom/google/android/material/tabbar/TabBarMenuView;)Lcom/google/android/material/tabbar/TabBarPresenter;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 129
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
