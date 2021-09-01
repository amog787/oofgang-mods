.class Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;
.super Ljava/lang/Object;
.source "DataUsagePrefFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/DataUsagePrefFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    const-string p1, "DataUsagePrefFragment"

    const/4 v0, 0x0

    .line 216
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.oneplus.action.DATAUSAGE_DATAUSAGELIS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/Utils;->isIntentReceiverExists(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "replace a new action"

    .line 219
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MOBILE_DATA_USAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-static {v2}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->access$000(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-static {v2}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->access$100(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result v2

    .line 227
    invoke-static {v2}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v3

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    move v2, v0

    :goto_0
    const-string v4, ":settings:show_fragment_title"

    .line 232
    iget-object v5, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-static {v5}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->access$200(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "sub_id"

    .line 233
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "network_template"

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "is_hotspot"

    const/4 v3, 0x1

    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$1;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method
