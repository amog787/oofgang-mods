.class Lcom/oneplus/settings/better/OPReadingMode$1$1;
.super Ljava/lang/Object;
.source "OPReadingMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPReadingMode$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/better/OPReadingMode$1;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;

.field final synthetic val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPReadingMode$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPReadingMode$1;

    iput-object p2, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iput-object p3, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 92
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    .line 93
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPReadingMode$1;

    iget-object p1, p1, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPReadingMode;->access$000(Lcom/oneplus/settings/better/OPReadingMode;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 94
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPReadingMode$1;

    iget-object p1, p1, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPReadingMode;->access$500(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 95
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPReadingMode$1;

    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPReadingMode;->access$600(Lcom/oneplus/settings/better/OPReadingMode;)V

    return-void
.end method
