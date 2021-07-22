.class Lcom/oneplus/settings/better/OPAppLocker$1$1;
.super Ljava/lang/Object;
.source "OPAppLocker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPAppLocker$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;

.field final synthetic val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPAppLocker$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

    iput-object p2, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iput-object p3, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 69
    iget-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    .line 70
    iget-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

    iget-object p1, p1, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPAppLocker;->access$000(Lcom/oneplus/settings/better/OPAppLocker;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 71
    iget-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

    iget-object p1, p1, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPAppLocker;->access$400(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    .line 72
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3e9

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method
