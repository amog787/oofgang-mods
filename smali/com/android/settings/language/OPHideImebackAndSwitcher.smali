.class public Lcom/android/settings/language/OPHideImebackAndSwitcher;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPHideImebackAndSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHideButton:Landroid/widget/RadioButton;

.field private mHideImage:Landroid/widget/ImageView;

.field private mHideView:Landroid/view/View;

.field private mRaiseButton:Landroid/widget/RadioButton;

.field private mRaiseImage:Landroid/widget/ImageView;

.field private mRaiseView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private setCurrentMode()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nav_icon_hide"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseButton:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideButton:Landroid/widget/RadioButton;

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseView:Landroid/view/View;

    const/4 v1, -0x2

    const-string v2, "nav_icon_hide"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 57
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 59
    iget-object p0, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/android/settings/R$layout;->op_hide_imeback_and_switcher:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mContext:Landroid/content/Context;

    .line 31
    sget p1, Lcom/android/settings/R$id;->raise_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseView:Landroid/view/View;

    .line 32
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget p1, Lcom/android/settings/R$id;->hide_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideView:Landroid/view/View;

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget p1, Lcom/android/settings/R$id;->raise_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseButton:Landroid/widget/RadioButton;

    .line 36
    sget p1, Lcom/android/settings/R$id;->hide_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideButton:Landroid/widget/RadioButton;

    .line 37
    sget p1, Lcom/android/settings/R$id;->raise_image:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseImage:Landroid/widget/ImageView;

    .line 38
    sget p1, Lcom/android/settings/R$id;->hide_image:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideImage:Landroid/widget/ImageView;

    .line 39
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseImage:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_raise_keyboard_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideImage:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_hide_keyboard_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mRaiseImage:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_raise_keyboard_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/language/OPHideImebackAndSwitcher;->mHideImage:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_hide_keyboard_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/language/OPHideImebackAndSwitcher;->setCurrentMode()V

    return-void
.end method
