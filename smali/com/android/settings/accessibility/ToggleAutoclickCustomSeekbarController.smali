.class public Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ToggleAutoclickCustomSeekbarController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final AUTOCLICK_DELAY_STEP:I = 0x64

.field private static final CONTROL_AUTOCLICK_DELAY_SECURE:Ljava/lang/String; = "accessibility_autoclick_delay"

.field private static final KEY_CUSTOM_DELAY_VALUE:Ljava/lang/String; = "custom_delay_value"

.field static final MAX_AUTOCLICK_DELAY_MS:I = 0x3e8

.field static final MIN_AUTOCLICK_DELAY_MS:I = 0xc8


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDelayLabel:Landroid/widget/TextView;

.field private mLonger:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShorter:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p3}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    new-instance p2, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->seekBarProgressToDelay(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->updateCustomDelayValue(I)V

    return-void
.end method

.method private delayTimeToString(I)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    const-string v2, "%.0f"

    goto :goto_1

    :cond_1
    const-string v2, "%.1f"

    .line 213
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$plurals;->accessibilty_autoclick_delay_unit_second:I

    new-array v4, v0, [Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    .line 215
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v0, v5

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 213
    invoke-virtual {p0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private delayToSeekBarProgress(I)I
    .locals 0

    add-int/lit16 p1, p1, -0xc8

    .line 171
    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method private getSharedPreferenceForDelayValue()I
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_autoclick_delay"

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 179
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "custom_delay_value"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->minusDelayByImageView()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroid/view/View;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->plusDelayByImageView()V

    return-void
.end method

.method private minusDelayByImageView()V
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->getSharedPreferenceForDelayValue()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x64

    .line 196
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->updateCustomDelayValue(I)V

    :cond_0
    return-void
.end method

.method private plusDelayByImageView()V
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->getSharedPreferenceForDelayValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x64

    .line 203
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->updateCustomDelayValue(I)V

    :cond_0
    return-void
.end method

.method private putSecureInt(Ljava/lang/String;I)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private seekBarProgressToDelay(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    add-int/lit16 p1, p1, 0xc8

    return p1
.end method

.method private updateCustomDelayValue(I)V
    .locals 2

    const-string v0, "accessibility_autoclick_delay"

    .line 187
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->putSecureInt(Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "custom_delay_value"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->delayToSeekBarProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mDelayLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->delayTimeToString(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->getSharedPreferenceForDelayValue()I

    move-result v0

    .line 133
    sget v1, Lcom/android/settings/R$id;->autoclick_delay:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    .line 134
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 138
    sget v1, Lcom/android/settings/R$id;->current_label:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mDelayLabel:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->delayTimeToString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    sget v0, Lcom/android/settings/R$id;->shorter:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mShorter:Landroid/widget/ImageView;

    .line 142
    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$ToggleAutoclickCustomSeekbarController$QowIl17V3-UqZABcFjHdnd8UsTw;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$ToggleAutoclickCustomSeekbarController$QowIl17V3-UqZABcFjHdnd8UsTw;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget v0, Lcom/android/settings/R$id;->longer:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mLonger:Landroid/widget/ImageView;

    .line 147
    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$ToggleAutoclickCustomSeekbarController$JcmNWoZFb1znN59JFRNBqCdelK4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/-$$Lambda$ToggleAutoclickCustomSeekbarController$JcmNWoZFb1znN59JFRNBqCdelK4;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayPreference$0$ToggleAutoclickCustomSeekbarController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ToggleAutoclickCustomSeekbarController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->lambda$displayPreference$1(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "delay_mode"

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->getSharedPreferenceForDelayValue()I

    move-result p1

    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->updateCustomDelayValue(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
