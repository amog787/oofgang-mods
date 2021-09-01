.class public Landroidx/appcompat/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/PopupMenu$OnDismissListener;,
        Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

.field final mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6

    .line 83
    sget v4, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 9

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 110
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v1, Landroidx/appcompat/widget/PopupMenu$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Landroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 124
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v4, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 125
    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 126
    iget-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    new-instance p2, Landroidx/appcompat/widget/PopupMenu$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/PopupMenu$2;-><init>(Landroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 248
    iget-object p0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 210
    iget-object p0, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .locals 0

    .line 239
    iget-object p0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    return-void
.end method
