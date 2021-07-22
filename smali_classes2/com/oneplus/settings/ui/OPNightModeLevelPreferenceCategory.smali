.class public Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
.super Landroidx/preference/Preference;
.source "OPNightModeLevelPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

.field private mRLBrightness:Landroid/widget/RelativeLayout;

.field private mRLColor:Landroid/widget/RelativeLayout;

.field private mSeekBarBrightness:Landroid/widget/SeekBar;

.field private mSeekBarColor:Landroid/widget/SeekBar;

.field private mToastTip:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    .line 35
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    .line 36
    sget p1, Lcom/android/settings/R$layout;->op_night_mode_level_preference_category:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private initView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v2, "oem_nightmode_progress_status"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_nightmode_brightness_progress"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 68
    sget v2, Lcom/android/settings/R$id;->tr_color_temperature:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mRLColor:Landroid/widget/RelativeLayout;

    .line 69
    sget v2, Lcom/android/settings/R$id;->tr_brightness:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mRLBrightness:Landroid/widget/RelativeLayout;

    .line 71
    sget v2, Lcom/android/settings/R$id;->seekbar_color_temperature:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    sget v0, Lcom/android/settings/R$id;->seekbar_brightness:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Landroid/widget/SeekBar;

    .line 76
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Landroid/widget/SeekBar;

    new-instance v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 126
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mRLColor:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$AJbSS0doH-xFVa-rMVeyp40DQVA;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$AJbSS0doH-xFVa-rMVeyp40DQVA;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mRLBrightness:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$1BCHIWEUrGQw8a_X2Omzpk5EIQ0;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$1BCHIWEUrGQw8a_X2Omzpk5EIQ0;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isNightDisplayActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isWellbeingGrayscaleActivated()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 143
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 144
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mRLBrightness:Landroid/widget/RelativeLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private isNightDisplayActivated()Z
    .locals 3

    .line 201
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "night_display_activated"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isWellbeingGrayscaleActivated()Z
    .locals 2

    .line 207
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_grayscale_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 127
    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->showTurnOnTip()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 134
    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->showTurnOnTip()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showTurnOnTip()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isWellbeingGrayscaleActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_wellbeing_grayscale_open_tip:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_night_mode_open_tip:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    .line 157
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getBrightnessProgress()I
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getBrightnessProgressMax()I
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getColorProgress()I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getColorProgressMax()I
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic lambda$initView$0$OPNightModeLevelPreferenceCategory(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initView$1$OPNightModeLevelPreferenceCategory(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->lambda$initView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 58
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->initView(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 188
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setActivated(Z)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setActivated(Z)V

    .line 195
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    return-void
.end method
