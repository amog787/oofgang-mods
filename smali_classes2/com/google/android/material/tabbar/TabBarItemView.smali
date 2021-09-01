.class public Lcom/google/android/material/tabbar/TabBarItemView;
.super Landroid/widget/FrameLayout;
.source "TabBarItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private mDisplay:Z

.field private mLineDrawable:Landroid/graphics/drawable/Drawable;

.field private originalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private wrappedIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 66
    sput-object v0, Lcom/google/android/material/tabbar/TabBarItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabbar/TabBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabbar/TabBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 83
    iput p2, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemPosition:I

    const/4 p2, 0x1

    .line 93
    iput-boolean p2, p0, Lcom/google/android/material/tabbar/TabBarItemView;->mDisplay:Z

    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/R$layout;->op_tab_bar_item:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    sget p1, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 113
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 114
    new-instance p2, Lcom/google/android/material/tabbar/TabBarItemView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/tabbar/TabBarItemView$1;-><init>(Lcom/google/android/material/tabbar/TabBarItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/tabbar/TabBarItemView;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/tabbar/TabBarItemView;Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->tryUpdateBadgeBounds(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/tabbar/TabBarItemView;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->setupLineBitmap(I)V

    return-void
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 1

    .line 451
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 452
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    :cond_0
    return-object v0
.end method

.method private hasBadge()Z
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setIconToLine()V
    .locals 3

    .line 294
    iget-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->mDisplay:Z

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/google/android/material/tabbar/TabBarItemView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabbar/TabBarItemView$2;-><init>(Lcom/google/android/material/tabbar/TabBarItemView;)V

    iget v1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemPosition:I

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit16 v1, v1, 0x5dc

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/material/tabbar/TabBarItemView;->setupLineBitmap(I)V

    :goto_0
    return-void
.end method

.method private setupLineBitmap(I)V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->op_tabbar_land_short:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 343
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 348
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 351
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarItemView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 427
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 429
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 430
    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    .line 429
    invoke-static {v0, p1, p0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method private tryRemoveBadgeFromAnchor(Landroid/view/View;)V
    .locals 2

    .line 435
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarItemView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 441
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 443
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 444
    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 443
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    const/4 p1, 0x0

    .line 446
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-void
.end method

.method private tryUpdateBadgeBounds(Landroid/view/View;)V
    .locals 1

    .line 413
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarItemView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 417
    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    .line 416
    invoke-static {v0, p1, p0}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public getItemPosition()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemPosition:I

    return p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 1

    .line 137
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 138
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarItemView;->setCheckable(Z)V

    .line 139
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarItemView;->setChecked(Z)V

    .line 140
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarItemView;->setEnabled(Z)V

    .line 141
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarItemView;->setIconToLine()V

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 146
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 147
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 259
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 261
    sget-object p0, Lcom/google/android/material/tabbar/TabBarItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 206
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 213
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarItemView;->getItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v5

    .line 217
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 225
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 226
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    :cond_2
    const-string p0, "Tab"

    .line 228
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method removeBadge()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabbar/TabBarItemView;->tryRemoveBadgeFromAnchor(Landroid/view/View;)V

    return-void
.end method

.method setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 394
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 201
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setDisplayAnimation(Z)V
    .locals 0

    .line 459
    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->mDisplay:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 250
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 253
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 278
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 281
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 283
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 286
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 374
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 375
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 376
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 365
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 366
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 367
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 368
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 382
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 389
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemPosition:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 173
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_1

    .line 174
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->labelVisibilityMode:I

    .line 176
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setLineDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarItemView;->isShifting:Z

    if-eq v0, p1, :cond_1

    .line 163
    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->isShifting:Z

    .line 165
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
