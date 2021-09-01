.class public Lcom/oneplus/settings/OPColorPickerActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;
.implements Lcom/oneplus/settings/OnPressListener;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mColorEditButton:Landroid/view/View;

.field private mColorEditView:Landroid/widget/EditText;

.field private mColors:[Ljava/lang/String;

.field private mCurrentColor:Ljava/lang/String;

.field private mCurrentTempColor:Ljava/lang/String;

.field private mDisabledCellColor:I

.field private mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

.field private mIsCustomColor:Z

.field private mLightTextColors:[Ljava/lang/String;

.field private mModifyColorPicker:Landroid/widget/TextView;

.field private mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

.field private mPresetView:Landroid/view/View;

.field private mPreviewImg:Landroid/widget/ImageView;

.field private mRippleEffectColor:I

.field private mSelectIndex:I

.field private mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPColorPickerActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/ActivityManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mAm:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->setEditTextAtLastLocation(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->isColorCodeValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroidx/appcompat/app/EditTextDialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    return-object p0
.end method

.method private initAccentColorView(Landroid/view/View;)V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [I

    .line 258
    sget v2, Lcom/android/settings/R$id;->color_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$id;->color_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_2:I

    const/4 v4, 0x2

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_3:I

    const/4 v4, 0x3

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_4:I

    const/4 v4, 0x4

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_5:I

    const/4 v4, 0x5

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_6:I

    const/4 v4, 0x6

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_7:I

    const/4 v4, 0x7

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_8:I

    const/16 v4, 0x8

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_9:I

    const/16 v4, 0x9

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_10:I

    const/16 v4, 0xa

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->color_11:I

    const/16 v4, 0xb

    aput v2, v1, v4

    .line 272
    array-length v2, v0

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    .line 273
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    if-eqz v3, :cond_0

    .line 277
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v2, v2, v3

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPColorPickerActivity;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v2, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v2, v2, v3

    new-instance v4, Lcom/oneplus/settings/OPColorPickerActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity$1;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;[Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->init()V

    return-void
.end method

.method private initAccentColors(Landroid/content/res/Resources;)V
    .locals 7

    .line 230
    sget v0, Lcom/android/settings/R$array;->op_custom_accent_color_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 232
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x7

    if-ge v3, v1, :cond_1

    if-ne v3, v5, :cond_0

    .line 234
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentMCLTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    iget-object v4, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    const-string v5, "#FFF19116"

    aput-object v5, v4, v3

    goto :goto_1

    .line 237
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    sget v0, Lcom/android/settings/R$array;->op_custom_accent_text_color_values_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 244
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mLightTextColors:[Ljava/lang/String;

    :goto_2
    if-ge v2, v1, :cond_3

    if-ne v2, v5, :cond_2

    .line 246
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentMCLTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mLightTextColors:[Ljava/lang/String;

    const-string v6, "#FFF1C791"

    aput-object v6, v3, v2

    goto :goto_3

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mLightTextColors:[Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 253
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isColorCodeValid(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "^#([0-9a-fA-F]{6})"

    .line 224
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 225
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private refreshUI(Ljava/lang/String;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 130
    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-nez v1, :cond_0

    .line 131
    sget v1, Lcom/android/settings/R$drawable;->op_default_accent_color_preview_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 133
    :cond_0
    sget v1, Lcom/android/settings/R$drawable;->op_custom_accent_color_preview_upper_layer:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_0
    iget v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private saveColorInfo()V
    .locals 4

    .line 519
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const-string v3, "oem_black_mode_accent_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 522
    iget-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const-string v2, "oem_black_mode_accent_color_index"

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const-string v3, "oem_white_mode_accent_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    iget-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const-string v2, "oem_white_mode_accent_color_index"

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAccentColor()V

    return-void
.end method

.method private sendTheme()V
    .locals 14

    .line 408
    invoke-direct {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->saveColorInfo()V

    .line 410
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->op_control_text_color_primary_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 414
    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    const-string v2, "persist.sys.theme.sub_accentcolor"

    const-string v3, "persist.sys.theme.accentcolor"

    const-string v4, "persist.sys.theme.oneplus_accent_button_text_color"

    const-string v5, "oneplus_accent_button_text_color"

    const-string v6, "oneplus_sub_accent_color"

    const-string v7, "oneplus_accent_color"

    const-string v8, "persist.sys.theme.accent_text_color"

    const-string v9, "oneplus_accent_text_color"

    const-string v10, ""

    const-string v11, "#"

    const/4 v12, -0x2

    if-nez v1, :cond_7

    .line 417
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v13, Lcom/android/settings/R$color;->op_control_icon_color_active:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v7, v0, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 419
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v1, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 420
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v9, v6, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v9, v0, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 429
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 430
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/android/settings/R$color;->op_control_text_color_primary_light:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/android/settings/R$color;->op_control_text_color_primary_dark:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 434
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v5, v7, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 435
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 436
    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 438
    :cond_2
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 441
    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_3
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 445
    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 447
    :cond_4
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 450
    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 452
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 453
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 455
    :cond_6
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 460
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7, v0, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v6, v0, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 462
    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_8

    .line 463
    iget-object v6, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mLightTextColors:[Ljava/lang/String;

    aget-object v1, v6, v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 465
    :cond_8
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v9, v1, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_3

    .line 470
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v9, v0, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 474
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$color;->op_control_text_color_primary_dark:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 475
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v5, v6, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 476
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 477
    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 479
    :cond_a
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 482
    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_b
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 488
    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 490
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 491
    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 493
    :cond_d
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/settings/OPColorPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPColorPickerActivity$2;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setEditTextAtLastLocation(Landroid/widget/EditText;)V
    .locals 0

    .line 543
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    .line 544
    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_0

    .line 546
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 5

    .line 303
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mDisabledCellColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 304
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 306
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 307
    new-instance p1, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mRippleEffectColor:I

    aput p0, v1, v3

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 315
    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public init()V
    .locals 6

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->op_control_accent_color_red_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCurrentColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mColors:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPFullScreenGestureGuidePage"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    const-string v4, "#"

    const-string v5, "#FF"

    .line 351
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_2
    :goto_1
    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    .line 357
    :cond_3
    iget v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    .line 358
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ltz v0, :cond_8

    .line 360
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible(Z)V

    .line 361
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    if-eqz v0, :cond_5

    .line 364
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 366
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 368
    sget v2, Lcom/android/settings/R$string;->oneplus_theme_accent_color_customization:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :cond_7
    iput-boolean v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    goto :goto_2

    .line 371
    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    if-eqz v0, :cond_9

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    iget-object v4, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    .line 375
    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 376
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_a
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 380
    sget v1, Lcom/android/settings/R$string;->oneplus_theme_accent_color_presetcolor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    :cond_c
    iput-boolean v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    .line 383
    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method protected needShowWarningDialog()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->performBackEvent()V

    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 201
    sget v0, Lcom/android/settings/R$id;->colorpick_modify:I

    if-ne p1, v0, :cond_1

    .line 202
    iget-boolean p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 203
    iput-boolean v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    .line 204
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_theme_accent_color_customization:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    .line 210
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_theme_accent_color_presetcolor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 215
    :cond_1
    sget v0, Lcom/android/settings/R$id;->colorvalue_pick:I

    if-ne p1, v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->showColotEditDialog()V

    goto :goto_0

    .line 217
    :cond_2
    sget v0, Lcom/android/settings/R$id;->save_button:I

    if-ne p1, v0, :cond_3

    .line 218
    invoke-direct {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->sendTheme()V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onColorChanged(I)V
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->convertToRGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible(Z)V

    const/4 p1, -0x1

    .line 194
    iput p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    .line 195
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget p1, Lcom/android/settings/R$layout;->op_color_picker_layout:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    sget p1, Lcom/android/settings/R$string;->oneplus_colorful_mode_cannot_change_color_accent:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    sget v0, Lcom/android/settings/R$string;->theme_accent_color_title:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    const-string p1, "activity"

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mAm:Landroid/app/ActivityManager;

    .line 98
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/BaseActivity;->setOnPressListener(Lcom/oneplus/settings/OnPressListener;)V

    .line 100
    sget p1, Lcom/android/settings/R$id;->preview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewImg:Landroid/widget/ImageView;

    .line 102
    sget p1, Lcom/android/settings/R$id;->oneplus_color_picker_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/ColorPickerView;

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    .line 103
    invoke-virtual {p1, p0}, Lcom/oneplus/settings/ui/ColorPickerView;->setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V

    .line 104
    sget p1, Lcom/android/settings/R$id;->oneplus_color_preset_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    .line 106
    sget p1, Lcom/android/settings/R$color;->colorpicker_ripple_effect_color:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mRippleEffectColor:I

    .line 107
    sget p1, Lcom/android/settings/R$color;->colorpicker_disabled_cell_color:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mDisabledCellColor:I

    .line 109
    sget p1, Lcom/android/settings/R$id;->colorpick_modify:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget p1, Lcom/android/settings/R$id;->colorvalue_pick:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    .line 113
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget p1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 116
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->initAccentColors(Landroid/content/res/Resources;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->initAccentColorView(Landroid/view/View;)V

    .line 121
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_theme_accent_color_customization:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->sendTheme()V

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 176
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public setSelectionVisible(Z)V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 319
    sget v1, Lcom/android/settings/R$id;->check_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$id;->check_1:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_2:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_3:I

    const/4 v3, 0x3

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_4:I

    const/4 v3, 0x4

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_5:I

    const/4 v3, 0x5

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_6:I

    const/4 v3, 0x6

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_7:I

    const/4 v3, 0x7

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_8:I

    const/16 v3, 0x8

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$id;->check_9:I

    const/16 v4, 0x9

    aput v1, v0, v4

    sget v1, Lcom/android/settings/R$id;->check_10:I

    const/16 v4, 0xa

    aput v1, v0, v4

    sget v1, Lcom/android/settings/R$id;->check_11:I

    const/16 v4, 0xb

    aput v1, v0, v4

    .line 333
    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v1, :cond_1

    .line 334
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    if-eqz p0, :cond_1

    .line 335
    aget-object p0, p0, v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showColotEditDialog()V
    .locals 5

    .line 551
    new-instance v0, Landroidx/appcompat/app/EditTextDialog;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/EditTextDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    .line 552
    sget v1, Lcom/android/settings/R$string;->op_custom_color_value_edit:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 553
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 554
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    .line 555
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->alert_dialog_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/OPColorPickerActivity$3;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPColorPickerActivity$3;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    const/4 v4, -0x2

    .line 554
    invoke-virtual {v0, v4, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    .line 561
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->okay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 560
    invoke-virtual {v0, v3, v2, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 564
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/EditTextDialog;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    .line 565
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 566
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 567
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    .line 569
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/settings/OPColorPickerActivity$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPColorPickerActivity$4;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 601
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroidx/appcompat/app/EditTextDialog;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPColorPickerActivity$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPColorPickerActivity$5;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    .line 602
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
