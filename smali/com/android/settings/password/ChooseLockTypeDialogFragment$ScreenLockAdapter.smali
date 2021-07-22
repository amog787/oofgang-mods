.class Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/password/ScreenLockType;",
        ">;"
    }
.end annotation


# instance fields
.field private final mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;",
            "Lcom/android/settings/password/ChooseLockGenericController;",
            ")V"
        }
    .end annotation

    .line 160
    sget v0, Lcom/android/settings/R$layout;->choose_lock_dialog_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 161
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    return-void
.end method

.method private static getIconForScreenLock(Landroid/content/Context;Lcom/android/settings/password/ScreenLockType;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 180
    sget-object v0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    sget p1, Lcom/android/settings/R$drawable;->ic_password:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 184
    :cond_1
    sget p1, Lcom/android/settings/R$drawable;->ic_pin:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 182
    :cond_2
    sget p1, Lcom/android/settings/R$drawable;->ic_pattern:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 166
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    .line 168
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->choose_lock_dialog_item:I

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ScreenLockType;

    .line 172
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 173
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {v0, p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->getIconForScreenLock(Landroid/content/Context;Lcom/android/settings/password/ScreenLockType;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    .line 174
    invoke-virtual {p3, p0, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
