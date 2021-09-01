.class public Lcom/oneplus/settings/OPAuthenticationInformationSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPAuthenticationInformationSettings.java"


# instance fields
.field private mAuthenticationImage:Landroid/widget/ImageView;

.field private mCmiitIdView:Landroid/widget/TextView;

.field private mMadeinChina:Landroid/widget/TextView;

.field private mModelTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private setCmiitID()V
    .locals 5

    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_authentication_information_cmiit_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "oneplus A3000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2016CP1331"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 63
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "oneplus A3010"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2016CP5088"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 65
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A5000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2017CP2198"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 67
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A5010"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2017CP6039"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 69
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A6000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2018CP1307"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 71
    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_for_china_and_india:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_for_europe_and_america:I

    .line 72
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_0

    .line 74
    :cond_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_oneplus_model_18821_for_cn:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2018CP7481"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 76
    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_cn:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "2018CP7482"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 78
    :cond_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_19801_for_cn:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_19801_for_cn_cmittid:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 80
    :cond_8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_18865_for_cn:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_18865_for_cn_cmittid:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 82
    :cond_9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_19821_for_cn:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 83
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_19821_for_cn_cmittid:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    :cond_a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_19811_for_cn:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 85
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_19811_for_cn_cmittid:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 86
    :cond_b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_kebab_for_02:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 87
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->oneplus_model_kebab_for_02_cmittid:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_c
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "XXXXXXXXXX"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    :cond_d
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->oneplus_cmittid:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 92
    iget-object p0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_authentication_information_image_dark:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 94
    :cond_e
    iget-object p0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_authentication_information_image_light:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method private setDeviceType()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_authentication_information_model:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object p0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget p1, Lcom/android/settings/R$layout;->op_authentication_information_settings:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 37
    sget p1, Lcom/android/settings/R$string;->oneplus_authentication_information:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 38
    sget p1, Lcom/android/settings/R$id;->authentication_information_model:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    .line 39
    sget p1, Lcom/android/settings/R$id;->authentication_information_cmiit_id:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    .line 40
    sget p1, Lcom/android/settings/R$id;->authentication_information_image:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setDeviceType()V

    .line 46
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setCmiitID()V

    .line 47
    sget p1, Lcom/android/settings/R$id;->authentication_information_made_in_china:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mMadeinChina:Landroid/widget/TextView;

    .line 48
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEightSeriesProducts()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mMadeinChina:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_authentication_information_made_in_china_5g:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
