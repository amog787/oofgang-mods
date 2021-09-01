.class public Lcom/google/android/setupdesign/items/ButtonBarItem;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "ButtonBarItem.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/ItemInflater$ItemParent;


# instance fields
.field private final buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/setupdesign/items/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->buttons:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->visible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->buttons:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->visible:Z

    return-void
.end method


# virtual methods
.method public addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .locals 1

    .line 107
    instance-of v0, p1, Lcom/google/android/setupdesign/items/ButtonItem;

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->buttons:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/setupdesign/items/ButtonItem;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 110
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot add non-button item to Button Bar"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCount()I
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ButtonBarItem;->isVisible()Z

    move-result p0

    return p0
.end method

.method public getLayoutResource()I
    .locals 0

    .line 74
    sget p0, Lcom/google/android/setupdesign/R$layout;->sud_items_button_bar:I

    return p0
.end method

.method public getViewId()I
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->getId()I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->visible:Z

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    .line 94
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 97
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/setupdesign/items/ButtonItem;

    .line 98
    invoke-virtual {v2, v0}, Lcom/google/android/setupdesign/items/ButtonItem;->createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ButtonBarItem;->getViewId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    return-void
.end method
