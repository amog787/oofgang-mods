.class Lcom/google/android/material/tabbar/TabBarView$2;
.super Ljava/lang/Object;
.source "TabBarView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabbar/TabBarView;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarView;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$2;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$2;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$300(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarView$2;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-virtual {v2}, Lcom/google/android/material/tabbar/TabBarView;->getSelectedItemId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 261
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$2;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {p0}, Lcom/google/android/material/tabbar/TabBarView;->access$300(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;->onTabItemReselected(Landroid/view/MenuItem;)V

    return v1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$2;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/tabbar/TabBarView;->access$400(Lcom/google/android/material/tabbar/TabBarView;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 266
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$2;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {p1}, Lcom/google/android/material/tabbar/TabBarView;->access$500(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$2;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {p0}, Lcom/google/android/material/tabbar/TabBarView;->access$500(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;->onTabItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
