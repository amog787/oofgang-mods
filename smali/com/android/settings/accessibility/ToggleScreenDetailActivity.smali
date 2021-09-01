.class public Lcom/android/settings/accessibility/ToggleScreenDetailActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "ToggleScreenDetailActivity.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field private mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

.field private mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

.field private mUserShortcutType:I

.field protected mUserShortcutTypesCache:I

.field private mView:Landroid/view/View;

.field private needTriple:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    .line 49
    iput v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->needTriple:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->updateUserShortcutType(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->callOnAlertDialogCheckboxClicked()V

    return-void
.end method

.method private callOnAlertDialogCheckboxClicked()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->updateUserShortcutType(Z)V

    .line 177
    iget v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 179
    iget v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    not-int v0, v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    return-void
.end method

.method private initializeDialogCheckBox()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 141
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    .line 146
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 147
    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->needTriple:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->updateAlertDialogCheckState()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    new-instance v1, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;-><init>(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$getUserShortcutTypes$2(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getUserShortcutTypesComponent$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setDialogTextAreaClickListener$0(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->updateUserShortcutType(Z)V

    return-void
.end method

.method static synthetic lambda$setUserShortcutType$3(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setUserShortcutTypeComponent$4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 249
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 1

    .line 94
    sget v0, Lcom/android/settings/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$e25ZOiFvqKwN0BtYuAqkIYyeNfc;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$e25ZOiFvqKwN0BtYuAqkIYyeNfc;-><init>(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUserShortcutType(Landroid/content/Context;I)V
    .locals 2

    .line 223
    invoke-static {p1}, Lcom/android/settings/accessibility/SharedPreferenceUtils;->getUserShortcutTypes(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 224
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$xI4V5dYk7N6-Jyhe1PGpEp4oVqw;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$xI4V5dYk7N6-Jyhe1PGpEp4oVqw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 229
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    .line 228
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 230
    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 232
    :goto_0
    new-instance v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-direct {v0, v1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;-><init>(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {p1, p0}, Lcom/android/settings/accessibility/SharedPreferenceUtils;->setUserShortcutType(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method private setUserShortcutTypeComponent(Landroid/content/Context;I)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/SharedPreferenceUtils;->getUserShortcutTypes(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 244
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$ADs7RHVCCObQI960fKzZBjnn8v0;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$ADs7RHVCCObQI960fKzZBjnn8v0;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 250
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 251
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 253
    :goto_0
    new-instance v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;-><init>(Ljava/lang/String;I)V

    .line 255
    invoke-virtual {v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {p1, v0}, Lcom/android/settings/accessibility/SharedPreferenceUtils;->setUserShortcutType(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method private updateAlertDialogCheckState()V
    .locals 2

    .line 184
    iget v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->updateCheckStatus(Landroid/widget/CheckBox;I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->updateCheckStatus(Landroid/widget/CheckBox;I)V

    .line 187
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->needTriple:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->updateCheckStatus(Landroid/widget/CheckBox;I)V

    :cond_0
    return-void
.end method

.method private updateCheckStatus(Landroid/widget/CheckBox;I)V
    .locals 0

    .line 194
    iget p0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateUserShortcutType(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    .line 199
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 200
    iget v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    :cond_2
    if-eqz p1, :cond_6

    .line 210
    iget p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    if-eqz v0, :cond_5

    .line 212
    iget-boolean p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->needTriple:Z

    if-eqz p1, :cond_4

    .line 213
    iget p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    invoke-direct {p0, p0, p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->setUserShortcutType(Landroid/content/Context;I)V

    goto :goto_0

    .line 215
    :cond_4
    iget p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    invoke-direct {p0, p0, p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->setUserShortcutTypeComponent(Landroid/content/Context;I)V

    .line 218
    :cond_5
    :goto_0
    iget p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    iput p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    :cond_6
    return-void
.end method


# virtual methods
.method protected getUserShortcutTypes(Landroid/content/Context;I)I
    .locals 0

    .line 121
    invoke-static {p1}, Lcom/android/settings/accessibility/SharedPreferenceUtils;->getUserShortcutTypes(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 124
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    .line 123
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 125
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 129
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    .line 130
    new-instance p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->getType()I

    move-result p0

    return p0
.end method

.method protected getUserShortcutTypesComponent(Landroid/content/Context;I)I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return p2

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/SharedPreferenceUtils;->getUserShortcutTypes(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$5PHPeB7JA4QRHF9Z1d_-nDnE-ac;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$5PHPeB7JA4QRHF9Z1d_-nDnE-ac;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 110
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 111
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    .line 115
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    .line 116
    new-instance p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->getType()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$setDialogTextAreaClickListener$0$ToggleScreenDetailActivity(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->lambda$setDialogTextAreaClickListener$0(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 57
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "checked"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 64
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 65
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mView:Landroid/view/View;

    .line 66
    sget v2, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-ne v0, p1, :cond_3

    .line 69
    invoke-static {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getUserShortcutTypeFromSettings(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    if-eqz v0, :cond_2

    .line 71
    invoke-direct {p0, p0, v0}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->setUserShortcutType(Landroid/content/Context;I)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0, p0, p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->getUserShortcutTypes(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    .line 76
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->needTriple:Z

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "component"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_4

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 83
    :cond_4
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutType:I

    .line 85
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->needTriple:Z

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {p0, p0, p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->getUserShortcutTypes(Landroid/content/Context;I)I

    move-result v4

    :cond_5
    iput v4, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 88
    invoke-virtual {p0, p0, p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->getUserShortcutTypesComponent(Landroid/content/Context;I)I

    move-result v4

    :cond_7
    iput v4, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->mUserShortcutTypesCache:I

    .line 90
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->initializeDialogCheckBox()V

    return-void
.end method
