.class public Lcom/oneplus/settings/ui/OPThemePreference;
.super Landroidx/preference/Preference;
.source "OPThemePreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThemeIcon1:Landroid/widget/ImageView;

.field private mThemeIcon2:Landroid/widget/ImageView;

.field private mThemeIcon3:Landroid/widget/ImageView;

.field private mThemeIcon4:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget p2, Lcom/android/settings/R$layout;->op_theme_layout_main:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 33
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 155
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppIcon e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " packagename = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPThemePreference"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getColorThmeImage()I
    .locals 2

    .line 73
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_black_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 86
    sget p0, Lcom/android/settings/R$drawable;->op_img_tone_light:I

    goto :goto_0

    .line 83
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->op_img_tone_color:I

    goto :goto_0

    .line 80
    :cond_1
    sget p0, Lcom/android/settings/R$drawable;->op_img_tone_dark:I

    goto :goto_0

    .line 77
    :cond_2
    sget p0, Lcom/android/settings/R$drawable;->op_img_tone_light:I

    :goto_0
    return p0
.end method

.method private initAppIconView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 163
    sget v0, Lcom/android/settings/R$id;->theme_iconpack:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v0, Lcom/android/settings/R$id;->theme_icon_1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon1:Landroid/widget/ImageView;

    .line 166
    sget v0, Lcom/android/settings/R$id;->theme_icon_2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon2:Landroid/widget/ImageView;

    .line 167
    sget v0, Lcom/android/settings/R$id;->theme_icon_3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon3:Landroid/widget/ImageView;

    .line 168
    sget v0, Lcom/android/settings/R$id;->theme_icon_4:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon4:Landroid/widget/ImageView;

    const-string p1, "com.android.dialer"

    .line 169
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPThemePreference;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string p1, "com.oneplus.mms"

    .line 173
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPThemePreference;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string p1, "com.oneplus.deskclock"

    .line 177
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPThemePreference;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon3:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string p1, "com.oneplus.camera"

    .line 181
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPThemePreference;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 183
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mThemeIcon4:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public initViewStatus(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 93
    sget v0, Lcom/android/settings/R$id;->theme_accentcolor_checkbox:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    sget v0, Lcom/android/settings/R$id;->theme_accentcolor_radiobutton:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 99
    sget v0, Lcom/android/settings/R$id;->theme_accentcolor_switch:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 102
    sget v0, Lcom/android/settings/R$id;->theme_accentcolor_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 105
    sget v0, Lcom/android/settings/R$id;->theme_accentcolor_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 38
    sget v0, Lcom/android/settings/R$id;->theme_accent_color:I

    .line 39
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 53
    sget v0, Lcom/android/settings/R$id;->theme_theme:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/RadiusImageView;

    .line 54
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPThemePreference;->getColorThmeImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/android/settings/R$id;->theme_shape:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/android/settings/R$id;->theme_font_style:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportFontStyleSetting()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    sget v0, Lcom/android/settings/R$id;->font_label:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    sget v0, Lcom/android/settings/R$id;->theme_font_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget v0, Lcom/android/settings/R$id;->theme_font_text_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPThemePreference;->initViewStatus(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPThemePreference;->initAppIconView(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 120
    sget v0, Lcom/android/settings/R$id;->theme_accent_color:I

    if-ne p1, v0, :cond_1

    .line 121
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->oneplus_colorful_mode_cannot_change_color_accent:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 125
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    const-class v1, Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_1
    sget v0, Lcom/android/settings/R$id;->theme_iconpack:I

    if-ne p1, v0, :cond_2

    .line 129
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "net.oneplus.launcher"

    const-string v1, "net.oneplus.launcher.IconPackSelectorActivity"

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :cond_2
    sget v0, Lcom/android/settings/R$id;->theme_theme:I

    const/high16 v1, 0x10000000

    const-string v2, "com.android.settings"

    if-ne p1, v0, :cond_3

    .line 134
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.Settings$OPCustomToneSettingsActivity"

    .line 135
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :cond_3
    sget v0, Lcom/android/settings/R$id;->theme_shape:I

    if-ne p1, v0, :cond_4

    .line 140
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.Settings$OPCustomShapeSettingsActivity"

    .line 141
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_4
    sget v0, Lcom/android/settings/R$id;->theme_font_style:I

    if-ne p1, v0, :cond_5

    .line 146
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    const-class v1, Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
