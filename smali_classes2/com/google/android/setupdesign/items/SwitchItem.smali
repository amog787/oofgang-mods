.class public Lcom/google/android/setupdesign/items/SwitchItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checked:Z

.field private listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 62
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSwitchItem_android_checked:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 0

    .line 85
    sget p0, Lcom/google/android/setupdesign/R$layout;->sud_items_switch:I

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->onBindView(Landroid/view/View;)V

    .line 102
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 105
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 119
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 120
    iget-object p1, p0, Lcom/google/android/setupdesign/items/SwitchItem;->listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1, p0, p2}, Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/SwitchItem;Z)V

    :cond_0
    return-void
.end method
