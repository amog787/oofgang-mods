.class Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;
.super Lcom/android/settings/dashboard/DynamicDataObserver;
.source "DashboardFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$pref:Landroidx/preference/Preference;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Ljava/lang/String;Landroidx/preference/Preference;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$method:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/dashboard/DynamicDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    return-object p0
.end method

.method public onDataChanged()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7d044c31

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x6df048a3

    if-eq v1, v2, :cond_1

    const v2, 0x9b0171d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "isChecked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "getDynamicSummary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v1, "getDynamicTitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    invoke-static {v0, v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->access$200(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;)V

    goto :goto_2

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    invoke-static {v0, v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->access$100(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;)V

    goto :goto_2

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    invoke-static {v0, v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->access$000(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;)V

    :goto_2
    return-void
.end method
