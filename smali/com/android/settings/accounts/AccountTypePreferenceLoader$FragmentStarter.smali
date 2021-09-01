.class Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountTypePreferenceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentStarter"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mTitleRes:I

.field final synthetic this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Ljava/lang/String;I)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    .line 223
    iput p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mTitleRes:I

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mTitleRes:I

    .line 232
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 234
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 235
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 239
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
