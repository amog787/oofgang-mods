.class Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;
.super Ljava/lang/Object;
.source "UninstallAppProgressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DeviceAdminSettingsActivity"

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
