.class Lcom/android/settings/datausage/DataUsageList$6;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/app/usage/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$500(Lcom/android/settings/datausage/DataUsageList;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const-string v1, "data_usage_disclaimer"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const-string v2, "carrier_usage_disclaimer"

    invoke-virtual {v1, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string/jumbo v2, "usage_amount"

    if-eqz v0, :cond_0

    .line 732
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v3, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$800(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    .line 742
    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_5

    .line 743
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$800(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 744
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->access$600(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 745
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->access$800(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 747
    :cond_4
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/app/usage/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 692
    new-instance p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    .line 693
    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    .line 694
    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 695
    invoke-virtual {p1, p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->setNetworkTemplate(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;

    .line 696
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->build()Lcom/android/settingslib/net/NetworkStatsSummaryLoader;

    move-result-object p0

    return-object p0
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/app/usage/NetworkStats;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/app/usage/NetworkStats;",
            ">;",
            "Landroid/app/usage/NetworkStats;",
            ")V"
        }
    .end annotation

    .line 701
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p1, p1, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p1, p1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p1

    .line 704
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$500(Lcom/android/settings/datausage/DataUsageList;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 707
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 709
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "netstats"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x0

    .line 710
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    .line 711
    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v3

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v5

    const/4 v7, -0x5

    .line 710
    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object p2

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0, p2, p1}, Lcom/android/settings/datausage/DataUsageList;->access$700(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V

    .line 716
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList$6;->updateEmptyVisible()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 689
    check-cast p2, Landroid/app/usage/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList$6;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/app/usage/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/app/usage/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .line 721
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$6;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/settings/datausage/DataUsageList;->access$700(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V

    .line 722
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList$6;->updateEmptyVisible()V

    return-void
.end method
