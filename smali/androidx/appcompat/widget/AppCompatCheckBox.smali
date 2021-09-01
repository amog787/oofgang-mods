.class public Landroidx/appcompat/widget/AppCompatCheckBox;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"

# interfaces
.implements Landroidx/core/widget/TintableCompoundButton;
.implements Landroidx/core/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;,
        Landroidx/appcompat/widget/AppCompatCheckBox$OnTriStateCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final INDETERMINATE_STATE_SET:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private mBroadcasting:Z

.field private mChecked:Z

.field private final mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

.field private mIndeterminate:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnTriStateCheckedChangeListener:Landroidx/appcompat/widget/AppCompatCheckBox$OnTriStateCheckedChangeListener;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

.field private mThreeState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 260
    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/AppCompatCheckBox;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 262
    sget v2, Landroidx/appcompat/R$attr;->state_indeterminate:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroidx/appcompat/widget/AppCompatCheckBox;->INDETERMINATE_STATE_SET:[I

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    .line 266
    sput-object v0, Landroidx/appcompat/widget/AppCompatCheckBox;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    sget v0, Landroidx/appcompat/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 80
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 84
    new-instance v0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 85
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 88
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 90
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 91
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private notifyViewAccessibilityStateChangedIfNeededInternal(I)V
    .locals 6

    :try_start_0
    const-string v0, "android.view.View"

    .line 431
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyViewAccessibilityStateChangedIfNeeded"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 432
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    sget-object p1, Landroidx/appcompat/widget/AppCompatCheckBox;->TAG:Ljava/lang/String;

    const-string v0, "notifyViewAccessibilityStateChangedIfNeeded with Exception!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 241
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 242
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 245
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p0, :cond_1

    .line 246
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .line 112
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 113
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 191
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 219
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 138
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 163
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 272
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatCheckBox:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 275
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatCheckBox_threeState:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 277
    sget p3, Landroidx/appcompat/R$styleable;->AppCompatCheckBox_android_checked:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 279
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatCheckBox_indeterminate:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 281
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setThreeState(Z)V

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 285
    :cond_1
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCheckedInternal(Z)V

    .line 287
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isChecked()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 345
    iget-boolean p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    return p0
.end method

.method public isIndeterminate()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 339
    iget-boolean p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mIndeterminate:Z

    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 487
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 488
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    sget-object p0, Landroidx/appcompat/widget/AppCompatCheckBox;->INDETERMINATE_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 491
    sget-object p0, Landroidx/appcompat/widget/AppCompatCheckBox;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 561
    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;

    .line 563
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/CheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 564
    iget-boolean v0, p1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;->threeState:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mThreeState:Z

    if-eqz v0, :cond_1

    .line 566
    iget-boolean v0, p1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;->indeterminate:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p1, p1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;->checked:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 568
    :cond_1
    iget-boolean p1, p1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCheckedInternal(Z)V

    .line 570
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 549
    invoke-super {p0}, Landroid/widget/CheckBox;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 551
    new-instance v1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 553
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;->checked:Z

    .line 554
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mThreeState:Z

    iput-boolean v0, v1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;->threeState:Z

    .line 555
    iget-boolean p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mIndeterminate:Z

    iput-boolean p0, v1, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;->indeterminate:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 2

    .line 299
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mThreeState:Z

    if-eqz v0, :cond_1

    .line 300
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTriStateChecked(Ljava/lang/Boolean;)V

    .line 306
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/CheckBox;->performClick()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    :cond_2
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 225
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 234
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    :cond_0
    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTriStateChecked(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 355
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCheckedInternal(ZZ)V

    return-void
.end method

.method public setCheckedInternal(ZZ)V
    .locals 3

    .line 378
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_5

    .line 380
    :cond_1
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    .line 381
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    .line 385
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->notifyViewAccessibilityStateChangedIfNeededInternal(I)V

    if-eqz v0, :cond_5

    .line 389
    iget-boolean p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBroadcasting:Z

    if-eqz p1, :cond_2

    return-void

    .line 393
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBroadcasting:Z

    .line 394
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_3

    .line 395
    iget-boolean p2, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    invoke-interface {p1, p0, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 397
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_4

    .line 398
    iget-boolean p2, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    invoke-interface {p1, p0, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 401
    :cond_4
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBroadcasting:Z

    :cond_5
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 447
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 468
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnTriStateCheckedChangeListener(Landroidx/appcompat/widget/AppCompatCheckBox$OnTriStateCheckedChangeListener;)V
    .locals 0

    .line 457
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mOnTriStateCheckedChangeListener:Landroidx/appcompat/widget/AppCompatCheckBox$OnTriStateCheckedChangeListener;

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 176
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 204
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 125
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 150
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setThreeState(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mThreeState:Z

    return-void
.end method

.method protected setTriStateChecked(Ljava/lang/Boolean;)V
    .locals 4

    .line 407
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mIndeterminate:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v3, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    if-eq v0, v3, :cond_6

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 408
    :goto_1
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mIndeterminate:Z

    if-eqz p1, :cond_3

    .line 410
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCheckedInternal(ZZ)V

    goto :goto_2

    .line 412
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    .line 413
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->notifyViewAccessibilityStateChangedIfNeededInternal(I)V

    .line 416
    :goto_2
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBroadcasting:Z

    if-eqz v0, :cond_4

    return-void

    .line 420
    :cond_4
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBroadcasting:Z

    .line 421
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mOnTriStateCheckedChangeListener:Landroidx/appcompat/widget/AppCompatCheckBox$OnTriStateCheckedChangeListener;

    if-eqz v0, :cond_5

    .line 422
    invoke-interface {v0, p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox$OnTriStateCheckedChangeListener;->onCheckedChanged(Landroidx/appcompat/widget/AppCompatCheckBox;Ljava/lang/Boolean;)V

    .line 425
    :cond_5
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mBroadcasting:Z

    :cond_6
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 292
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mThreeState:Z

    if-nez v0, :cond_0

    .line 293
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method
