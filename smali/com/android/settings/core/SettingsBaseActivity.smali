.class public Lcom/android/settings/core/SettingsBaseActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;,
        Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;,
        Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;
    }
.end annotation


# static fields
.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedShowAppBar:Z

.field private final mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;-><init>(Lcom/android/settings/core/SettingsBaseActivity;Lcom/android/settings/core/SettingsBaseActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mNeedShowAppBar:Z

    return-void
.end method

.method static synthetic access$100()Landroid/util/ArraySet;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onCategoriesChanged()V

    return-void
.end method

.method private isLockTaskModePinned()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 204
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSettingsRunOnTop()Z
    .locals 2

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 210
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private onCategoriesChanged()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;->onCategoriesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lcom/oneplus/settings/OPOnBackPressedListener;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lcom/oneplus/settings/OPOnBackPressedListener;

    invoke-interface {v0}, Lcom/oneplus/settings/OPOnBackPressedListener;->doBack()V

    goto :goto_0

    .line 136
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 71
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLockTaskModePinned()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isSettingsRunOnTop()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SettingsBaseActivity"

    const-string v0, "Devices lock task mode pinned."

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x26

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 83
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p0, Lcom/android/settings/SubSettings;

    if-eqz v2, :cond_2

    .line 87
    sget v2, Lcom/android/settings/R$style;->LightTheme_SubSettings_SetupWizard:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 89
    :cond_2
    sget v2, Lcom/android/settings/R$layout;->settings_base_layout:I

    invoke-super {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 90
    sget v2, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 97
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    new-instance p1, Lcom/android/settings/core/SettingsBaseActivity$1;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SettingsBaseActivity$1;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-boolean p1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mNeedShowAppBar:Z

    if-nez p1, :cond_3

    const/16 p1, 0x8

    .line 107
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    sget p1, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    .line 110
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onPause()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->updateCategories()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 124
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public remCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 177
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 181
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 186
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 191
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 4

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 220
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v3, p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 224
    sget-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    :cond_3
    sget-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    const/4 p2, 0x2

    .line 228
    :goto_3
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v2
.end method

.method public updateCategories()V
    .locals 1

    .line 241
    new-instance v0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
