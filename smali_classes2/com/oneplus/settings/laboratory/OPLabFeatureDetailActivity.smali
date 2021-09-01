.class public Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mActiviteFeatureToggle:Landroid/view/View;

.field private mDCDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDescriptionSummary:Landroid/widget/TextView;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDislikeImageButton:Landroid/widget/ImageButton;

.field private mFeatureToggleNames:[Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLikeImageButton:Landroid/widget/ImageButton;

.field private mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

.field private mOneplusLabFeatureKey:Ljava/lang/String;

.field private mOneplusLabFeatureTitle:Ljava/lang/String;

.field private mOneplusLabFeatureToggleCount:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 142
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method private confirmAlertDialog()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->oneplus_is_turn_on_feature:I

    .line 160
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_is_turn_on_feature_summary:I

    .line 161
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_turn_on_feature_ok:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_turn_on_feature_cancel:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 164
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    .line 166
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private confirmDCDialog()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDCDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->op_lab_dc_warn_message:I

    .line 184
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->op_lab_dc_still_on:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 185
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_turn_on_feature_cancel:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    .line 189
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDCDialog:Landroidx/appcompat/app/AlertDialog;

    .line 200
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDCDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private highlightUserChoose(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 300
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_accent_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 301
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 302
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like_fill:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 303
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget p1, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 305
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 306
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_accent_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 307
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 308
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget p1, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike_fill:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 311
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 312
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 313
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_toggle_count"

    const/4 v2, 0x2

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_toggle_names"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_icon_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 86
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_description_summary:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_summary:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    .line 92
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v1, "show_importance_slider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    :goto_2
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_multi_toggle_group:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->isMultiToggle()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iget v3, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->addChild(I[Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setOnRadioGroupClickListener(Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setSelect(I)V

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    :goto_3
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_like:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    .line 108
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_dislike:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_Summary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    return-void
.end method

.method private saveActitiveHistory(I)V
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_feedback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->showToastTip()V

    .line 273
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    return-void
.end method

.method private setLikeOrDislike()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 287
    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->highlightUserChoose(I)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 292
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 294
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showToastTip()V
    .locals 2

    .line 277
    sget-object v0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->oneplus_lab_feedback_toast:I

    const/16 v1, 0xbb8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mToast:Landroid/widget/Toast;

    .line 281
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public isMultiToggle()Z
    .locals 1

    .line 118
    iget p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 207
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_toggle:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 208
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v0, "oneplus_dc_dimming_value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "0"

    const-string v3, "status"

    const-string v4, "dc_dimming"

    const/16 v5, 0x3eb

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    invoke-static {v4, v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->confirmAlertDialog()V

    .line 216
    :goto_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 217
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    .line 219
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    goto/16 :goto_5

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isH2()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    invoke-static {v4, v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->confirmDCDialog()V

    .line 229
    :goto_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 230
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    .line 232
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    goto :goto_5

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 236
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    .line 238
    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 240
    :goto_2
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 241
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v6

    .line 246
    :goto_3
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v0, "show_importance_slider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 249
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    :goto_4
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_5

    .line 253
    :cond_8
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_like:I

    if-ne p1, v0, :cond_9

    .line 254
    invoke-direct {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    goto :goto_5

    .line 255
    :cond_9
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_dislike:I

    if-ne p1, v0, :cond_a

    const/4 p1, -0x1

    .line 256
    invoke-direct {p0, p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    :cond_a
    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget p1, Lcom/android/settings/R$layout;->op_lab_feature_details_activity:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 68
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibrator"

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initIntent()V

    .line 72
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 139
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioGroupClick(I)V
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method
