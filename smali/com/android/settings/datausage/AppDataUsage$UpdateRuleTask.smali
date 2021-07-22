.class Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateRuleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

.field private state:Z

.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 727
    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    .line 728
    iput p3, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->uid:I

    .line 729
    iput-boolean p4, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    .line 730
    iput p5, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->type:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    .line 749
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->uid:I

    invoke-static {p1, v0}, Lcom/android/settings/datausage/OPDataUsageUtils;->getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 750
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    iget v2, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->type:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 755
    iget-boolean v2, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    .line 756
    new-instance v4, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v3, v2}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 757
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    goto :goto_0

    .line 759
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    .line 760
    new-instance v4, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v2, v3}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 761
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    goto :goto_0

    .line 764
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 717
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 769
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 770
    iget p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->type:I

    if-nez p1, :cond_0

    .line 771
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 773
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->access$1200(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 776
    :goto_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 777
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 717
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 735
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 736
    new-instance v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    .line 737
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->settings_safetylegal_activity_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    new-instance v1, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask$1;-><init>(Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setTimeOut(JLcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;)V

    .line 744
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->showDelay(J)V

    return-void
.end method
